class Project
  def self.generate
    examples = [{
      "Stage" => {
        "costumes" => [
          {"name": "none", "data": '<svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="0" height="0" viewBox="240,180,0,0"></svg>',"dataFormat": "svg"}        ] + 100.times.map{
            {"name": _1.chr, "data": '<svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="10" height="10" viewBox="0,0,10,10"><text x="50%" y="100%" dominant-baseline="middle" text-anchor="middle" font-size="10" transform="translate(240,160)">' + _1.chr + '</text></svg><!--rotationCenter:5:5-->',"dataFormat": "svg"}
        },
        "variables" => {
          "x": 0,
          "y": 0
        },
        "program" => [
          flag,
          forever(
            setvar("x",bool(true) & bool(false)),
            setvar("y",bool(true) | bool(false)),
            setvar("x",bool(true) ^ bool(false)),
            setvar("y",arg(1) + arg(2) / arg(3) * arg(4) % var("x")),
          )
        ]
      }
    },
    {
      "Stage" => {
        "variables" => {
          "return": 0,
          "myvar": 0
        },
        "program" => [
          procedure("test","test %sa %sb",true),
          setvar("return",[
            arg(1) + arg(2) / arg(3) * arg(4) % var("myvar")
          ])
        ]
      }
    },
    {
      "Stage" => {
        "program" => [ # ["CALL", "DEFINE", "argument_reporter_boolean", "argument_reporter_string_number", "color", "control_forever", "control_if", "control_if_else", "control_repeat", "control_repeat_until", "control_stop", "control_wait_until", "control_while", "coreExample_exampleOpcode", "coreExample_exampleWithInlineImage", "data_addtolist", "data_changevariableby", "data_deletealloflist", "data_deleteoflist", "data_insertatlist", "data_itemnumoflist", "data_itemoflist", "data_lengthoflist", "data_listcontainsitem", "data_replaceitemoflist", "data_setvariableto", "event_broadcast", "event_broadcastandwait", "event_whenbroadcastreceived", "event_whenflagclicked", "get_isturbowarp", "get_variable", "input", "motion_gotoxy", "operator_abs", "operator_acos", "operator_add", "operator_and", "operator_asin", "operator_atan", "operator_ceiling", "operator_contains", "operator_cos", "operator_divide", "operator_equals", "operator_floor", "operator_gt", "operator_join", "operator_length", "operator_letter_of", "operator_ln", "operator_log", "operator_lt", "operator_mathop", "operator_mod", "operator_multiply", "operator_not", "operator_or", "operator_random", "operator_round", "operator_sin", "operator_sqrt", "operator_subtract", "operator_tan", "pen_clear", "pen_menu_colorParam", "pen_pendown", "pen_penup", "pen_setPenColorParamTo", "pen_setPenColorToColor", "pen_setpensizeto", "procedures_call", "procedures_definition", "procedures_prototype", "select_broadcast", "select_key", "sensing_dayssince2000", "sensing_keypressed", "sensing_mousedown", "sensing_mousex", "sensing_mousey", "sensing_of", "sensing_of_object_menu", "sound_playuntildone", "sound_setvolumeto", "sound_sounds_menu", "translate_getTranslate", "translate_getViewerLanguage", "translate_menu_languages"]a
          define("test",["procedure","%sa","%bb"],true),
          setvar("return",arg_report("a") + bool_report("b")),
          flag,
          #arg( <= 3,"true") is error
          setvar("x",arg(4,"-1.0")),  # float
          setvar("x",arg(5,"1.0")),  # unsigned float
          setvar("x",arg(6,"1")),  # unsigned
          setvar("x",arg(7,"-1")),  # integer
          setvar("x",arg(8,"180")),  # angle
          setvar("x",arg(9,"#FF0000")),  # color
          setvar("x",arg(10,"string")), # string
          setvar("x",arg(11,"broadcast","")),  # broadcast       
          setvar("x",arg(12,"variable","")),  # variable
          setvar("x",arg(13,"list","")),  # list
          setvar("y",noshadowarg(4,"-1.0")),  # float, no shadow
          setvar("y",noshadowarg(5,"1.0")),  # unsigned float, no shadow
          setvar("y",noshadowarg(6,"1")),  # unsigned, no shadow
          setvar("y",noshadowarg(7,"-1")),  # integer, no shadow
          setvar("y",noshadowarg(8,"180")),  # angle, no shadow
          setvar("y",noshadowarg(9,"#FF0000")),  # color, no shadow
          setvar("y",noshadowarg(10,"string")), # string, no shadow
          setvar("y",noshadowarg(11,"broadcast","")),  # broadcast, no shadow       
          setvar("y",noshadowarg(12,"variable","")),  # variable, no shadow
          setvar("y",noshadowarg(13,"list","")),  # list, no shadow
          setvar("z",arg("float","-1.0")),  # float
          setvar("z",arg("unsigned float","1.0")),  # unsigned float
          setvar("z",arg("unsigned","1")),  # unsigned
          setvar("z",arg("integer","-1")),  # integer
          setvar("z",arg("angle","180")),  # angle
          setvar("z",arg("color","#FF0000")),  # color
          setvar("z",arg("string","string")), # string
          setvar("z",arg("broadcast","broadcast")),  # broadcast       
          setvar("z",arg("variable","variable")),  # variable
          setvar("z",arg("list","list")),  # list
          setvar("aa",shadow(arg(0)+arg(1))),
          
        ]# + (2..10).flat_map{
        #  [setvar("x",arg(_1,_1.to_s))]
        #}
      }
    }]
    examples[2]
  end
end
