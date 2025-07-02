require 'json'
require 'fileutils'
require 'digest'
null = nil
$blockdatas = JSON.parse('{
  "event_whenflagclicked": {
    "blockType": "hatblock",
    "normallyData": {
      "opcode": "event_whenflagclicked",
      "inputs": {},
      "fields": {},
      "next": null,
      "parent": null,
      "shadow": false,
      "topLevel": true,
      "x": 0,
      "y": 0
    }
  },
  "control_repeat": {
    "blockType": "C-ShapeBlock",
    "normallyData": {
      "opcode": "control_repeat",
      "inputs": {
        "TIMES": [1,[10,"1"]],
        "SUBSTACK": [1, null]
      },
      "next": null,
      "parent": null,
      "fields": {},
      "shadow": false,
      "topLevel": false
    }
  },
  "data_setvariableto": {
    "blockType": "NormalBlock",
    "normallyData": {
      "opcode": "data_setvariableto",
      "inputs": {
        "VALUE": [1,[10,"0"]]
      },
      "fields": {
        "VARIABLE": [1, null]
      },
      "next": null,
      "parent": null,
      "shadow": false,
      "topLevel": false
    }
  },
  "data_itemoflist": {
    "blockType": "ReportBlock",
    "normallyData": {
      "opcode": "data_itemoflist",
      "inputs": {
        "INDEX": [1,[10,"1"]]
      },
      "fields": {
        "LIST": [1, null]
      },
      "next": null,
      "parent": null,
      "shadow": false
    }
  },
  "operator_add": {
    "blockType": "ReportBlock",
    "normallyData": {
      "opcode": "operator_add",
      "inputs": {
        "NUM1": [1,[10,""]],
        "NUM2": [1,[10,""]]
      },
      "next": null,
      "parent": null,
      "fields": {},
      "shadow": false
    }
  },
  "operator_subtract": {
    "blockType": "ReportBlock",
    "normallyData": {
      "opcode": "operator_subtract",
      "inputs": {
        "NUM1": [1,[10,""]],
        "NUM2": [1,[10,""]]
      },
      "next": null,
      "parent": null,
      "fields": {},
      "shadow": false
    }
  },
  "operator_multiply": {
    "blockType": "ReportBlock",
    "normallyData": {
      "opcode": "operator_multiply",
      "inputs": {
        "NUM1": [1,[10,""]],
        "NUM2": [1,[10,""]]
      },
      "next": null,
      "parent": null,
      "fields": {},
      "shadow": false
    }
  },
  "operator_divide": {
    "blockType": "ReportBlock",
    "normallyData": {
      "opcode": "operator_divide",
      "inputs": {
        "NUM1": [1,[10,""]],
        "NUM2": [1,[10,""]]
      },
      "next": null,
      "parent": null,
      "fields": {},
      "shadow": false
    }
  },
  "get_variable": {
    "blockType": "ReportBlock",
    "normallyData": [
      12,
      "undefined",
      ""
    ]
  },
  "control_forever": {
    "blockType": "C-ShapeBlock",
    "normallyData": {
      "opcode": "control_forever",
      "inputs": {
        "SUBSTACK": [1, null]
      },
      "next": null,
      "parent": null,
      "fields": {},
      "shadow": false
    }
  },
  "motion_gotoxy": {
    "blockType": "NormalBlock",
    "normallyData": {
      "opcode": "motion_gotoxy",
      "inputs": {
        "X": [1,[10,"0"]],
        "Y": [1,[10,"0"]]
      },
      "next": null,
      "parent": null,
      "fields": {},
      "shadow": false
    }
  },
  "DEFINE": {
    "blockType": "HatBlock"
  },
  "CALL": {
    "blockType": "NormalBlock"
  },
  "argument_reporter_string_number": {
    "blockType": "ReportBlock",
    "normallyData": {
      "opcode": "argument_reporter_string_number",
      "next": null,
      "parent": null,
      "inputs": {},
      "fields": {
        "VALUE": ["", null]
      },
      "shadow": false,
      "topLevel": false
    }
  },
  "argument_reporter_boolean": {
    "blockType": "ReportBooleanBlock",
    "normallyData": {
      "opcode": "argument_reporter_boolean",
      "next": null,
      "parent": null,
      "inputs": {},
      "fields": {
        "VALUE": ["", null]
      },
      "shadow": false,
      "topLevel": false
    }
  },
  "data_deletealloflist": {
    "blockType": "NormalBlock",
    "normallyData": {
      "opcode": "data_deletealloflist",
      "next": null,
      "parent": null,
      "inputs": {},
      "fields": {
        "LIST": [1, null]
      },
      "shadow": false,
      "topLevel": false
    }
  },
  "event_whenbroadcastreceived": {
    "blockType": "HatBlock",
    "normallyData": {
      "opcode": "event_whenbroadcastreceived",
      "next": null,
      "parent": null,
      "inputs": {},
      "fields": {
        "BROADCAST_OPTION": [1, null]
      },
      "shadow": false,
      "topLevel": true
    }
  },
  "data_addtolist": {
    "blockType": "NormalBlock",
    "normallyData": {
      "opcode": "data_addtolist",
      "next": null,
      "parent": null,
      "inputs": {
        "ITEM": [1,[10,""]]
      },
      "fields": {
        "LIST": [1, null]
      }
    }
  },
  "pen_clear": {
    "blockType": "NormalBlock",
    "extension": "pen",
    "normallyData": {
      "opcode": "pen_clear",
      "next": null,
      "parent": null,
      "inputs": {},
      "fields": {},
      "shadow": false
    }
  },
  "event_broadcast": {
    "blockType": "NormalBlock",
    "normallyData": {
      "opcode": "event_broadcast",
      "next": null,
      "parent": null,
      "inputs": {
        "BROADCAST_INPUT": [1, [11, "", ""]]
      },
      "fields": {},
      "shadow": false
    }
  },
  "event_broadcastandwait": {
    "blockType": "NormalBlock",
    "normallyData": {
      "opcode": "event_broadcastandwait",
      "next": null,
      "parent": null,
      "inputs": {
        "BROADCAST_INPUT": [1, [11, "", ""]]
      },
      "fields": {},
      "shadow": false
    }
  },
  "select_broadcast": {
    "blockType": "ReportBlock",
    "normallyData": [
      11,
      "undefined",
      ""
    ]
  },
  "operator_letter_of": {
    "blockType": "ReportBlock",
    "normallyData": {
      "opcode": "operator_letter_of",
      "next": null,
      "parent": null,
      "inputs": {
        "STRING": [1,[10, ""]],
        "LETTER": [1,[10, "0"]]
      },
      "fields": {},
      "shadow": false
    }
  },
  "data_lengthoflist": {
    "blockType": "ReportBlock",
    "normallyData": {
      "opcode": "data_lengthoflist",
      "next": null,
      "parent": null,
      "inputs": {},
      "fields": {
        "LIST": [1, null]
      },
      "shadow": false
    }
  },
  "get_isturbowarp": {
    "blockType": "ReportBooleanBlock",
    "normallyData": {
      "opcode": "argument_reporter_boolean",
      "next": null,
      "parent": null,
      "inputs": {},
      "fields": {
        "VALUE": ["is TruboWarp?", null]
      },
      "shadow": false
    }
  },
  "operator_length": {
    "blockType": "ReportBlock",
    "normallyData": {
      "opcode": "operator_length",
      "next": null,
      "parent": null,
      "inputs": {
        "STRING": [1,[10, ""]]
      },
      "fields": {},
      "shadow": false
    }
  },
  "operator_gt": {
    "blockType": "ReportBooleanBlock",
    "normallyData": {
      "opcode": "operator_gt",
      "next": null,
      "parent": null,
      "inputs": {
        "OPERAND1": [1,[10, ""]],
        "OPERAND2": [1,[10, ""]]
      },
      "fields": {},
      "shadow": false
    }
  },
  "operator_lt": {
    "blockType": "ReportBooleanBlock",
    "normallyData": {
      "opcode": "operator_lt",
      "next": null,
      "parent": null,
      "inputs": {
        "OPERAND1": [1,[10, ""]],
        "OPERAND2": [1,[10, ""]]
      },
      "fields": {},
      "shadow": false
    }
  },
  "operator_equals": {
    "blockType": "ReportBooleanBlock",
    "normallyData": {
      "opcode": "operator_equals",
      "next": null,
      "parent": null,
      "inputs": {
        "OPERAND1": [1,[10, ""]],
        "OPERAND2": [1,[10, ""]]
      },
      "fields": {},
      "shadow": false
    }
  },
  "data_changevariableby": {
    "blockType": "NormalBlock",
    "normallyData": {
      "opcode": "data_changevariableby",
      "next": null,
      "parent": null,
      "inputs": {
        "VALUE": [1,[10, ""]]
      },
      "fields": {
        "VARIABLE": [1, null]
      },
      "shadow": false
    }
  },
  "operator_and": {
    "blockType": "ReportBooleanBlock",
    "normallyData": {
      "opcode": "operator_and",
      "next": null,
      "parent": null,
      "inputs": {
        "OPERAND1": [1,null],
        "OPERAND2": [1,null]
      },
      "fields": {},
      "shadow": false
    }
  },
  "operator_or": {
    "blockType": "ReportBooleanBlock",
    "normallyData": {
      "opcode": "operator_or",
      "next": null,
      "parent": null,
      "inputs": {
        "OPERAND1": [1,null],
        "OPERAND2": [1,null]
      },
      "fields": {},
      "shadow": false
    }
  },
  "operator_not": {
    "blockType": "ReportBooleanBlock",
    "normallyData": {
      "opcode": "operator_not",
      "next": null,
      "parent": null,
      "inputs": {
        "OPERAND": [1,null]
      },
      "fields": {},
      "shadow": false
    }
  },
  "operator_random": {
    "blockType": "ReportBlock",
    "normallyData": {
      "opcode": "operator_random",
      "next": null,
      "parent": null,
      "inputs": {
        "FROM": [1,[10, ""]],
        "TO": [1,[10, ""]]
      },
      "fields": {},
      "shadow": false
    }
  },
  "control_if": {
    "blockType": "NormalBlock",
    "normallyData": {
      "opcode": "control_if",
      "next": null,
      "parent": null,
      "inputs": {
        "CONDITION": [1,[10, ""]],
        "SUBSTACK": [1, null]
      },
      "fields": {},
      "shadow": false
    }
  },
  "control_if_else": {
    "blockType": "NormalBlock",
    "normallyData": {
      "opcode": "control_if_else",
      "next": null,
      "parent": null,
      "inputs": {
        "CONDITION": [1,[10, ""]],
        "SUBSTACK1": [1, null],
        "SUBSTACK2": [1, null]
      },
      "fields": {},
      "shadow": false
    }
  },
  "data_deleteoflist": {
    "blockType": "NormalBlock",
    "normallyData": {
      "opcode": "data_deleteoflist",
      "next": null,
      "parent": null,
      "inputs": {
        "INDEX": [1,[10, ""]]
      },
      "fields": {
        "LIST": [1, null]
      },
      "shadow": false
    }
  },
  "data_replaceitemoflist": {
    "blockType": "NormalBlock",
    "normallyData": {
      "opcode": "data_replaceitemoflist",
      "next": null,
      "parent": null,
      "inputs": {
        "INDEX": [1,[10, ""]],
        "ITEM": [1,[10, ""]]
      },
      "fields": {
        "LIST": [1, null]
      },
      "shadow": false
    }
  },
  "data_insertatlist": {
    "blockType": "NormalBlock",
    "normallyData": {
      "opcode": "data_insertatlist",
      "next": null,
      "parent": null,
      "inputs": {
        "INDEX": [1,[10, ""]],
        "ITEM": [1,[10, ""]]
      },
      "fields": {
        "LIST": [1, null]
      },
      "shadow": false
    }
  },
  "pen_pendown": {
    "blockType": "NormalBlock",
    "extension": "pen",
    "normallyData": {
      "opcode": "pen_penDown",
      "next": null,
      "parent": null,
      "inputs": {},
      "fields": {},
      "shadow": false
    }
  },
  "pen_penup": {
    "blockType": "NormalBlock",
    "extension": "pen",
    "normallyData": {
      "opcode": "pen_penUp",
      "next": null,
      "parent": null,
      "inputs": {},
      "fields": {},
      "shadow": false
    }
  },
  "pen_setpensizeto": {
    "blockType": "NormalBlock",
    "extension": "pen",
    "normallyData": {
      "opcode": "pen_setPenSizeTo",
      "next": null,
      "parent": null,
      "inputs": {
        "SIZE": [1,[10, ""]]
      },
      "fields": {},
      "shadow": false
    }
  },
  "select_key": {
    "blockType": "ReportBlock",
    "normallyData": {
      "opcode": "sensing_keyoptions",
      "next": null,
      "parent": null,
      "inputs": {},
      "fields": {
        "KEY_OPTION": ["space", null]
      },
      "shadow": false
    }
  },
  "sensing_keypressed": {
    "blockType": "ReportBooleanBlock",
    "normallyData": {
      "opcode": "sensing_keypressed",
      "next": null,
      "parent": null,
      "inputs": {
        "KEY_OPTION": [1,[10, "space"]]
      },
      "fields": {},
      "shadow": false
    }
  },
  "control_repeat_until": {
    "blockType": "NormalBlock",
    "normallyData": {
      "opcode": "control_repeat_until",
      "next": null,
      "parent": null,
      "inputs": {
        "CONDITION": [1,[10, ""]],
        "SUBSTACK": [1, null]
      },
      "fields": {},
      "shadow": false
    }
  },
  "control_wait_until": {
    "blockType": "NormalBlock",
    "normallyData": {
      "opcode": "control_wait_until",
      "next": null,
      "parent": null,
      "inputs": {
        "CONDITION": [1,[10, ""]]
      },
      "fields": {},
      "shadow": false
    }
  },
  "operator_contains": {
    "blockType": "ReportBooleanBlock",
    "normallyData": {
      "opcode": "operator_contains",
      "next": null,
      "parent": null,
      "inputs": {
        "STRING1": [1,[10, ""]],
        "STRING2": [1,[10, ""]]
      },
      "fields": {},
      "shadow": false
    }
  },
  "data_itemnumoflist": {
    "blockType": "ReportNumberBlock",
    "normallyData": {
      "opcode": "data_itemnumoflist",
      "next": null,
      "parent": null,
      "inputs": {
        "ITEM": [1,[10, ""]]
      },
      "fields": {
        "LIST": [1, null]
      },
      "shadow": false
    }
  },
  "operator_join": {
    "blockType": "ReportBlock",
    "normallyData": {
      "opcode": "operator_join",
      "next": null,
      "parent": null,
      "inputs": {
        "STRING1": [1,[10, ""]],
        "STRING2": [1,[10, ""]]
      },
      "fields": {},
      "shadow": false
    }
  },
  "operator_mod": {
    "blockType": "ReportNumberBlock",
    "normallyData": {
      "opcode": "operator_mod",
      "next": null,
      "parent": null,
      "inputs": {
        "NUM1": [1,[10, ""]],
        "NUM2": [1,[10, ""]]
      },
      "fields": {},
      "shadow": false
    }
  },
  "operator_mathop": {
    "blockType": "ReportNumberBlock",
    "normallyData": {
      "opcode": "operator_mathop",
      "next": null,
      "parent": null,
      "inputs": {
        "NUM": [1,[10, ""]]
      },
      "fields": {
        "OPERATOR": "abs"
      },
      "shadow": false
    }
  },
  "operator_abs": {
    "blockType": "ReportNumberBlock",
    "normallyData": {
      "opcode": "operator_mathop",
      "next": null,
      "parent": null,
      "inputs": {
        "NUM": [1,[10, ""]]
      },
      "fields": {
        "OPERATOR": "abs"
      },
      "shadow": false
    }
  },
  "operator_floor": {
    "blockType": "ReportNumberBlock",
    "normallyData": {
      "opcode": "operator_mathop",
      "next": null,
      "parent": null,
      "inputs": {
        "NUM": [1,[10, ""]]
      },
      "fields": {
        "OPERATOR": "floor"
      },
      "shadow": false
    }
  },
  "operator_ceiling": {
    "blockType": "ReportNumberBlock",
    "normallyData": {
      "opcode": "operator_mathop",
      "next": null,
      "parent": null,
      "inputs": {
        "NUM": [1,[10, ""]]
      },
      "fields": {
        "OPERATOR": "ceiling"
      },
      "shadow": false
    }
  },
  "operator_sqrt": {
    "blockType": "ReportNumberBlock",
    "normallyData": {
      "opcode": "operator_mathop",
      "next": null,
      "parent": null,
      "inputs": {
        "NUM": [1,[10, ""]]
      },
      "fields": {
        "OPERATOR": "sqrt"
      },
      "shadow": false
    }
  },
  "operator_sin": {
    "blockType": "ReportNumberBlock",
    "normallyData": {
      "opcode": "operator_mathop",
      "next": null,
      "parent": null,
      "inputs": {
        "NUM": [1,[10, ""]]
      },
      "fields": {
        "OPERATOR": "sin"
      },
      "shadow": false
    }
  },
  "operator_cos": {
    "blockType": "ReportNumberBlock",
    "normallyData": {
      "opcode": "operator_mathop",
      "next": null,
      "parent": null,
      "inputs": {
        "NUM": [1,[10, ""]]
      },
      "fields": {
        "OPERATOR": "cos"
      },
      "shadow": false
    }
  },
  "operator_tan": {
    "blockType": "ReportNumberBlock",
    "normallyData": {
      "opcode": "operator_mathop",
      "next": null,
      "parent": null,
      "inputs": {
        "NUM": [1,[10, ""]]
      },
      "fields": {
        "OPERATOR": "tan"
      },
      "shadow": false
    }
  },
  "operator_asin": {
    "blockType": "ReportNumberBlock",
    "normallyData": {
      "opcode": "operator_mathop",
      "next": null,
      "parent": null,
      "inputs": {
        "NUM": [1,[10, ""]]
      },
      "fields": {
        "OPERATOR": "asin"
      },
      "shadow": false
    }
  },
  "operator_acos": {
    "blockType": "ReportNumberBlock",
    "normallyData": {
      "opcode": "operator_mathop",
      "next": null,
      "parent": null,
      "inputs": {
        "NUM": [1,[10, ""]]
      },
      "fields": {
        "OPERATOR": "acos"
      },
      "shadow": false
    }
  },
  "operator_atan": {
    "blockType": "ReportNumberBlock",
    "normallyData": {
      "opcode": "operator_mathop",
      "next": null,
      "parent": null,
      "inputs": {
        "NUM": [1,[10, ""]]
      },
      "fields": {
        "OPERATOR": "atan"
      },
      "shadow": false
    }
  },
  "operator_ln": {
    "blockType": "ReportNumberBlock",
    "normallyData": {
      "opcode": "operator_mathop",
      "next": null,
      "parent": null,
      "inputs": {
        "NUM": [1,[10, ""]]
      },
      "fields": {
        "OPERATOR": "ln"
      },
      "shadow": false
    }
  },
  "operator_log": {
    "blockType": "ReportNumberBlock",
    "normallyData": {
      "opcode": "operator_mathop",
      "next": null,
      "parent": null,
      "inputs": {
        "NUM": [1,[10, ""]]
      },
      "fields": {
        "OPERATOR": "log"
      },
      "shadow": false
    }
  },
  "operator_round": {
    "blockType": "ReportNumberBlock",
    "normallyData": {
      "opcode": "operator_round",
      "next": null,
      "parent": null,
      "inputs": {
        "NUM": [1,[10, ""]]
      },
      "fields": {},
      "shadow": false
    }
  },
  "control_stop": {
    "blockType": "NormalBlock",
    "normallyData": {
      "opcode": "control_stop",
      "next": null,
      "parent": null,
      "inputs": {},
      "fields": {
        "STOP_OPTION": "all"
      },
      "shadow": false,
      "mutation":{"tagName":"mutation","children":[],"hasnext":"false"}
    }
  },
  "control_while": {
    "blockType": "C-ShapeBlock",
    "normallyData": {
      "opcode": "control_while",
      "inputs": {
        "CONDITION": [1, null],
        "SUBSTACK": [1, null]
      },
      "next": null,
      "parent": null,
      "fields": {},
      "shadow": false,
      "topLevel": false
    }
  },
  "data_listcontainsitem": {
    "blockType": "ReportBooleanBlock",
    "normallyData": {
      "opcode": "data_listcontainsitem",
      "inputs": {
        "ITEM": [1, null]
      },
      "next": null,
      "parent": null,
      "fields": {
        "LIST": [1, null]
      },
      "shadow": false
    }
  },
  "pen_setPenColorToColor": {
    "blockType": "NormalBlock",
    "extension": "pen",
    "normallyData": {
      "opcode": "pen_setPenColorToColor",
      "inputs": {
        "COLOR": [1, [9, "#000000"]]
      },
      "next": null,
      "parent": null,
      "fields": {},
      "shadow": false
    }
  },
  "color": {
    "blockType": "ReportBlock",
    "normallyData": [
      9,
      "#000000"
    ]
  },
  "pen_setPenColorParamTo": {
    "blockType": "NormalBlock",
    "extension": "pen",
    "normallyData": {
      "opcode": "pen_setPenColorParamTo",
      "inputs": {
        "COLOR_PARAM": [1, [10, "color"]],
        "VALUE": [1, [10, ""]]
      },
      "next": null,
      "parent": null,
      "fields": {},
      "shadow": false
    }
  },
  "pen_menu_colorParam": {
    "blockType": "MenuBlock",
    "extension": "pen",
    "normallyData": {
      "opcode": "pen_menu_colorParam",
      "inputs": {},
      "next": null,
      "parent": null,
      "fields": {
        "COLOR_PARAM": ["color", null]
      },  
      "shadow": false
    }
  },
  "sensing_mousedown": {
    "blockType": "ReportBooleanBlock",
    "normallyData": {
      "opcode": "sensing_mousedown",
      "inputs": {},
      "next": null,
      "parent": null,
      "fields": {},
      "shadow": false
    }
  },
  "sensing_mousex": {
    "blockType": "ReportNumberBlock",
    "normallyData": {
      "opcode": "sensing_mousex",
      "inputs": {},
      "next": null,
      "parent": null,
      "fields": {},
      "shadow": false
    }
  },
  "sensing_mousey": {
    "blockType": "ReportNumberBlock",
    "normallyData": {
      "opcode": "sensing_mousey",
      "inputs": {},
      "next": null,
      "parent": null,
      "fields": {},
      "shadow": false
    }
  },
  "sensing_dayssince2000": {
    "blockType": "ReportNumberBlock",
    "normallyData": {
      "opcode": "sensing_dayssince2000",
      "inputs": {},
      "next": null,
      "parent": null,
      "fields": {},
      "shadow": false
    }
  },
  "sensing_of": {
    "blockType": "ReportBlock",
    "normallyData": {
      "opcode": "sensing_of",
      "inputs": {
        "OBJECT": [1, [10, ""]]
      },
      "next": null,
      "parent": null,
      "fields": {
        "PROPERTY": ["", null]
      },
      "shadow": false
    }
  },
  "sensing_of_object_menu": {
    "blockType": "MenuBlock",
    "normallyData": {
      "opcode": "sensing_of_object_menu",
      "inputs": {},
      "next": null,
      "parent": null,
      "fields": {
        "OBJECT": ["", null]
      },
      "shadow": false
    }
  },
  "sound_playuntildone": {
    "blockType": "NormalBlock",
    "normallyData": {
      "opcode": "sound_playuntildone",
      "inputs": {
        "SOUND_MENU": [1, [10, ""]]
      },
      "next": null,
      "parent": null,
      "fields": {},
      "shadow": false
    }
  },
  "sound_sounds_menu": {
    "blockType": "MenuBlock",
    "normallyData": {
      "opcode": "sound_sounds_menu",
      "inputs": {},
      "next": null,
      "parent": null,
      "fields": {
        "SOUND_MENU": ["", null]
      },
      "shadow": false
    }
  },
  "sound_setvolumeto": {
    "blockType": "NormalBlock",
    "normallyData": {
      "opcode": "sound_setvolumeto",
      "inputs": {
        "VOLUME": [1, [10, ""]]
      },
      "next": null,
      "parent": null,
      "fields": {},
      "shadow": false
    }
  },
  "translate_getTranslate": {
    "blockType": "ReportBlock",
    "extension": "translate",
    "normallyData": {
      "opcode": "translate_getTranslate",
      "inputs": {
        "WORDS": [1, [10, ""]],
        "LANGUAGE": [1, [10, ""]]
      },
      "next": null,
      "parent": null,
      "fields": {},
      "shadow": false
    }
  },
  "translate_menu_languages": {
    "blockType": "MenuBlock",
    "extension": "translate",
    "normallyData": {
      "opcode": "translate_menu_languages",
      "inputs": {},
      "next": null,
      "parent": null,
      "fields": {
        "LANGUAGE": ["", null]
      },
      "shadow": false
    }
  },
  "translate_getViewerLanguage": {
    "blockType": "ReportBlock",
    "extension": "translate",
    "normallyData": {
      "opcode": "translate_getViewerLanguage",
      "inputs": {},
      "next": null,
      "parent": null,
      "fields": {},
      "shadow": false
    }
  },
  "procedures_call": {
    "blockType": "NormalBlock",
    "normallyData": {
      "opcode": "procedures_call",
      "inputs": {
        "NAME": [1, [10, ""]]
      },
      "next": null,
      "parent": null,
      "fields": {},
      "shadow": false
    }
  },
  "procedures_definition": {
    "blockType": "HatBlock",
    "normallyData": {
      "opcode": "procedures_definition",
      "inputs": {
        "NAME": [1, [10, ""]]
      },
      "next": null,
      "parent": null,
      "fields": {},
      "shadow": false
    }
  },
  "procedures_prototype": {
    "blockType": "NormalBlock",
    "normallyData": {
      "opcode": "procedures_prototype",
      "inputs": {
        "NAME": [1, [10, ""]]
      },
      "next": null,
      "parent": null,
      "fields": {},
      "shadow": false
    }
  },
  "coreExample_exampleWithInlineImage": {
    "blockType": "NormalBlock",
    "extension": "coreExample",
    "normallyData": {
      "opcode": "coreExample_exampleWithInlineImage",
      "inputs": {},
      "next": null,
      "parent": null,
      "fields": {},
      "shadow": false
    }
  },
  "coreExample_exampleOpcode": {
    "blockType": "ReportBlock",
    "extension": "coreExample",
    "normallyData": {
      "opcode": "coreExample_exampleOpcode",
      "inputs": {},
      "next": null,
      "parent": null,
      "fields": {},
      "shadow": false
    }
  },
  "input": {
    "blockType": "ReportBlock",
    "normallyData": [
      10,
      "text"
    ]
  },
  "argument_reporter_string_number": {
    "blockType": "ReportBlock",
    "normallyData": {
      "opcode": "argument_reporter_string_number",
      "inputs": {},
      "next": null,
      "parent": null,
      "fields": {
        "VALUE": ["", null]
      },
      "shadow": false
    }
  },
  "argument_reporter_boolean": {
    "blockType": "ReportBooleanBlock",
    "normallyData": {
      "opcode": "argument_reporter_boolean",
      "inputs": {},
      "next": null,
      "parent": null,
      "fields": {
        "VALUE": ["", null]
      },
      "shadow": false
    }
  },
  "get_list": {
    "blockType": "ReportBlock",
    "normallyData": [
      13,
      "undefined",
      ""
    ]
  },
  "shadow": {
    "blockType": "",
    "normallyData": ""
  }
}')
$allblocks = [
  "motion_movesteps",
  "motion_turnright",
  "motion_turnleft",
  "motion_goto",
  "motion_gotoxy",
  "motion_glideto",
  "motion_glidesecstoxy",
  "motion_pointindirection",
  "motion_pointtowards",
  "motion_changexby",
  "motion_setx",
  "motion_changeyby",
  "motion_sety",
  "motion_ifonedgebounce",
  "motion_setrotationstyle",
  "motion_xposition",
  "motion_yposition",
  "motion_direction",
  "looks_sayforsecs",
  "looks_say",
  "looks_thinkforsecs",
  "looks_think",
  "looks_switchcostumeto",
  "looks_nextcostume",
  "looks_switchbackdropto",
  "looks_switchbackdroptoandwait",
  "looks_nextbackdrop",
  "looks_changesizeby",
  "looks_setsizeto",
  "looks_changeeffectby",
  "looks_seteffectto",
  "looks_cleargraphiceffects",
  "looks_show",
  "looks_hide",
  "looks_gotofrontback",
  "looks_goforwardbackwardlayers",
  "looks_costumenumbername",
  "looks_backdropnumbername",
  "looks_size",
  "sound_playuntildone",
  "sound_play",
  "sound_stopallsounds",
  "sound_changeeffectby",
  "sound_seteffectto",
  "sound_cleareffects",
  "sound_changevolumeby",
  "sound_setvolumeto",
  "sound_volume",
  "event_whenflagclicked",
  "event_whenkeypressed",
  "event_whenthisspriteclicked",
  "event_whenstageclicked",
  "event_whenbackdropswitchesto",
  "event_whengreaterthan",
  "event_whenbroadcastreceived",
  "event_broadcast",
  "event_broadcastandwait",
  "control_wait",
  "control_repeat",
  "control_forever",
  "control_if",
  "control_if_else",
  "control_wait_until",
  "control_repeat_until",
  "control_stop",
  "control_start_as_clone",
  "control_create_clone_of",
  "control_delete_this_clone",
  "sensing_touchingobject",
  "sensing_touchingcolor",
  "sensing_coloristouchingcolor",
  "sensing_distanceto",
  "sensing_askandwait",
  "sensing_answer",
  "sensing_keypressed",
  "sensing_mousedown",
  "sensing_mousex",
  "sensing_mousey",
  "sensing_setdragmode",
  "sensing_loudness",
  "sensing_timer",
  "sensing_resettimer",
  "sensing_of",
  "sensing_current",
  "sensing_dayssince2000",
  "sensing_username",
  "operator_add",
  "operator_subtract",
  "operator_multiply",
  "operator_divide",
  "operator_random",
  "operator_gt",
  "operator_lt",
  "operator_equals",
  "operator_and",
  "operator_or",
  "operator_not",
  "operator_join",
  "operator_letter_of",
  "operator_length",
  "operator_contains",
  "operator_mod",
  "operator_round",
  "operator_mathop",
  "data_variable",              # enum: "12"
  "data_setvariableto",
  "data_changevariableby",
  "data_showvariable",
  "data_hidevariable",
  "data_listcontents",          # enum: "13"
  "data_addtolist",
  "data_deleteoflist",
  "data_deletealloflist",
  "data_insertatlist",
  "data_replaceitemoflist",
  "data_itemoflist",
  "data_itemnumoflist",
  "data_lengthoflist",
  "data_listcontainsitem",
  "data_showlist",
  "data_hidelist",
  "procedures_definition",
  "procedures_call",
  "argument_reporter_string_number",
  "argument_reporter_boolean",
  "music_playDrumForBeats",
  "music_restForBeats",
  "music_playNoteForBeats",
  "music_setInstrument",
  "music_setTempo",
  "music_changeTempo",
  "music_getTempo",
  "pen_clear",
  "pen_stamp",
  "pen_penDown",
  "pen_penUp",
  "pen_setPenColorToColor",
  "pen_changePenColorParamBy",
  "pen_setPenColorParamTo",
  "pen_changePenSizeBy",
  "pen_setPenSizeTo",
  "videoSensing_whenMotionGreaterThan",
  "videoSensing_videoOn",
  "videoSensing_videoToggle",
  "videoSensing_setVideoTransparency",
  "text2speech_speakAndWait",
  "text2speech_setVoice",
  "text2speech_setLanguage",
  "translate_getTranslate",
  "translate_getViewerLanguage",
  "makeymakey_whenMakeyKeyPressed",
  "makeymakey_whenCodePressed",
  "microbit_whenButtonPressed",
  "microbit_isButtonPressed",
  "microbit_whenGesture",
  "microbit_displaySymbol",
  "microbit_displayText",
  "microbit_displayClear",
  "microbit_whenTilted",
  "microbit_isTilted",
  "microbit_getTiltAngle",
  "microbit_whenPinConnected",
  "ev3_motorTurnClockwise",
  "ev3_motorTurnCounterClockwise",
  "ev3_motorSetPower",
  "ev3_getMotorPosition",
  "ev3_whenButtonPressed",
  "ev3_whenDistanceLessThan",
  "ev3_whenBrightnessLessThan",
  "ev3_buttonPressed",
  "ev3_getDistance",
  "ev3_getBrightness",
  "ev3_beep",
  "boost_motorOnFor",
  "boost_motorOnForRotation",
  "boost_motorOn",
  "boost_motorOff",
  "boost_setMotorPower",
  "boost_setMotorDirection",
  "boost_getMotorPosition",
  "boost_whenColor",
  "boost_seeingColor",
  "boost_whenTilted",
  "boost_getTiltAngle",
  "boost_setLightHue",
  "wedo2_motorOnFor",
  "wedo2_motorOn",
  "wedo2_motorOff",
  "wedo2_startMotorPower",
  "wedo2_setMotorDirection",
  "wedo2_setLightHue",
  "wedo2_whenDistance",
  "wedo2_whenTilted",
  "wedo2_getDistance",
  "wedo2_isTilted",
  "wedo2_getTiltAngle",
  "gdxfor_whenGesture",
  "gdxfor_whenForcePushedOrPulled",
  "gdxfor_getForce",
  "gdxfor_whenTilted",
  "gdxfor_isTilted",
  "gdxfor_getTilt",
  "gdxfor_isFreeFalling",
  "gdxfor_getSpinSpeed",
  "gdxfor_getAcceleration",
  "motion_scroll_right",
  "motion_scroll_up",
  "motion_align_scene",
  "motion_xscroll",
  "motion_yscroll",
  "looks_hideallsprites",
  "looks_setstretchto",
  "looks_changestretchby",
  "event_whentouchingobject",
  "control_for_each",
  "control_while",
  "control_get_counter",
  "control_incr_counter",
  "control_clear_counter",
  "control_all_at_once",
  "sensing_loud",
  "sensing_userid",
  "data_listindexall",
  "data_listindexrandom",
  "procedures_declaration",
  "music_midiPlayDrumForBeats",
  "music_midiSetInstrument",
  "pen_setPenHueToNumber",
  "pen_changePenHueBy",
  "pen_setPenShadeToNumber",
  "pen_changePenShadeBy",
  "wedo2_playNoteFor",
  "coreExample_exampleOpcode",
  "coreExample_exampleWithInlineImage",
  "undefined",
  "motion_goto_menu",
  "motion_glideto_menu",
  "motion_pointtowards_menu",
  "looks_costume",
  "looks_backdrops",
  "sound_sounds_menu",
  "event_broadcast_menu",         # enum: "11"
  "control_create_clone_of_menu",
  "sensing_touchingobjectmenu",
  "sensing_distancetomenu",
  "sensing_keyoptions",
  "sensing_of_object_menu",
  "music_menu_DRUM",
  "music_menu_INSTRUMENT",
  "pen_menu_colorParam",
  "videoSensing_menu_ATTRIBUTE",
  "videoSensing_menu_SUBJECT",
  "videoSensing_menu_VIDEO_STATE",
  "text2speech_menu_voices",
  "text2speech_menu_languages",
  "translate_menu_languages",
  "makeymakey_menu_KEY",
  "makeymakey_menu_SEQUENCE",
  "microbit_menu_buttons",
  "microbit_menu_gestures",
  "microbit_menu_tiltDirectionAny",
  "microbit_menu_tiltDirection",
  "microbit_menu_touchPins",
  "ev3_menu_motorPorts",
  "ev3_menu_sensorPorts",
  "boost_menu_MOTOR_ID",
  "boost_menu_MOTOR_DIRECTION",
  "boost_menu_MOTOR_REPORTER_ID",
  "boost_menu_COLOR",
  "boost_menu_TILT_DIRECTION_ANY",
  "boost_menu_TILT_DIRECTION",
  "wedo2_menu_MOTOR_ID",
  "wedo2_menu_MOTOR_DIRECTION",
  "wedo2_menu_OP",
  "wedo2_menu_TILT_DIRECTION_ANY",
  "wedo2_menu_TILT_DIRECTION",
  "gdxfor_menu_gestureOptions",
  "gdxfor_menu_pushPullOptions",
  "gdxfor_menu_tiltAnyOptions",
  "gdxfor_menu_tiltOptions",
  "gdxfor_menu_axisOptions",
  "event_touchingobjectmenu",
  "microbit_menu_pinState",
  "procedures_prototype",
  "argument_editor_boolean",
  "argument_editor_string_number",
  "note",
  "matrix",
  "math_number",           # enum: "4"
  "math_positive_number",  # enum: "5"
  "math_whole_number",     # enum: "6"
  "math_integer",          # enum: "7"
  "math_angle",            # enum: "8"
  "colour_picker",         # enum: "9"
  "text",                  # enum: "10"
].sort
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
      $targets[0]["variables"][id] = [variable, 0]
    else
      id = SecureRandom.uuid
      $target["variables"][id] = [variable, 0]
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

