syn match   EPICSRecordComment	"#.*$"
syn match   EPICSRecordSub     "\$\([^).]*\)"
syn region  EPICSRecordText     start='"' end='"' contains=EPICSRecordSub
syn keyword EPICSRecordKeyword  record field
syn keyword EPICSRecordType  ai ao bi bo mbbi mbbo longin longout waveform compress calc calcout scalcout stringin stringout dfanout fanout seq
syn keyword EPICSRecordType  motor sub asub gensub asyn busy sseq transform sscan


" scan
syn keyword EPICSRecordField SCAN PINI PHAS EVNT PRIO DISV DISA SDIS PROC DISS FLNK
syn keyword EPICSRecordField BKPT

" general
syn keyword EPICSRecordField NAME DESC ASG  DTYP EGU VAL STAT SEVR UDF

" simulation
syn keyword EPICSRecordField INP  SIMM SIML SIOL IVOA

" output
syn keyword EPICSRecordField OUT  DOL  OMSL OIF  DRVH DRVL OROC

" conversion
syn keyword EPICSRecordField LINR EGUF EGUL AOFF ROFF ASLO ESLO SMOD

" alarm
syn keyword EPICSRecordField HOPR LOPR PREC HIHI LOLO HIGH LOW  HHSV LLSV HSV  LSV  HYST

" monitor
syn keyword EPICSRecordField ADEL MDEL

" binary
syn keyword EPICSRecordField ZNAM ONAM ZSV  OSV  UNSV COSV HIGH 
syn keyword EPICSRecordField SHFT
syn keyword EPICSRecordField ZRVL ONVL TWVL THVL FRVL FVVL SXVL SVVL EIVL NIVL TEVL ELVL TVVL TTVL FTVL FFVL
syn keyword EPICSRecordField ZRST ONST TWST THST FRST FVST SXST SVST EIST NIST TEST ELST TVST TTST FTST FFST
syn keyword EPICSRecordField ZRSV ONSV TWSV THSV FRSV FVSV SXSV SVSV EISV NISV TESV ELSV TVSV TTSV FTSV FFSV

" 
syn keyword EPICSRecordField INPA INPB INPC INPD INPE INPF
syn keyword EPICSRecordField INPG INPH INPI INPJ INPK INPL

" calc
syn keyword EPICSRecordField CALC OCAL OOPT DOPT OEVT ODLY

" compress 
syn keyword EPICSRecordField ALG N NSAM ILIL IHIL 

" select
syn keyword EPICSRecordField SELM SELN NVL 

" seq
syn keyword EPICSRecordField SELL
syn keyword EPICSRecordField DOL1 DOL2 DOL3 DOL4 DOL5 DOL6 DOL7 DOL8 DOL9 DOLA
syn keyword EPICSRecordField DO1  DO2  DO3  DO4  DO5  DO6  DO7  DO8  DO9  DOA
syn keyword EPICSRecordField LNK1 LNK2 LNK3 LNK4 LNK5 LNK6 LNK7 LNK8 LNK9 LNKA
syn keyword EPICSRecordField DLY1 DLY2 DLY3 DLY4 DLY5 DLY6 DLY7 DLY8 DLY9 DLYA

" sseq
syn keyword EPICSRecordField ABORT BUSY
syn keyword EPICSRecordField STR1  STR2  STR3  STR4  STR5  STR6  STR7  STR8  STR9  STRA
syn keyword EPICSRecordField WAIT1 WAIT2 WAIT3 WAIT4 WAIT5 WAIT6 WAIT7 WAIT8 WAIT9 WAITA

" sub
syn keyword EPICSRecordField INAM SNAM

" waveform
syn keyword EPICSRecordField FTVL NELM

" motor
syn keyword EPICSRecordField ACCL BACC BDST BVEL 
syn keyword EPICSRecordField DHLM DLLM HLM  LLM  MRES RRES
syn keyword EPICSRecordField DINP DLY  RDBD RDBL TWV
syn keyword EPICSRecordField OFF  DIR  FOFF VOF  FOF
syn keyword EPICSRecordField UEIP URIP
syn keyword EPICSRecordField VBAS VELO VMAX HVEL JVEL JAR
syn keyword EPICSRecordField RTRY
syn keyword EPICSRecordField POST PREM INIT SREV

" transform
syn keyword EPICSRecordField CLCA CLCB CLCC CLCD CLCE CLCF CLCG CLCH
syn keyword EPICSRecordField CLCI CLCJ CLCK CLCL CLCM CLCN CLCO CLCP
syn keyword EPICSRecordField OUTA OUTB OUTC OUTD OUTE OUTF OUTG OUTH
syn keyword EPICSRecordField OUTI OUTJ OUTK OUTL OUTM OUTN OUTO OUTP

" sscan 
syn keyword EPICSRecordField MPTS NPTS FPTS FFO T1PV ACQT ACQM
syn keyword EPICSRecordField P1HR P1PR P2HR P2PR P3HR P3PR P4HR P4PR

" scalcout
syn keyword EPICSRecordField INAA INBB INCC INDD INEE INFF
syn keyword EPICSRecordField INGG INHH INII INJJ INKK INLL


hi link EPICSRecordComment  Comment
hi link EPICSRecordKeyword  Special
hi link EPICSRecordType     Type
hi link EPICSRecordField    Label
hi link EPICSRecordSub      Identifier
hi link EPICSRecordText     String
