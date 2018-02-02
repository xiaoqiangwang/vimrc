" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

syn match   EPICSDBDComment	"#.*$"
syn region  EPICSDBDText     start='"' end='"'
syn match   EPICSDBDField    "\(menu\|recordtype\|field\|device\|variable\|registrar\|choice\)\@<=([a-zA-Z0-9_]\+"
syn keyword EPICSDBDKeyword  int double
syn keyword EPICSDBDKeyword  registrar variable device driver function breaktable include 
syn keyword EPICSDBDKeyword  menu choice
syn keyword EPICSDBDKeyword  recordtype field
syn keyword EPICSDBDKeyword  asl base extra initial interest prompt promptgroup pp size special

syn keyword EPICSDBDFieldType DBF_STRING DBF_CHAR DBF_UCHAR DBF_SHORT DBF_USHORT DBF_LONG DBF_ULONG
syn keyword EPICSDBDFieldType DBF_FLOAT DBF_DOUBLE DBF_ENUM DBF_MENU DBF_DEVICE
syn keyword EPICSDBDFieldType DBF_INLINK DBF_OUTLINK DBF_FWDLINK DBF_NOACCESS
syn keyword EPICSDBDGuiType   GUI_COMMON GUI_ALARMS GUI_BITS1 GUI_BITS2 GUI_CALC GUI_CLOCK GUI_COMPRESS
syn keyword EPICSDBDGuiType   GUI_CONVERT GUI_DISPLAY GUI_HIST GUI_INPUTS GUI_LINKS GUI_MBB GUI_MOTOR
syn keyword EPICSDBDGuiType   GUI_OUTPUT GUI_PID GUI_PULSE GUI_SELECT GUI_SEQ1 GUI_SEQ2 GUI_SEQ3 GUI_SUB
syn keyword EPICSDBDGuiType   GUI_TIMER GUI_WAVE GUI_SCAN
syn keyword EPICSDBDSpecial   SPC_MOD SPC_NOMOD SPC_DBADDR SPC_SCAN SPC_ALARMACK SPC_AS SPC_RESET SPC_LINCONV SPC_CALC
syn keyword EPICSDBDConstant  NO YES TRUE ASL0 ASL1 HEX DECIMAL
syn keyword EPICSDBDConstant  CONSTANT PV_LINK INST_IO VME_IO

hi link EPICSDBDComment    Comment
hi link EPICSDBDKeyword    Special
hi link EPICSDBDType       Type
hi link EPICSDBDField      Label
hi link EPICSDBDText       String
hi link EPICSDBDFieldType  Type
hi link EPICSDBDGuiType    Type
hi link EPICSDBDSpecial    Type
hi link EPICSDBDConstant   Constant
hi link EPICSDBDField      Label
