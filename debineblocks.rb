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
