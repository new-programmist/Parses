module JSON_CORE
  def self.init
    code = <<EOF
require "json"
class Object
  def superclasses
    self.class.ancestors
  end
end
class Project
  def self.generate(*args)
    return "{\\\"Stage\\\":{\\\"isStage\\\":true}}"
  end
end
class Block
  def initialize(block, stats)
    @block = block
    @stats = stats
  end
  def to_s
    to_j.to_json
  end
  def to_j
    [@block, @stats.map{|k,v|
      if v.class == Array
        if v.all?{|b| b.superclasses.include?(Block)}
          {k => v.map(&:to_j)}
        else
          {k => v}
        end
      elsif v.superclasses.include?(Block)
        {k => v.to_j}
      else
        {k => v}
      end
    }.reduce({},&:merge)]
  end
  def to_a
    to_j
  end
  def +(other)
    Block.new("operator_add", {"NUM1":to_a, "NUM2":other.to_a})
  end
  def -(other)
    Block.new("operator_subtract", {"NUM1":to_a, "NUM2":other.to_a})
  end
  def *(other)
    Block.new("operator_multiply", {"NUM1":to_a, "NUM2":other.to_a})
  end
  def /(other)
    Block.new("operator_divide", {"NUM1":to_a, "NUM2":other.to_a})
  end
  def ==(other)
    BooleanBlock.new("operator_equals", {"OPERAND1":to_a, "OPERAND2":other.to_a})
  end
  def !=(other)
    !(BooleanBlock.new("operator_equals", {"OPERAND1":to_a, "OPERAND2":other.to_a}))
  end
  def >(other)
    BooleanBlock.new("operator_gt", {"OPERAND1":to_a, "OPERAND2":other.to_a})
  end
  def <(other)
    BooleanBlock.new("operator_lt", {"OPERAND1":to_a, "OPERAND2":other.to_a})
  end
  def >=(other)
    BooleanBlock.new("operator_lt", {"OPERAND1":to_a, "OPERAND2":other.to_a}).not
  end
  def <=(other)
    BooleanBlock.new("operator_gt", {"OPERAND1":to_a, "OPERAND2":other.to_a}).not
  end
  def %(other)
    Block.new("operator_mod", {"NUM1":to_a, "NUM2":other.to_a})
  end
  def [](other)
    Block.new("operator_letter_of", {"STRING":to_a, "LETTER":other.to_a})
  end
  def char_at(other)
    Block.new("operator_letter_of", {"STRING":to_a, "LETTER":other.to_a})
  end
end
class BooleanBlock < Block
  def &(other)
    BooleanBlock.new("operator_and", {"OPERAND1":self, "OPERAND2":other})
  end
  def |(other)
    BooleanBlock.new("operator_or", {"OPERAND1":self, "OPERAND2":other})
  end
  def ^(other)
    BooleanBlock.new("operator_equals", {"OPERAND1":self, "OPERAND2":other}).not
  end
  def not
    BooleanBlock.new("operator_not", {"OPERAND":self})
  end
end
class Argument < Block
  def initialize(str)
    @str = str
  end
  def to_j
    @str
  end
end
class BooleanArgument < BooleanBlock
  def initialize(str)
    if str.to_s == "true"
      @block = "operator_not"
    else
      @block = "operator_gt"
    end
    @stats = {}
  end
end
def shadow(block,shadow=true)
  Block("shadow",{"INPUT":block,"UNSHADOW":!shadow})
end
def unshadow(block)
  shadow(block,false)
end
def arg_report(str)
  Block.new("argument_reporter_string_number",{"NAME":str})
end
def bool_report(str)
  BooleanBlock.new("argument_reporter_boolean",{"NAME":str})
end
def bool(str)
  BooleanArgument.new(str)
end
class String
  def to_j
    to_s
  end
end
class Variable < Block
  def initialize(name,stats)
    @block = "get_variable"
    @stats = {"VARIABLE":name}.merge(stats)
  end
end
class List < Block
  def initialize(name,stats)
    @block = "get_list"
    @stats = {"LIST":name}.merge(stats)
  end
  def [](index)
    Block.new("data_itemoflist",{"LIST":@stats["LIST"],"INDEX":index})
  end
end
def Block(*args) = Block.new(*args)
def BooleanBlock(*args) = BooleanBlock.new(*args)
def Argument(*args) = Argument.new(*args)
def BooleanArgument(*args) = BooleanArgument.new(*args)
def Variable(*args) = Variable.new(*args)
def noshadowarg(*args)
  if args.size == 1
    Block.new("input",{"TYPE":10,"DATA1":args[0]})
  else
    if args[0].to_i == 13 || args[0] == "list"
      return List.new(args[1],{"SHADOW":false})
    end
    Block.new("input",{"TYPE":args[0],"DATA1":args[1]}.merge(args[2]? {"DATA2":args[2]} : {}))
  end
end
def arg(*args)
  if args.size == 1
    Block.new("input",{"TYPE":10,"DATA1":args[0], "SHADOW":true})
  else
    if args[0].to_i == 13 || args[0] == "list"
      return List.new(args[1],{"SHADOW":true})
    end
    Block.new("input",{"TYPE":args[0],"DATA1":args[1], "SHADOW":true}.merge(args[2]? {"DATA2":args[2]} : {}))
  end
end
#def flag() = Block.new("event_whenflagclicked",{})
#def setvar(var,val) = Block.new("data_setvariableto",{"VARIABLE":var,"VALUE":val})
#def var(var) = Block.new("get_variable",{"VARIABLE":var})
#def list(list) = Block.new("get_list",{"LIST":list})
#def repeat(times,block)
#  Block.new("control_repeat",{"TIMES":times,"SUBSTACK":block})
#end
#def abs(val)
#  Block.new("operator_abs",{"NUM1":val})
#end
#def define(*args) = procedure(*args)
#def procedure(name,procedure,warp=false)
#  Block.new("DEFINE",{"name":name,"proc":procedure,"warp":warp})
#end
#def call(name,*inputs)
#  if inputs.size == 1 && inputs[0].class == Hash
#    inputs = inputs[0]
#  end
#  Block.new("CALL",{"name":name,"inputs":inputs})
#end
#def forever(*blocks)
#  Block.new("control_forever",{"SUBSTACK":blocks})
#end
$hash = {
  "goto"=>->(*args){Block.new("motion_gotoxy",{"X":args[0],"Y":args[1]})},
  "gotoxy"=>->(*args){Block.new("motion_gotoxy",{"X":args[0],"Y":args[1]})},
  "deleteoflist"=>->(*args){Block.new("data_deleteoflist",{"LIST":args[0],"INDEX":args[1]})},
  "containsitem"=>->(*args){Block.new("data_listcontainsitem",{"LIST":args[0],"ITEM":args[1]})},
  "listcontainsitem"=>->(*args){Block.new("data_listcontainsitem",{"LIST":args[0],"ITEM":args[1]})},
  "insert"=>->(*args){Block.new("data_insertatlist",{"LIST":args[0],"INDEX":args[1],"ITEM":args[2]})},
  "replace"=>->(*args){Block.new("data_replaceitemoflist",{"LIST":args[0],"INDEX":args[1],"ITEM":args[2]})},
  "index"=>->(*args){Block.new("data_itemnumoflist",{"LIST":args[0],"INDEX":args[1]})},
  "length"=>->(*args){Block.new("data_lengthoflist",{"LIST":args[0]})},
  "addtolist"=>->(*args){Block.new("data_addtolist",{"LIST":args[0],"ITEM":args[1]})},
  "deleteall"=>->(*args){Block.new("data_deletealloflist",{"LIST":args[0]})},
  "clearlist"=>->(*args){Block.new("data_deletealloflist",{"LIST":args[0]})},
  "changevarby"=>->(*args){Block.new("data_changevariableby",{"VARIABLE":args[0],"VALUE":args[1]})},
  "changevar"=>->(*args){Block.new("data_changevariableby",{"VARIABLE":args[0],"VALUE":args[1]})},
  "forever"=>->(*args){Block.new("control_forever",{"SUBSTACK":args})},
  "call"=>->(name,*inputs){
    if inputs.size == 1 && inputs[0].class == Hash
      inputs = inputs[0]
    end
    Block.new("CALL",{"name":name,"inputs":inputs})
  },
  "procedure"=>->(name,procedure,warp=false){Block.new("DEFINE",{"name":name,"proc":procedure,"warp":warp})},
  "define"=>->(name,procedure,warp=false){Block.new("DEFINE",{"name":name,"proc":procedure,"warp":warp})},
  "abs"=>->(*args){Block.new("operator_abs",{"NUM1":args[0]})},
  "repeat"=>->(*args){Block.new("control_repeat",{"TIMES":args[0],"SUBSTACK":args[1]})},
  "flag"=>->(*args){Block.new("event_whenflagclicked",{})},
  "var"=>->(*args){Block.new("get_variable",{"VARIABLE":args[0]})},
  "setvar"=>->(*args){Block.new("data_setvariableto",{"VARIABLE":args[0],"VALUE":args[1]})},
  "list"=>->(*args){Block.new("get_list",{"LIST":args[0]})},
}
def flat_require(code)
  File.write("/tmp/flat_require.rb",code)
  require "/tmp/flat_require.rb"
end
$hash.each do |k,v|
  eval("def \#{k}(*args)\\n $hash[\\\"\#{k}\\\"].call(*args)\\n end")
end
ObjectSpace.each_object(Class) do |klass|
  $hash[klass.name.to_s] = ->(*args){klass.new(*args)} if klass.ancestors.include?(Block) && !$hash[klass.name.to_s] && klass.respond_to?(:new)
end

main = self
def main.method_missing(name,*args)
  if $hash[name.to_s]
    $hash[name.to_s].call(*args)
  else
    super
  end
end
EOF
  return code
  end
end
