require 'json'
require 'fileutils'
require 'digest'
null = nil
# require_relative "./defineblocks.rb"
$supportedblocks = $blockdatas.keys.sort
$allblocksinput = ($supportedblocks + $allblocks).uniq
#$allblocksinput.each do |b|
#  if !$supportedblocks.include?(b)
#    print "\033[32m"
#  elsif $allblocks.include?(b)
#    print "\033[33m"
#  else
#    print "\033[29m"
#  end
#  puts "#{b}\033[0m"
#end
$plugins = []
ARGV.each_with_index do |arg, i|
  $plugins << ARGV[i+1] if arg == "--plugin" || arg == "-p"
  $plugins.concat(ARGV[i+1].split(",").flat_map{_1.split(" ")}) if arg == "--plugins" || arg == "-P"
end
$plugins.push("supershadow") if $plugins.include?("ultrashadow")
$plugins.push("shadow") if $plugins.include?("supershadow")

def alias_block(aliasname, originalname)
  return if $blockdatas[aliasname] || !$blockdatas[originalname]
  $blockdatas[aliasname] = $blockdatas[originalname]
  $blockdatas[aliasname]["alias"] = originalname
end
alias_block("event_broadcast", "event_whenbroadcastreceived")
#say alias_block("","") when i type "a" => copilot,codium,vscode
alias_block("var","get_variable")
alias_block("variable","get_variable")
alias_block("list","get_list")
alias_block("whenflagclicked", "event_whenflagclicked")
alias_block("whenbroadcastreceived", "event_whenbroadcastreceived")
alias_block("operator_[]", "operator_letter_of")
alias_block("operator_length", "operator_lengthof")
alias_block("data_[]", "data_itemoflist")
alias_block("data_push", "data_addtolist")
alias_block("operator_greaterthen", "operator_gt")
alias_block("operator_>", "operator_gt")
alias_block(">", "operator_gt")
alias_block("operator_lessthan", "operator_lt")
alias_block("operator_<", "operator_lt")
alias_block("<", "operator_lt")
alias_block("operator_equal", "operator_equals")
alias_block("operator_=", "operator_equals")
alias_block("operator_==", "operator_equals")
alias_block("==", "operator_equals")
alias_block("getvariable", "get_variable")
alias_block("isturbowarp", "get_isturbowarp")
alias_block("setvariable", "data_setvariableto")
alias_block("setvariableto", "data_setvariableto")
alias_block("=", "data_setvariableto")
alias_block("operator_&", "operator_and")
alias_block("operator_&&", "operator_and")
alias_block("&", "operator_and")
alias_block("&&", "operator_and")
alias_block("operator_|", "operator_or")
alias_block("operator_||", "operator_or")
alias_block("|", "operator_or")
alias_block("||", "operator_or")
alias_block("+", "operator_add")
alias_block("operator_+", "operator_add")
alias_block("-", "operator_subtract")
alias_block("operator_-", "operator_subtract")
alias_block("*", "operator_multiply")
alias_block("operator_*", "operator_multiply")
alias_block("/", "operator_divide")
alias_block("operator_/", "operator_divide")
alias_block("%", "operator_mod")
alias_block("operator_%", "operator_mod")
alias_block("mathop", "operator_mathop")
alias_block("abs", "operator_abs")
alias_block("floor", "operator_floor")
alias_block("ceiling", "operator_ceiling")
alias_block("round", "operator_round")
def plugin(name) = $plugins.map{_1.downcase}.include?(name.downcase)
class SecureRandom
  @num = 0
  def self.uuid
    @num += 1
    (@num+1).to_s(36)
  end
end

def parse_text_data(text) = JSON.parse(text)
def define_block(name, data, s=SecureRandom.uuid)
  data = JSON.parse(data)
  case name
  when "DEFINE"
    procitems = (data["proc"].is_a?(Array) ? data["proc"] : data["proc"].split(" "))
    proccode = procitems.join(" ")
    arguments = procitems.select{|s| s[0] == "%"}
    argumentdefaults = arguments.map{|s| 
      case s[1]
      when "s"
        ""
      when "i"
        "0"
      when "b"
        "false"
      else
        ""
      end
    }
    argumentnames = arguments.map{|s| s[2..-1]}
    argumentnames = ("[" + argumentnames.map{_1.inspect}.join(",") + "]")
    argumentdefaults = ("[" + argumentdefaults.map{_1.inspect}.join(",") + "]")
    argumentids = ("[" + arguments.map{SecureRandom.uuid.inspect}.join(",") + "]")
    $mutations[data["name"]] = {"tagName":"mutation","children":[],"proccode":procitems.map{_1[0] == "%" ? _1[0..1] : _1}.join(" "),"argumentids":argumentnames,"argumentnames":argumentnames,"argumentdefaults":argumentdefaults,"warp":data["warp"] || false}
    out = {s=>{
      "opcode":"procedures_definition",
      "next":nil,
      "parent":nil,
      "inputs":{"custom_block":[1,nil]},
      "fields":{},
      "shadow":false,
      "topLevel":true,
      "mutation":$mutations[data["name"]],
      "x":0,
      "y":0
    }}
    procedureuuid = SecureRandom.uuid
    out[s][:inputs][:custom_block] = [1,procedureuuid]
    out[procedureuuid] = {
      "opcode":"procedures_prototype",
      "next":nil,
      "parent":s,
      "inputs":{},
      "fields":{},
      "shadow":true,
      "topLevel":false,
      "mutation":$mutations[data["name"]]
    }
    arguments.each do |id|
      uuid = SecureRandom.uuid
      opcode = id[1] == "b" ? "argument_reporter_boolean" : "argument_reporter_string_number"
      out[procedureuuid][:inputs][id[2..-1]] = [1,uuid]
      out[uuid] = {
        "opcode":opcode,
        "next":nil,
        "parent":procedureuuid,
        "inputs":{},
        "fields":{"VALUE":[id[2..-1],nil]},
        "shadow":true,
        "topLevel":false
      }
    end
    return [out,s]
  when "CALL"
    if !$mutations[data["name"]]
      inputs = []
      if data["inputs"].is_a?(Array)
        data["inputs"].each_with_index{|value, key|
          data2 = {}
          value = parse_value(value, data2, SecureRandom.uuid)
          if value[1].is_a?(Array)
            valuetype = "%s"
          else
            valuetype = {"ReportBlock" => "%s", "ReportBooleanBlock" => "%b","ReportNumberBlock" => "%s", "HatBlock" => "%s error HatBlock #{data2[value[1]]["opcode"]} ", "NormalBlock" => "%s error NormalBlock #{data2[value[1]]["opcode"]} "}[$blocks[data2[value[1]]["opcode"]]["blockType"]]
          end
          inputs << "#{valuetype}#{key}"
        }
      elsif data["inputs"].is_a?(Hash)
        datainputs = {}
        data["inputs"].each{|key, val|
          data2 = {}
          value = parse_value(val, data2, SecureRandom.uuid)
          if value[1].is_a?(Array)
            valuetype = "%s"
          else
            valuetype = {"ReportBlock" => "%s", "ReportBooleanBlock" => "%b","ReportNumberBlock" => "%s", "HatBlock" => "%s error HatBlock #{data2[value[1]]["opcode"]} ", "NormalBlock" => "%s error NormalBlock #{data2[value[1]]["opcode"]} "}[$blocks[data2[value[1]]["opcode"]]["blockType"]]
          end
          datainputs["#{valuetype}#{key}"[2..-1]] = val
          inputs << "#{valuetype}#{key}"
        }
        data["inputs"] = datainputs
      end
      define_block("DEFINE",JSON.generate({"name":data["name"],"proc":[data["name"]] + inputs,"warp":false}),SecureRandom.uuid)
    end
    inputs = {}
    inputtypes = $mutations[data["name"]][:proccode].split(" ").select{|s| s[0] == "%"}.map{|s| s[1]}
    argids = JSON.parse($mutations[data["name"]][:argumentids])
    argids.each_with_index{|i,j|inputs[i] = [1,[10,""]] if inputtypes[j] != "b"}
    out = {"opcode"=>"procedures_call","next"=>nil,"parent"=>nil,"inputs"=>inputs,"fields"=>{},"shadow"=>false,"topLevel"=>false,"mutation"=>$mutations[data["name"]]}
    data2 = {}
    datainputs = data["inputs"]
    datainputs = datainputs.each_with_index.map{|n,i| {argids[i] => n}}.reduce(:merge) if datainputs.is_a?(Array)
    datainputs.each{|key, value|
      #if value.is_a?(Array)
      #  d = parse_blockchunk(value.map{|k,v| "#{k}:#{JSON.generate(v)}"})
      #  if d[0] == "special"
      #    out["inputs"][key] = [2,d[1]]
      #    next
      #  end
      #  d[0][d[1]]["parent"] = s
      #  data2.merge!(d[0])
      #  out["inputs"][key] = [2,d[1]]
      #elsif value.is_a?(String) || value.is_a?(Numeric)
      #  out["inputs"][key] = [1, [10, value.to_s]]
      #elsif value.is_a?(Hash) && value.to_a.size > 0
      #  d = parse_blockchunk(value.map{|k,v| "#{k}:#{JSON.generate(v)}"})
      #  if d[0] == "special"
      #    out["inputs"][key] = [2,d[1]]
      #    next
      #  end
      #  d[0][d[1]]["parent"] = s
      #  data2.merge!(d[0])
      #  out["inputs"][key] = [2,d[1],[4,""]]
      #end
      out["inputs"][key] = parse_value(value,data2,s)
     
    }
    return [{s=>out}.merge(data2),s]
  when "CALL_SAMPLE"
    block = {
      "opcode":"call_sample",
      "data":JSON.generate(data),
      "parent":nil,
      "next":nil,
      "inputs":{},
      "fields":{},
      "shadow":false,
      "topLevel":false
    }
    return [{s=>block},s]
  end
  [{s=>{}},s]

end
def getvariable(variable)
  id = $target["variables"].to_a.select{|id,(name, value)| name == variable}[0]
  if !id
    id = ($targets[0]? $targets[0]["variables"].to_a.select{|id,(name, value)| name == variable}[0] : nil)
  else
    id = id[0]
  end
  if !id    
    if $targets[0]
      id = SecureRandom.uuid
      $targets[0]["variables"][id] = [variable, ""]
    else
      id = SecureRandom.uuid
      $target["variables"][id] = [variable, ""]
    end
  else
    id = id[0]
  end
  [variable, id]
  #[variable, ($target["variables"].to_a.select{|id,(name, value)| name == variable}[0] || ($targets[0]? $targets[0]["variables"].to_a.select{|id,(name, value)| name == variable}[0] : nil) || ["", nil])[0]]
end
def getlist(list)
  id = $target["lists"].to_a.select{|id,(name, value)| name == list}[0]
  if !id
    id = ($targets[0]? $targets[0]["lists"].to_a.select{|id,(name, value)| name == list}[0] : nil)
  else
    id = id[0]
  end
  if !id
    if $targets[0]
      id = SecureRandom.uuid
      $targets[0]["lists"][id] = [list, []]
    else
      id = SecureRandom.uuid
      $target["lists"][id] = [list, []]
    end
  else
    id = id[0]
  end

  [list, id]
  #[list, ($target["lists"].to_a.select{|id,(name, value)| name == list}[0] || ($targets[0]? $targets[0]["lists"].to_a.select{|id,(name, value)| name == list}[0] : nil) || ["", nil])[0]]
end
def getbroadcast(broadcast)
  id = $target["broadcasts"].to_a.select{|id,name| name == broadcast}[0]
  if !id
    id = ($targets[0]? $targets[0]["broadcasts"].to_a.select{|id,name| name == broadcast}[0] : nil)
  else
    id = id[0]
  end
  if !id
    if $targets[0]
      id = SecureRandom.uuid    
      $targets[0]["broadcasts"][id] = broadcast
    else
      id = SecureRandom.uuid
      $target["broadcasts"][id] = broadcast
    end
  else
    id = id[0]
  end
  [broadcast, id]
end
def get_broadcast(*args) =  getbroadcast(*args)
def get_list(*args) = getlist(*args)
def get_var(*args) = getvariable(*args)
def get_variable(*args) = getvariable(*args)
def getvar(*args) = getvariable(*args)
def parse_value(value, data2, s)
  if value.is_a?(Numeric) || value.is_a?(String)
    return [1,[10, value.to_s]]
  elsif value.is_a?(Array)
    if value[0].is_a?(String)
      value = [value]
    end
    e = parse_blockchunk(value.map{|k,v| "#{k}:#{JSON.generate(v)}"},data2)
    if e[0] == "special" || e[0] == "special_with_shadow"
      return [e[0] == "special_with_shadow" ? 1 : (plugin("supershadow")? 1 : 2),e[1]]
    else
      e[0][e[1]]["parent"] = s
      data2.merge!(e[0])
      if plugin("supershadow") || plugin("shadow")
        e[0][e[1]]["shadow"] = true
        return [1,e[1]]
      else
        return [2,e[1]]
      end
    end
  end
  [2]
end
def parse_block(block,data2={})
  s = SecureRandom.uuid
  name = block[0...block.chars.index(":")]
  name = name[1..-2] if name[0] == "'"
  $extensions.push($blockdatas[name]["extension"]) if $blockdatas[name]["extension"] && !$extensions.include?($blockdatas[name]["extension"])
  if name == "DEFINE"
    return define_block(name, block[block.chars.index("{")..block.chars.rindex("}")], s)
  end
  if name == "CALL"
    return define_block("CALL_SAMPLE", block[block.chars.index("{")..block.chars.rindex("}")], s)
  end
  blockdata = $blockdatas[name]
  name = blockdata["alias"] || name
  data = {}
  data = JSON.parse(JSON.generate(blockdata["normallyData"])) if blockdata["normallyData"]
  inputs = block[block.chars.index("{")..block.chars.rindex("}")]
  d = JSON.parse(inputs)
  if inputs.strip != ""
    if ["data_setvariableto", "data_itemoflist", "get_variable", "get_list", "argument_reporter_string_number", "argument_reporter_boolean", "data_deletealloflist", "event_whenbroadcastreceived", "data_addtolist", "select_broadcast", "data_lengthoflist", "data_changevariableby", "data_deleteoflist", "data_replaceitemoflist", "data_insertatlist", "data_itemnumoflist", "operator_mathop", "control_stop", "color", "pen_menu_colorParam", "input", "shadow"].include?(name)
      case name
      when "data_setvariableto"
        data["fields"]["VARIABLE"] = getvariable(d["VARIABLE"])
        data["inputs"]["VALUE"] = parse_value(d["VALUE"], data2, s)
      when "data_itemoflist"
        data["fields"]["LIST"] = getlist(d["LIST"])
        data["inputs"]["INDEX"] = parse_value(d["INDEX"], data2, s)
      when "get_variable"
        data = [(d["SHADOW"].to_s == "true") ? "special_with_shadow" : "special",[12]+getvariable(d["VARIABLE"])]
      when "get_list"
        data = [(d["SHADOW"].to_s == "true") ? "special_with_shadow" : "special",[13]+getlist(d["LIST"])]
      when "select_broadcast"
        data = [(d["SHADOW"].to_s == "true") ? "special_with_shadow" : "special",[11]+getbroadcast(d["BROADCAST"])]
      when "argument_reporter_string_number"
        data["fields"]["VALUE"] = [d["NAME"], nil]
      when "argument_reporter_boolean"
        data["fields"]["VALUE"] = [d["NAME"], nil]
      when "data_deletealloflist"
        data["fields"]["LIST"] = getlist(d["LIST"])
      when "event_whenbroadcastreceived"
        data["fields"]["BROADCAST_OPTION"] = getbroadcast(d["BROADCAST"] || d["BROADCAST_OPTION"])
      when "data_addtolist"
        data["fields"]["LIST"] = getlist(d["LIST"])
        data["inputs"]["ITEM"] = parse_value(d["ITEM"], data2, s)
      when "data_lengthoflist"
        data["fields"]["LIST"] = getlist(d["LIST"])
      when "data_changevariableby"
        data["fields"]["VARIABLE"] = getvariable(d["VARIABLE"])
        data["inputs"]["VALUE"] = parse_value(d["VALUE"], data2, s)
      when "data_deleteoflist"
        data["fields"]["LIST"] = getlist(d["LIST"])
        data["inputs"]["INDEX"] = parse_value(d["INDEX"], data2, s)
      when "data_replaceitemoflist"
        data["fields"]["LIST"] = getlist(d["LIST"])
        data["inputs"]["INDEX"] = parse_value(d["INDEX"], data2, s)
        data["inputs"]["ITEM"] = parse_value(d["ITEM"], data2, s)
      when "data_insertatlist"
        data["fields"]["LIST"] = getlist(d["LIST"])
        data["inputs"]["INDEX"] = parse_value(d["INDEX"], data2, s)
        data["inputs"]["ITEM"] = parse_value(d["ITEM"], data2, s)
      when "data_itemnumoflist"
        data["fields"]["LIST"] = getlist(d["LIST"])
        data["inputs"]["ITEM"] = parse_value(d["ITEM"], data2, s)
      when "operator_mathop"
        data["fields"]["OPERATOR"] = d["OPERATOR"]
        data["inputs"]["NUM"] = parse_value(d["NUM"], data2, s)
      when "control_stop"
        data["fields"]["STOP_OPTION"] = d["STOP_OPTION"]
        data["mutation"]["hasnext"] = d["STOP_OPTION"] == "all"
      when "color"
        data[1] = d["COLOR"]
        data = ["special",data]
      when "pen_menu_colorParam"
        data["fields"]["COLOR_PARAM"] = [d["COLOR_PARAM"], nil]
      when "input"
        if d["TYPE"].to_i < 4 || d["TYPE"].to_i > 13
          d["TYPE"] = {"float"=>4,"unsigned float"=>5,"unsigned"=>6,"integer"=>7,"angle"=>8,"color"=>9,"string"=>10,"broadcast"=>11,"variable"=>12,"list"=>13}[d["TYPE"]]
          d["TYPE"] = 10 if d["TYPE"] == nil
        end
        d["DATA2"] = nil if d["DATA2"] == ""
        if d["TYPE"].to_i == 11
          d["DATA2"] ||= getbroadcast(d["DATA1"])[1]
        end
        if d["TYPE"].to_i == 12
          d["DATA2"] ||= getvariable(d["DATA1"])[1]
        end
        if d["TYPE"].to_i == 13
          d["DATA2"] ||= getlist(d["DATA1"])[1]
        end
        data[0] = d["TYPE"] || data[0]
        data[1] = d["DATA1"]
        data[2] = d["DATA2"] if d["DATA2"]
        if d["SHADOW"]
          data = ["special_with_shadow",data]
        else
          data = ["special",data]
        end
      when "shadow"
        data = parse_value(d["INPUT"], data2, s)[1]
        if data.class == String
          data2[data]["shadow"] = !d["DESHADOW"]
        end

        if !(d["DESHADOW"])
          data = ["special_with_shadow",data]
        else
          data = ["special",data]
        end
      end
    else
      d.each do |key, value|
        data["inputs"][key] = parse_value(value, data2, s)
      end
    end
  end
  if data.is_a?(Hash)
    [{s => data}.merge(data2), s]
  else
    data
  end
end

def parse_blockchunk(blockchunk, data2 = {})
  if blockchunk.size == 1 && blockchunk[0].is_a?(String)
    if [Array,String].include? $blockdatas[blockchunk[0][0...blockchunk[0].chars.index(":")]]["normallyData"].class
      return parse_block(blockchunk[0], data2)
    end
  end
  prev_block = nil
  blocks = []
  firstblock = nil
  blockchunk.each{|block|
    blockdata = parse_block(block, data2)
    #p blockdata
    firstblock ||= blockdata[1].dup
    if prev_block
      blockdata[0][blockdata[1]]["parent"] = prev_block[1].dup
      prev_block[0][prev_block[1]]["next"] = blockdata[1].dup
    end
    prev_block = blockdata
    blocks[blocks.size] = blockdata
  }
  data = blocks.reduce({}){_1.merge(_2[0])}
  [data.dup, firstblock]
end
    

def parse_program(text, returns=false)
  blockchunks = []
  blocks = []
  s = ""
  depth = 0
  text.each_char do |c|
    s.concat(c)
    if c == "{"
      depth += 1
    elsif c == "}"
      depth -= 1
      if depth == 0
        name = s[0...s.chars.index(":")].chars.reject{|c| c == "'"}.join
        if $blockdatas[name]["blockType"].downcase == "hatblock"
          blockchunks << blocks if blocks.length > 0
          blocks = []
        end
        blocks << s
        s = ""
      end
    elsif c.strip.empty? && depth == 0
      s = s[0..-2]
    end
  end
  blockchunks << blocks
  data = {}
  b = nil
  blockchunks.each{|blockchunk|
    c = parse_blockchunk(blockchunk)
    b = c[1]
    c[0].each{|k, v|
      data[k] = JSON.parse(JSON.generate(v))
    }
  }
  datadup = JSON.parse(JSON.generate(data))
  data.map{|k,v|
    if v["opcode"] == "call_sample"
      datadup.merge! define_block("CALL", v["data"], k)[0]
      datadup[k]["next"] = v["next"]
      datadup[k]["parent"] = v["parent"]
    end
  }
  data = datadup
  if returns
    [data, b]
  else
    data
  end
end
class Hash
  def map!(&block)
    self.each do |k, v|
      self[k] = block.call(k, v)
    end
  end
end
def convert_to_scratch_project(parsed_data)
  $targets = []
  files = {}
  $extensions = ["coreExample"]
  parsed_data.each do |name, props|
    $mutations = {}
    $target = {
      "isStage" => props["isStage"] || $targets.size == 0,
      "name" => name,
      "variables" => {},
      "lists" => {},
      "broadcasts" => {},
      "blocks" => {},
      "comments" => {},
      "currentCostume" => 0,
      "costumes" => [],
      "sounds" => [],
      "volume" => 100,
      "layerOrder" => $targets.size
    }
    if !props["isStage"]
      $target.merge!({
        "x": 0,
        "y": 0,
        "size": 100,
        "direction": 90,
        "draggable": false,
        "rotationStyle": "all around",
        "visible": true
      })
    else
      $target.merge!({
        "tempo": 60,
        "videoTransparency": 50,
        "videoState": "on",
        "textToSpeechLanguage": nil
      })
    end
    if props["costumes"]
      props["costumes"].each do |costume|
        data = costume["data"]
        dataformat = costume["dataFormat"]
        id = Digest::MD5.hexdigest(data)
        $target["costumes"].push({
          "name" => costume["name"],
          "dataFormat" => dataformat,
          "assetId" => id,
          "md5text" => id + "." + dataformat,
          "rotationCenterX" => 240,
          "rotationCenterY" => 180
        })
        files.merge!({
          id + "." + dataformat => data
        })
      end
    else
      data = '<svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="0" height="0" viewBox="0,0,0,0"></svg>'
      id = Digest::MD5.hexdigest(data) 
      dataformat = "svg"
      $target["costumes"].push({
        "name" => "default",
        "dataFormat" => "svg",
        "assetId" => id,
        "md5text" => id + "." + dataformat,
        "rotationCenterX" => 240,
        "rotationCenterY" => 180
      })
      files.merge!({
        id + "." + dataformat => data
      })
    end
    # 変数
    if props["variables"]
      props["variables"].each do |var_name, value|
        var_id = SecureRandom.uuid
        $target["variables"][var_id] = [var_name, value]
      end
    end

    # リスト
    if props["lists"]
      props["lists"].each do |list_name, items|
        list_id = SecureRandom.uuid
        $target["lists"][list_id] = [list_name, items]
      end
    end

    if props["broadcasts"]
      props["broadcasts"].each do |broadcast_name|
        broadcast_id = SecureRandom.uuid
        $target["broadcasts"][broadcast_id] = broadcast_name
      end
    end

    # プログラム
    if props["program"] && !props["program"].to_s.strip.empty?
      # ここでは、単純に eventとdataのブロックだけを追加する例
      a = props["program"]
      a = a.join("\n") if a.is_a?(Array) && a.all?{|a| a.is_a?(String)}
      a = a.map{|a,b| "#{a}:#{JSON.generate(b)}"}.join("\n") if a.is_a?(Array) && a.all?{|a| a.is_a?(Array)}
      ($targets << $target; next) if a.is_a?(Hash)
      $target["blocks"] = JSON.parse(JSON.generate(parse_program(a)))
      if plugin("unshadow") && !plugin("supershadow")
        $target["blocks"].map!{|k,b|
          b["shadow"] = false
          b["inputs"] = b["inputs"].map!{|k,v|[2,v[1]]}
          b
        }
      end
      if plugin("supershadow")
        $target["blocks"].map!{|k,b|
          b["shadow"] = !b["topLevel"] || plugin("ultrashadow")
          b["inputs"] = b["inputs"].map!{|k,v|[1,v[1]]}
          b
        }
      end
    end 
    $targets << $target
  end
  {
    "project.json" => JSON.generate({
      "targets" => $targets,
      "monitors" => [],
      "extensions" => $extensions,
      "meta" => {
        "semver" => "3.0.0",
        "vm" => "0.2.0",
        "agent" => "",
        "platform" => {
          "name" => "TurboWarp",
          "url" => "https://turbowarp.org/"
        },
        "parser" => {
          "name" => "tiiima parses.rb",
          "url" => "file://~/parses.rb"
        }
      }
    })
  }.merge(files)
end

