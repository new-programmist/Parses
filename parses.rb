require_relative './defineblocks.rb'
require_relative './tophalf.rb'
require 'zip'
# ---------- 実行例 ----------
text = STDIN.read if !(STDIN.tty?)
if ARGV[0]
  if ARGV[0] == "debug"
    text ||= ARGV[1]
  else
    text ||= ARGV[0]
  end
end
text ||= JSON.generate({
  "Stage": {
    "isStage": true,
    "variables": {
      "myvar": "0"
    },
    "lists": {
      "aaa": ["aaa", "bbb", "ccc"]
    },
    "broadcasts": [
      "broadcast1"
    ],
    "program": [
      ["event_whenflagclicked", {}],
      ["motion_gotoxy",{"X":"100","Y":"100"}],
      ["control_forever",{"SUBSTACK":[
        ["control_repeat",{
          "TIMES": [["data_itemoflist",{"LIST":"aaa","INDEX":1}]],
          "SUBSTACK": [
            ["data_setvariableto",{"VARIABLE":"myvar","VALUE":[["operator_add",{"NUM1":"1","NUM2":[["get_variable",{"VARIABLE":"myvar"}]]}]]}],
            ["data_setvariableto",{"VARIABLE":"myvar","VALUE":[["operator_subtract",{"NUM1":"1","NUM2":[["get_variable",{"VARIABLE":"myvar"}]]}]]}],
            ["data_setvariableto",{"VARIABLE":"myvar","VALUE":[["operator_multiply",{"NUM1":"1","NUM2":[["get_variable",{"VARIABLE":"myvar"}]]}]]}],
            ["data_setvariableto",{"VARIABLE":"myvar","VALUE":[["operator_divide",{"NUM1":[["operator_[]",{"STRING":[["operator_length",{"STRING":[["data_lengthoflist",{"LIST":"aaa"}]]}]],"LETTER":"1"}]],"NUM2":[["get_variable",{"VARIABLE":"myvar"}]]}]]}]
          ]
        }],
        ["DEFINE",{"name":"name","proc":"DUPLICATOR %sNUM1 %sNUM2","warp":false}],
        ["data_setvariableto",{"VARIABLE":"myvar","VALUE":[["operator_add",{"NUM1":"1","NUM2":[["get_variable",{"VARIABLE":"myvar"}]]}]]}],
        ["DEFINE",{"name":"name2","proc":"DUPLICATOR2 %sNUM1 %sNUM2","warp":false}],
        ["data_setvariableto",{"VARIABLE":"myvar","VALUE":[["operator_add",{"NUM1":"1","NUM2":[["get_variable",{"VARIABLE":"myvar"}]]}]]}],
        ["event_whenflagclicked",{}],
      ]}],
      ["DEFINE",{"name":"test","proc":"a %sNUM1 %sNUM2","warp":false}],
      ["DEFINE",{"name":"test2","proc":["%sNUM1","^","%sNUM2"],"warp":true}],
      ["CALL",{"name":"test","inputs":{"NUM1":"1","NUM2":"2"}}],
      ["CALL",{"name":"test2","inputs":["1",[["argument_reporter_string_number",{"NAME":"NUM1"}]]]}],
      ["data_addtolist",{"LIST":"aaa","ITEM":[["argument_reporter_string_number",{"NAME":"NUM1"}]]}],
      ["event_whenbroadcastreceived",{"BROADCAST":"broadcast1"}],
      ["pen_clear",{}],
      ["CALL",{"name":"A block without defining","inputs":{"NUM1":"1","NUM2":"2"}}],
    ]
  },
  "Sprite1": {
    "isStage": false,
    "broadcasts": [
      "broadcast2"
    ],
    "program": [
      ["whenbroadcastreceived", {"BROADCAST":"broadcast2"}],
      ["event_broadcast", {"BROADCAST_INPUT":[["select_broadcast",{"BROADCAST":"broadcast1"}]]}]
    ]
  }
})

parsed_data = parse_text_data(text)
result = convert_to_scratch_project(parsed_data)
puts JSON.pretty_generate(result) if ARGV.include?("debug")
zipfile_name = "project.sb3"
File.write(zipfile_name, "")
Zip::File.open(zipfile_name, Zip::File::CREATE) do |zipfile|
  # ディレクトリ構造をZIPに追加

  # project.json を Project ディレクトリ内に追加
  result.each do |key, value|
    #if key == "project.json"
    #  zipfile.get_output_stream("#{key}") { |f| f.write(JSON.generate(value)) }
    #else
    zipfile.get_output_stream("#{key}") { |f| f.write(value) }
    #end
  end
end
#puts JSON.pretty_generate(define_block("DEFINE", '{"name": "test", "proc": "a %sNUM1 %sNUM2", "warp": true}', SecureRandom.uuid))
