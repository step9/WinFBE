'    WinFBE - Programmer's Code Editor for the FreeBASIC Compiler
'    Copyright (C) 2016-2018 Paul Squires, PlanetSquires Software
'
'    This program is free software: you can redistribute it and/or modify
'    it under the terms of the GNU General Public License as published by
'    the Free Software Foundation, either version 3 of the License, or
'    (at your option) any later version.
'
'    This program is distributed in the hope that it will be useful,
'    but WITHOUT any WARRANTY; without even the implied warranty of
'    MERCHANTABILITY or FITNESS for A PARTICULAR PURPOSE.  See the
'    GNU General Public License for more details.


''  Control identifiers
#Define IDC_SCINTILLA 100
#Define IDC_SCROLLV   200

#Define IDC_FRMMAIN_TOPTABCONTROL                   1000
#Define IDC_FRMMAIN_TOOLBAR                         1001
#Define IDC_FRMMAIN_REBAR                           1002
#Define IDC_FRMMAIN_STATUSBAR                       1003
#Define IDC_FRMMAIN_COMPILETIMER                    1004
#Define IDC_FRMMAIN_COMBOBUILDS                     1005

#Define IDC_FRMOUTPUT_TABCONTROL                    1000
#Define IDC_FRMOUTPUT_LISTVIEW                      1001
#Define IDC_FRMOUTPUT_TXTLOGFILE                    1002
#Define IDC_FRMOUTPUT_BTNCLOSE                      1003
#Define IDC_FRMOUTPUT_LISTSEARCH                    1004
#Define IDC_FRMOUTPUT_LVTODO                        1005
#Define IDC_FRMOUTPUT_TXTNOTES                      1006

#Define IDC_FRMEXPLORER_LBLEXPLORER                 1000
#Define IDC_FRMEXPLORER_TREE                        1001
#Define IDC_FRMEXPLORER_BTNCLOSE                    1002

#Define IDC_FRMRECENT_BTNOPENFILE                   1000
#Define IDC_FRMRECENT_BTNOPENPROJECT                1001
#Define IDC_FRMRECENT_TREEVIEW                      1002

#Define IDC_FRMOPTIONS_LABEL1                       1000
#Define IDC_FRMOPTIONS_CMDCANCEL                    1001
#Define IDC_FRMOPTIONS_LBLCATEGORY                  1002
#Define IDC_FRMOPTIONS_CMDOK                        1003
#Define IDC_FRMOPTIONS_TVWCATEGORIES                1004

#Define IDC_FRMOPTIONSGENERAL_CHKMULTIPLEINSTANCES  1000
#Define IDC_FRMOPTIONSGENERAL_CHKCOMPILEAUTOSAVE    1001
#Define IDC_FRMOPTIONSGENERAL_CHKCLOSEFUNCLIST      1002
#Define IDC_FRMOPTIONSGENERAL_CHKCLOSEPROJMGR       1003
#Define IDC_FRMOPTIONSGENERAL_CHKHIDECOMPILE        1004
#Define IDC_FRMOPTIONSGENERAL_CHKASKEXIT            1005
#Define IDC_FRMOPTIONSGENERAL_CHKHIDETOOLBAR        1006
#Define IDC_FRMOPTIONSGENERAL_CHKHIDESTATUSBAR      1007

#Define IDC_FRMOPTIONSEDITOR_LBLTABSIZE             1000
#Define IDC_FRMOPTIONSEDITOR_TXTTABSIZE             1001
#Define IDC_FRMOPTIONSEDITOR_LBLKEYWORDCASE         1002
#Define IDC_FRMOPTIONSEDITOR_COMBOCASE              1003
#Define IDC_FRMOPTIONSEDITOR_CHKCODETIPS            1004
#Define IDC_FRMOPTIONSEDITOR_CHKAUTOCOMPLETE        1005
#Define IDC_FRMOPTIONSEDITOR_CHKSHOWLEFTMARGIN      1006
#Define IDC_FRMOPTIONSEDITOR_CHKSYNTAXHIGHLIGHTING  1007
#Define IDC_FRMOPTIONSEDITOR_CHKCURRENTLINE         1008
#Define IDC_FRMOPTIONSEDITOR_CHKLINENUMBERING       1009
#Define IDC_FRMOPTIONSEDITOR_CHKCONFINECARET        1010
#Define IDC_FRMOPTIONSEDITOR_CHKTABTOSPACES         1011
#Define IDC_FRMOPTIONSEDITOR_CHKAUTOINDENTATION     1012
#Define IDC_FRMOPTIONSEDITOR_CHKSHOWFOLDMARGIN      1013
#Define IDC_FRMOPTIONSEDITOR_CHKINDENTGUIDES        1014
#Define IDC_FRMOPTIONSEDITOR_CHKUNICODE             1015
#Define IDC_FRMOPTIONSEDITOR_CHKSHOWRIGHTEDGE       1016
#Define IDC_FRMOPTIONSEDITOR_TXTRIGHTEDGE           1017
#Define IDC_FRMOPTIONSEDITOR_LBLRIGHTEDGE           1018

#Define IDC_FRMOPTIONSCOLORS_LSTCOLORS              1000
#Define IDC_FRMOPTIONSCOLORS_FRMCOLORS              1001
#Define IDC_FRMOPTIONSCOLORS_LBLFOREGROUND          1002
#Define IDC_FRMOPTIONSCOLORS_LBLBACKGROUND          1003
#Define IDC_FRMOPTIONSCOLORS_FRMFONT                1004
#Define IDC_FRMOPTIONSCOLORS_CBCOLOR1               1005
#Define IDC_FRMOPTIONSCOLORS_CBCOLOR2               1006
#Define IDC_FRMOPTIONSCOLORS_COMBOFONTNAME          1007
#Define IDC_FRMOPTIONSCOLORS_COMBOFONTCHARSET       1008
#Define IDC_FRMOPTIONSCOLORS_COMBOFONTSIZE          1009
#Define IDC_FRMOPTIONSCOLORS_COMBOTHEMES            1010
#Define IDC_FRMOPTIONSCOLORS_CHKFONTBOLD            1011
#Define IDC_FRMOPTIONSCOLORS_CHKFONTITALIC          1012
#Define IDC_FRMOPTIONSCOLORS_CHKFONTUNDERLINE       1013
#Define IDC_FRMOPTIONSCOLORS_BTNACTIONS             1014

#Define IDC_FRMOPTIONSCOMPILER_CMDFBWIN32           1000
#Define IDC_FRMOPTIONSCOMPILER_LBLSWITCHES          1001
#Define IDC_FRMOPTIONSCOMPILER_LBLFBC32             1002
#Define IDC_FRMOPTIONSCOMPILER_TXTFBWIN32           1003
#Define IDC_FRMOPTIONSCOMPILER_TXTFBSWITCHES        1004
#Define IDC_FRMOPTIONSCOMPILER_LBLFBHELP            1005
#Define IDC_FRMOPTIONSCOMPILER_TXTFBHELPFILE        1006
#Define IDC_FRMOPTIONSCOMPILER_CMDFBHELPFILE        1007
#Define IDC_FRMOPTIONSCOMPILER_CMDFBWIN64           1008
#Define IDC_FRMOPTIONSCOMPILER_LBLFBC64             1009
#Define IDC_FRMOPTIONSCOMPILER_TXTFBWIN64           1010
#Define IDC_FRMOPTIONSCOMPILER_CMDAPIHELPPATH       1011
#Define IDC_FRMOPTIONSCOMPILER_LBLAPIHELP           1012
#Define IDC_FRMOPTIONSCOMPILER_TXTWIN32HELPPATH     1013
#Define IDC_FRMOPTIONSCOMPILER_CHKRUNVIACOMMANDWINDOW 1014
#Define IDC_FRMOPTIONSCOMPILER_LBLAFXPATH           1015
#Define IDC_FRMOPTIONSCOMPILER_TXTAFXPATH           1016
#Define IDC_FRMOPTIONSCOMPILER_CMDAFXPATH           1017


#Define IDC_FRMOPTIONSLOCAL_LBLLOCALIZATION         1000
#Define IDC_FRMOPTIONSLOCAL_CMDLOCALIZATION         1001
#Define IDC_FRMOPTIONSLOCAL_FRAMELOCALIZATION       1002

#Define IDC_FRMOPTIONSKEYWORDS_TXTKEYWORDS          1000

#Define IDC_FRMPROJECTOPTIONS_LABEL1                1000
#Define IDC_FRMPROJECTOPTIONS_LABEL2                1001
#Define IDC_FRMPROJECTOPTIONS_LABEL3                1002
#Define IDC_FRMPROJECTOPTIONS_LABEL4                1003
#Define IDC_FRMPROJECTOPTIONS_LABEL5                1004
#Define IDC_FRMPROJECTOPTIONS_TXTPROJECTPATH        1005
#Define IDC_FRMPROJECTOPTIONS_CMDSELECT             1006
#Define IDC_FRMPROJECTOPTIONS_TXTOPTIONS32          1007
#Define IDC_FRMPROJECTOPTIONS_TXTOPTIONS64          1008
#Define IDC_FRMPROJECTOPTIONS_CHKMANIFEST           1009

#DEFINE IDC_FRMCOMPILECONFIG_LIST1                  1000
#DEFINE IDC_FRMCOMPILECONFIG_LABEL1                 1001
#DEFINE IDC_FRMCOMPILECONFIG_TXTDESCRIPTION         1002
#DEFINE IDC_FRMCOMPILECONFIG_LABEL2                 1003
#DEFINE IDC_FRMCOMPILECONFIG_TXTOPTIONS             1004
#DEFINE IDC_FRMCOMPILECONFIG_CHKISDEFAULT           1005
#DEFINE IDC_FRMCOMPILECONFIG_CMDUP                  1006
#DEFINE IDC_FRMCOMPILECONFIG_CMDDOWN                1007
#DEFINE IDC_FRMCOMPILECONFIG_CMDINSERT              1008
#DEFINE IDC_FRMCOMPILECONFIG_CMDDELETE              1009
#DEFINE IDC_FRMCOMPILECONFIG_OPT32                  1010
#DEFINE IDC_FRMCOMPILECONFIG_OPT64                  1011

#Define IDC_FRMTEMPLATES_LISTBOX                    1000

#Define IDC_FRMFIND_LBLFINDWHAT                     1000
#Define IDC_FRMFIND_COMBOFIND                       1001
#Define IDC_FRMFIND_CHKWHOLEWORDS                   1004
#Define IDC_FRMFIND_CHKMATCHCASE                    1005
#Define IDC_FRMFIND_FRAMESCOPE                      1006
#Define IDC_FRMFIND_OPTSCOPE1                       1007
#Define IDC_FRMFIND_OPTSCOPE2                       1008
#Define IDC_FRMFIND_OPTSCOPE3                       1009
#Define IDC_FRMFIND_FRAMEOPTIONS                    1010

#Define IDC_FRMFINDINFILES_LBLFINDWHAT              1000
#Define IDC_FRMFINDINFILES_COMBOFIND                1001
#Define IDC_FRMFINDINFILES_COMBOFILES               1002
#Define IDC_FRMFINDINFILES_COMBOFOLDER              1003
#Define IDC_FRMFINDINFILES_CHKWHOLEWORDS            1004
#Define IDC_FRMFINDINFILES_CHKMATCHCASE             1005
#Define IDC_FRMFINDINFILES_FRAMESCOPE               1006
#Define IDC_FRMFINDINFILES_OPTSCOPE1                1007
#Define IDC_FRMFINDINFILES_OPTSCOPE2                1008
#Define IDC_FRMFINDINFILES_OPTSCOPE3                1009
#Define IDC_FRMFINDINFILES_CHKSUBFOLDERS            1010
#Define IDC_FRMFINDINFILES_FRAMEOPTIONS             1011
#Define IDC_FRMFINDINFILES_CMDFILES                 1012
#Define IDC_FRMFINDINFILES_CMDFOLDERS               1013
 
#Define IDC_FRMREPLACE_LBLFINDWHAT                  1000
#Define IDC_FRMREPLACE_COMBOFIND                    1001
#Define IDC_FRMREPLACE_CHKWHOLEWORDS                1002
#Define IDC_FRMREPLACE_CHKMATCHCASE                 1003
#Define IDC_FRMREPLACE_FRAMESCOPE                   1004
#Define IDC_FRMREPLACE_OPTSCOPE1                    1005
#Define IDC_FRMREPLACE_OPTSCOPE2                    1006
#Define IDC_FRMREPLACE_OPTSCOPE3                    1007
#Define IDC_FRMREPLACE_FRAMEOPTIONS                 1008
#Define IDC_FRMREPLACE_LBLREPLACEWITH               1009
#Define IDC_FRMREPLACE_COMBOREPLACE                 1010
#Define IDC_FRMREPLACE_CMDREPLACE                   1011
#Define IDC_FRMREPLACE_CMDREPLACEALL                1012
#Define IDC_FRMREPLACE_LBLSTATUS                    1013

#Define IDC_FRMFINDREPLACE_BTNCLOSE                 IDCANCEL
#Define IDC_FRMFINDREPLACE_BTNTOGGLE                1001
#Define IDC_FRMFINDREPLACE_TXTFIND                  1002
#Define IDC_FRMFINDREPLACE_TXTREPLACE               1003
#Define IDC_FRMFINDREPLACE_BTNMATCHCASE             1004
#Define IDC_FRMFINDREPLACE_BTNMATCHWHOLEWORD        1005
#Define IDC_FRMFINDREPLACE_BTNREPLACE               1006
#Define IDC_FRMFINDREPLACE_BTNREPLACEALL            1007
#Define IDC_FRMFINDREPLACE_LBLRESULTS               1008
#Define IDC_FRMFINDREPLACE_BTNLEFT                  1009
#Define IDC_FRMFINDREPLACE_BTNRIGHT                 1010
#Define IDC_FRMFINDREPLACE_BTNSELECTION             1011

#Define IDC_FRMGOTO_LBLLASTLINE                     1000
#Define IDC_FRMGOTO_LBLCURRENTLINE                  1001
#Define IDC_FRMGOTO_LBLGOTOLINE                     1002
#Define IDC_FRMGOTO_TXTLINE                         1003
#Define IDC_FRMGOTO_LBLLASTVALUE                    1004
#Define IDC_FRMGOTO_LBLCURRENTVALUE                 1005

#Define IDC_FRMCOMMANDLINE_LABEL1                   1000
#Define IDC_FRMCOMMANDLINE_TEXTBOX1                 1001

#Define IDC_FRMFNLIST_LISTBOX                       1000

#Define IDC_FRMVDTOOLBOX_LSTTOOLBOX                 1000
#Define IDC_FRMVDTOOLBOX_LSTPROPERTIES              1001
#Define IDC_FRMVDTOOLBOX_LSTEVENTS                  1002
#Define IDC_FRMVDTOOLBOX_TABCONTROL                 1003

#DEFINE IDC_FRMUSERTOOLS_LSTTOOLS                   1000
#DEFINE IDC_FRMUSERTOOLS_CMDINSERT                  1001
#DEFINE IDC_FRMUSERTOOLS_CMDDELETE                  1002
#DEFINE IDC_FRMUSERTOOLS_CMDUP                      1003
#DEFINE IDC_FRMUSERTOOLS_CMDDOWN                    1004
#DEFINE IDC_FRMUSERTOOLS_TXTTOOLNAME                1005
#DEFINE IDC_FRMUSERTOOLS_TXTCOMMAND                 1006
#DEFINE IDC_FRMUSERTOOLS_TXTPARAMETERS              1007
#DEFINE IDC_FRMUSERTOOLS_TXTKEY                     1008
#DEFINE IDC_FRMUSERTOOLS_LABEL1                     1009
#DEFINE IDC_FRMUSERTOOLS_LABEL2                     1010
#DEFINE IDC_FRMUSERTOOLS_LABEL3                     1011
#DEFINE IDC_FRMUSERTOOLS_CMDBROWSEEXE               1012
#DEFINE IDC_FRMUSERTOOLS_LABEL4                     1013
#DEFINE IDC_FRMUSERTOOLS_TXTWORKINGFOLDER           1014
#DEFINE IDC_FRMUSERTOOLS_CMDBROWSEFOLDER            1015
#DEFINE IDC_FRMUSERTOOLS_LABEL5                     1016
#DEFINE IDC_FRMUSERTOOLS_LABEL6                     1017
#DEFINE IDC_FRMUSERTOOLS_CHKCTRL                    1018
#DEFINE IDC_FRMUSERTOOLS_CHKALT                     1019
#DEFINE IDC_FRMUSERTOOLS_CHKSHIFT                   1020
#DEFINE IDC_FRMUSERTOOLS_LABEL7                     1021
#DEFINE IDC_FRMUSERTOOLS_CHKPROMPT                  1022
#DEFINE IDC_FRMUSERTOOLS_CHKMINIMIZED               1023
#DEFINE IDC_FRMUSERTOOLS_CHKWAIT                    1024
#DEFINE IDC_FRMUSERTOOLS_COMBOACTION                1025
#DEFINE IDC_FRMUSERTOOLS_LABEL8                     1026
#DEFINE IDC_FRMUSERTOOLS_LABEL9                     1027
#Define IDC_FRMUSERTOOLS_CHKDISPLAYMENU             1028
#Define IDC_FRMUSERTOOLS_CMDOK                      1029


#ifdef USE_VISUAL_DESIGNER
   #Define TOOLS_MENU_POSITION 8
#else
   #Define TOOLS_MENU_POSITION 7
#endif   

Const DELIM = "|"                    ' character used as delimiter for function names in data1 of gFunctionLists hash
Const IDC_MRUBASE = 5000             ' Windows id of MRU items 1 to 10 (located under File menu)
Const IDC_MRUPROJECTBASE = 6000      ' Windows id of MRUPROJECT items 1 to 10 (located under Project menu)
CONST IDM_ADDFILETOPROJECT = 6100    ' 6100 to 6199 Popup menu will show list of open projects to choose from. 

dim shared as long SPLITSIZE 
SPLITSIZE = AfxScaleY(6)       ' Width/Height of the scrollbar split buttons for split editing windows

const IDC_DESIGNFRAME   = 100
const IDC_DESIGNFORM    = 101
const IDC_DESIGNTABCTRL = 102
      
Const FILETYPE_UNDEFINED = 0
Const FILETYPE_MAIN      = 1
Const FILETYPE_MODULE    = 2
Const FILETYPE_NORMAL    = 3
Const FILETYPE_RESOURCE  = 4
 
' File encodings
const FILE_ENCODING_ANSI      = 0
const FILE_ENCODING_UTF8_BOM  = 1
const FILE_ENCODING_UTF16_BOM = 2

' User Tool actions (selected, pre/post compile)
const USERTOOL_ACTION_SELECTED    = 0   
const USERTOOL_ACTION_PRECOMPILE  = 1   
const USERTOOL_ACTION_POSTCOMPILE = 2

' The type of autocomplete popup that is active. This is necessary
' because the autocomplete popup list is rebuilt every time a new
' character is entered.
enum
   AUTOCOMPLETE_NONE   = 0
   AUTOCOMPLETE_DIM_AS 
   AUTOCOMPLETE_TYPE
end enum   
   
   
' Directions when determining next closest control pointer
ENUM
   DIRECTION_TOP = 1
   DIRECTION_LEFT
   DIRECTION_RIGHT
   DIRECTION_BOTTOM
end enum   

' Index for scintilla autocomplete raw PNG for SCI_REGISTERRGBAIMAGE
enum
   IMAGE_AUTOC_BASETYPE = 1        ' default variable types. Long, String, Single, etc
   IMAGE_AUTOC_CLASS    = 2        ' class/TYPEs
   IMAGE_AUTOC_METHOD   = 3        ' subs/functions
   IMAGE_AUTOC_PROPERTY = 4        ' variable within a TYPE that can be set directly
end enum

' Colors
enum
   ' Start the enum at 2 because when theme is saved to file the first parse is the
   ' theme id and theme description. The colors start at parse 2.
   CLR_CARET = 2          
   CLR_COMMENTS
   CLR_HIGHLIGHTED     
   CLR_KEYWORD         
   CLR_FOLDMARGIN
   CLR_FOLDSYMBOL      
   CLR_LINENUMBERS     
   CLR_BOOKMARKS       
   CLR_OPERATORS       
   CLR_INDENTGUIDES    
   CLR_PREPROCESSOR    
   CLR_SELECTION       
   CLR_STRINGS         
   CLR_TEXT            
   CLR_WINAPI          
   CLR_WINDOW
end enum


'  Control types   
enum
   CTRL_FORM = 1
   CTRL_POINTER 
   CTRL_LABEL
   CTRL_BUTTON
   CTRL_TEXTBOX
   CTRL_CHECKBOX
   CTRL_OPTION
   CTRL_FRAME
   CTRL_PICTURE
   CTRL_COMBOBOX
   CTRL_LISTBOX
   CTRL_IMAGEBUTTON
   CTRL_HSCROLL
   CTRL_VSCROLL
   CTRL_TIMER
   CTRL_TABCONTROL
   CTRL_RICHEDIT
   CTRL_PROGRESSBAR
   CTRL_UPDOWN
   CTRL_LISTVIEW
   CTRL_TREEVIEW
   CTRL_SLIDER
   CTRL_DATETIMEPICKER
   CTRL_MONTHCALENDAR
   CTRL_WEBBROWSER
   CTRL_CUSTOM
   CTRL_OCX
end enum
   
'  Grab handles (clockwise starting at top left corner)
enum
   GRAB_NOHIT = 0
   GRAB_TOPLEFT 
   GRAB_TOP
   GRAB_TOPRIGHT
   GRAB_RIGHT
   GRAB_BOTTOMRIGHT
   GRAB_BOTTOM
   GRAB_BOTTOMLEFT
   GRAB_LEFT
end enum   


''  Menu message identifiers
Enum
''  Custom messages
   MSG_USER_SETFOCUS = WM_USER + 1
   MSG_USER_SHOWCOLORCOMBOBOXES
   MSG_USER_SETCOLORCUSTOM
   MSG_USER_GETCOLORCUSTOM
   MSG_USER_PROCESS_COMMANDLINE 
   MSG_USER_TOGGLE_TVCHECKBOXES
   MSG_USER_SHOWAUTOCOMPLETE
   MSG_USER_APPENDEQUALSSIGN
   IDM_CREATE_THEME, IDM_IMPORT_THEME, IDM_DELETE_THEME
   IDM_FILE, IDM_FILENEW 
   IDM_FILEOPEN, IDM_FILECLOSE, IDM_FILECLOSEALL, IDM_FILESAVE, IDM_FILESAVEAS
   IDM_FILESAVEALL, IDM_FILESAVEDECLARES
   IDM_MRU, IDM_OPENINCLUDE, IDM_COMMAND, IDM_EXIT
   IDM_EDIT
   IDM_UNDO, IDM_REDO, IDM_CUT, IDM_COPY, IDM_PASTE, IDM_DELETELINE, IDM_DELETE, IDM_INSERTFILE
   IDM_ANSI, IDM_UTF8BOM, IDM_UTF16BOM
   IDM_INDENTBLOCK, IDM_UNINDENTBLOCK, IDM_COMMENTBLOCK, IDM_UNCOMMENTBLOCK
   IDM_DUPLICATELINE, IDM_MOVELINEUP, IDM_MOVELINEDOWN, IDM_TOUPPERCASE, IDM_TOLOWERCASE
   IDM_TOMIXEDCASE, IDM_EOLTOCRLF, IDM_EOLTOCR, IDM_EOLTOLF, IDM_SELECTALL, IDM_SELECTLINE
   IDM_SPACESTOTABS, IDM_TABSTOSPACES
   IDM_SEARCH
   IDM_FIND, IDM_FINDNEXT, IDM_FINDPREV, IDM_FINDINFILES, IDM_REPLACE, IDM_DEFINITION
   IDM_LASTPOSITION
   IDM_GOTO, IDM_BOOKMARKTOGGLE, IDM_BOOKMARKNEXT, IDM_BOOKMARKPREV, IDM_BOOKMARKCLEARALL
   IDM_VIEW
   IDM_FOLDTOGGLE, IDM_FOLDBELOW, IDM_FOLDALL, IDM_UNFOLDALL, IDM_ZOOMIN, IDM_ZOOMOUT
   IDM_FUNCTIONLIST, IDM_VIEWEXPLORER, IDM_VIEWOUTPUT, IDM_RESTOREMAIN
   IDM_PROJECTNEW, IDM_PROJECTMANAGER, IDM_PROJECTOPEN, IDM_MRUPROJECT
   IDM_PROJECTFILESADDTONODE, IDM_REMOVEFILEFROMPROJECT 
   IDM_PROJECTCLOSE, IDM_PROJECTSAVE, IDM_PROJECTSAVEAS, IDM_PROJECTFILESADD, IDM_PROJECTOPTIONS  
   IDM_BUILDEXECUTE, IDM_COMPILE, IDM_REBUILDALL, IDM_RUNEXE, IDM_QUICKRUN, IDM_COMMANDLINE
   IDM_NEWFORM, IDM_VIEWTOOLBOX, IDM_MENUEDITOR
   IDM_TOOLBAREDITOR, IDM_STATUSBAREDITOR, IDM_ALIGNLEFTS
   IDM_ALIGNCENTERS, IDM_ALIGNRIGHTS, IDM_ALIGNTOPS, IDM_ALIGNMIDDLES
   IDM_ALIGNBOTTOMS, IDM_SAMEWIDTHS, IDM_SAMEHEIGHTS, IDM_SAMEBOTH 
   IDM_VSPACEDECREASE, IDM_VSPACEREMOVE, IDM_CENTERHORIZ
   IDM_CENTERVERT, IDM_CENTERBOTH, IDM_LOCKCONTROLS
   IDM_OPTIONS, IDM_COMPILECONFIG, IDM_USERTOOLSDIALOG
   IDM_HELP, IDM_ABOUT
   IDM_SETFILENORMAL, IDM_SETFILEMODULE, IDM_SETFILEMAIN, IDM_SETFILERESOURCE
   IDM_MRUCLEAR, IDM_MRUPROJECTCLEAR, IDM_NEXTTAB, IDM_PREVTAB, IDM_CLOSETAB
   IDM_CONSOLE, IDM_GUI, IDM_RESOURCE   ' used for compiler directives in code
   IDM_32BIT, IDM_64BIT   ' mainly used for identifying compiler associated with a project
   IDM_USERTOOL   ' + n number of user tools
End Enum

'  Global window handle for the main form
Dim Shared As HWnd HWND_FRMMAIN, HWND_FRMMAIN_TOOLBAR, HWND_FRMEXPLORER, HWND_FRMRECENT, HWND_FRMOUTPUT
Dim Shared As HMENU HWND_FRMMAIN_TOPMENU   
dim shared as hwnd HWND_FRMMAIN_COMBOBUILDS 

Dim Shared As HIMAGELIST ghImageListNormal
Dim Shared As Long gidxImageOpened, gidxImageClosed, gidxImageBlank, gidxImageCode
dim shared as BOOLEAN gPreparsing      ' T/F we are preparsing one or more \inc files (idx = -2).
dim shared as BOOLEAN gPreparsingChanges  ' T/F preparsing had changes. Flag to save new databases.
dim shared as BOOLEAN gFileLoading     ' T/F only parse Includes during initial file load.
dim shared as BOOLEAN gProjectLoading  ' T/F to prevent screen flickering/updates during loading of many files.
dim shared as BOOLEAN gCompiling       ' T/F to show spinning mouse cursor.

'  Global window handles for some forms 
Dim Shared As HWnd HWND_FRMOPTIONS, HWND_FRMOPTIONSGENERAL, HWND_FRMOPTIONSEDITOR, HWND_FRMOPTIONSCOLORS
Dim Shared As HWnd HWND_FRMOPTIONSCOMPILER, HWND_FRMOPTIONSLOCAL, HWND_FRMOPTIONSKEYWORDS
Dim Shared As HWnd HWND_FRMFINDREPLACE, HWND_FRMFINDINFILES, HWND_FRMVDTOOLBOX
Dim Shared As HWnd HWND_FRMFNLIST, HWND_FRMCOMPILECONFIG, HWND_FRMUSERTOOLS

'  Global handle to hhctrl.ocx for context sensitive help
Dim Shared As Any Ptr gpHelpLib

dim shared as HICON ghIconGood, ghIconBad, ghIconTick, ghIconNoTick
dim shared as BOOLEAN gReplaceOpen     ' replace dialog is open

dim shared as HACCEL ghAccelUserTools
dim shared as HCURSOR ghCursorNS

' PropertyList divider globals
dim shared as long gPropDivPos
dim shared as boolean gPropDivTracking

' Create a dynamic array that will hold all localization words/phrases. This
' array is resized and loaded using the LoadLocalizationFile function.
ReDim Shared LL(Any) As WString * MAX_PATH

' Define a macro that allows the user to specify the LL array subscript and
' also a descriptive label (that is ignored), and return the LL array value.
#Define L(e,s)  LL(e)

#Define SetFocusScintilla  PostMessage HWND_FRMMAIN, MSG_USER_SETFOCUS, 0, 0
#Define ResizeExplorerWindow  PostMessage HWND_FRMEXPLORER, MSG_USER_OPENEDITORS_RESIZE, 0, 0
#Define SciExec(h, m, w, l) SendMessage(h, m, w, CAST(LPARAM, l))

''
''  Application in-memory database
''
const DB2_VARIABLE    = 1
const DB2_FUNCTION    = 2
const DB2_SUB         = 3
const DB2_PROPERTY    = 4
const DB2_TYPE        = 5
const DB2_TODO        = 6
const DB2_STANDARDDATATYPE = 7    ' long, integer, string, etc...

type DB2_DATA
   deleted      as BOOLEAN = true  ' True/False
   fileName     as CWSTR           ' Filename for #INCLUDE or source file (needed for deleting).
   projectIndex as long            ' Needed for deleting
   id           as LONG            ' See DB_* above for what type of record this is.
   nLineNum     as long            ' Location in the file where found
   ElementName  as string          ' Function name / Variable Name / Type Name
   ElementValue as string          ' Function Calltip / TYPE associated with ElementName variable
   IsPrivate    as Boolean         ' Element is private in a TYPE
   IsTHIS       as Boolean         ' Dynamically set in DereferenceLine so caller can show/hide private elements
   IsWinApi     as Boolean         ' If data item is WinApi related
   IsEnum       as Boolean         ' If TYPE is treated as an ENUM
   TypeExtends  as String          ' The TYPE is extended from this TYPE
END TYPE

type PreparseTimestamps
   wszFilename as CWSTR
   tFiletime AS LONGLONG
END TYPE
dim shared gPreparseTimestamps(any) as PreparseTimestamps


''
''  Save information related to Find/Replace and Find in Files operations
''
Type FINDREPLACE_TYPE
   foundCount          as long 
   txtFind             As String
   txtReplace          As String
   txtFindCombo(10)    As String
   txtFilesCombo(10)   As String
   txtFolderCombo(10)  As String
   txtLastFind         As String
   txtFiles            As String        ' *.*, *.bas, etc (FindInFolder)
   txtFolder           As String        ' start search from this folder (FindInFolder)
   nWholeWord          As Long          ' checkmark for find/replace whole word search
   nMatchCase          As Long          ' match case when searching
   nSearchSubFolders   As Long          ' search sub folders as well (FindInFolder)
End Type
Dim Shared gFind As FINDREPLACE_TYPE
Dim Shared gFindInFiles As FINDREPLACE_TYPE


' Structure that holds all of the user embedded compiler directives
' in the source code. Currently, only the main source file is searched
' for the '#CONSOLE ON|OFF directive but others can be added as needed.
type COMPILE_DIRECTIVES
   DirectiveFlag as long              ' IDM_GUI, IDM_CONSOLE, IDM_RESOURCE
   DirectiveText as String            ' reource filename
END TYPE


' Tools/controls that can be drawn on a Form.
type TOOLBOX_TYPE
   nToolType    as long 
   wszName      as CWSTR
   wszImage     as CWSTR
   wszCursor    as CWSTR
   wszClassName as CWSTR
END TYPE
dim shared gToolBox() as TOOLBOX_TYPE


' Forward reference
Type clsDocument_ As clsDocument

'' Last position in document. Used when "Last Position" menu option is selected.
Type LASTPOSITION_TYPE
   pDoc       As clsDocument_ Ptr
   nFirstLine As Long     ' first visible line on screen
   nPosition  As Long     ' Position in Scintilla document where caret is positioned
End Type
Dim Shared gLastPosition As LASTPOSITION_TYPE


type clsLasso
   private:
      pWindow      as CWindow ptr 
      hWindow      as hwnd
      hWndParent   as hwnd
      ptStart      as POINT
      ptEnd        as POINT
      bLasso       as Boolean
      
   public:
      declare destructor
      declare function IsActive() as Boolean
      declare function GetLassoRect() as RECT
      declare function SetStartPoint( byval x as long, byval y as Long) as Long
      declare function SetEndPoint( byval x as long, byval y as Long) as Long
      declare function GetStartPoint() as POINT
      declare function GetEndPoint() as POINT
      declare function FillAlpha(byval hBmp as HBITMAP) as Boolean
      declare function Show() as Long
      declare function Create( byval hWndParent as HWND ) as boolean
      declare function Destroy() as boolean
END TYPE


type clsProperty
   private:
   public:
      wszPropName  as CWSTR          ' Used for Get/Set of property value
      wszPropValue as CWSTR
END TYPE

type clsEvent
   private:
   public:
      wszEventName as CWSTR          ' Used for Get/Set of event value
      bIsSelected  as Boolean
END TYPE
         

type clsControl
   private:
   
   public:
      hWindow       as hwnd
      ControlType   as long 
      IsSelected    as Boolean
      IsActive      as Boolean
      SuspendLayout as Boolean    ' prevent layout properties from being acted on individually (instead treat as a group)
      rcHandles(1 to 8) as RECT         ' 8 grab handles
      Properties(Any) As clsProperty
      Events(Any) As clsEvent
END TYPE

' Global array to hold cut/copy/paste controls
dim shared gCopyControls(any) as clsControl

Type clsCollection
   Private:
      Dim _arrControls(Any) As clsControl Ptr
      
   Public:
      Declare Property Count() As Long
      Declare Property ItemFirst() As Long
      Declare Property ItemLast() As Long
      Declare Function ItemAt( ByVal nIndex As Long ) As clsControl Ptr 
      'declare function ItemByName( byref wszName as wstring ) as clsControl ptr
      declare function DeselectAllControls() as long
      declare function SelectAllControls() as long
      declare function SelectControl( byval hWndCtrl as hwnd) as long
      declare function SelectedControlsCount() as long
      declare function SetActiveControl( byval hWndCtrl as hwnd) as long
      declare function GetActiveControl() as clsControl ptr
      declare function GetCtrlPtr( byval hWndCtrl as hwnd) as clsControl ptr
      Declare Function Add( ByVal pCtrl As clsControl Ptr ) As Long
      declare function Remove( byval pCtrl as clsControl ptr ) as long
      declare function Debug() as long
      Declare Constructor
      Declare Destructor
End Type


Type clsDocument
   Private:
      ' 2 Scintilla direct pointers to accommodate split editing
      m_pSci(1)             As Any Ptr      
      m_hWndActiveScintilla as hwnd
      
   Public:
      IsDesigner       As BOOLEAN
      IsNewFlag        As BOOLEAN
      
      ' 2 Scintilla controls to accommodate split editing
      ' hWindow(0) is our MAIN control (bottom)
      ' hWindow(1) is our split control (top)
      hWindow(1)       As HWnd   ' Scintilla split edit windows 
      
      ' Visual designer related
      Controls         as clsCollection
      hWndDesigner     as HWnd      ' DesignMain window (switch to this window when in design mode (versus code mode)
      hDesignTabCtrl   as HWnd      ' TabCtrl to switch between Design/Code
      hWndFrame        as hwnd      ' DesignFrame for visual designer windows
      hWndForm         as hwnd      ' DesignForm for visual designer windows
      ErrorOffset      as long      ' Number of lines to account for when error thrown for visual designer code files.
      GrabHit          as long      ' Which grab handle is currently active for sizing action
      ptPrev           as point     ' Used for sizing action
      bSizing          as Boolean   ' Flag that sizing action is in progress
      bMoving          as Boolean   ' Flag that moving action is in progress
      bRegenerateCode  as Boolean   ' Flag to regenerate code when switching to the code tab
      rcSize           as RECT      ' Current size of form/control. Used during sizing action
      pCtrlAction      as clsControl ptr  ' The control that the size/move action is being performed on
      pCtrlCloseLeft   as clsControl ptr  ' closest control to the left of selected control
      pCtrlCloseTop    as clsControl ptr  ' closest control to the top of selected control
      pCtrlCloseRight  as clsControl ptr  ' closest control to the right of selected control
      pCtrlCloseBottom as clsControl ptr  ' closest control to the bottom of selected control
      ptBlueStart      as POINT     ' Start of blue line for snapping
      ptBlueEnd        as POINT     ' End of blue line for snapping
      SnapUpWait       as long      ' #pixels of movement to wait until snap operation ends
      
      ' Code document related
      ProjectIndex     as long      ' array index into gApp.Projects
      ProjectFileType  As Long = FILETYPE_UNDEFINED
      DiskFilename     As WString * MAX_PATH
      DateFileTime     As FILETIME  
      hNodeExplorer    As HTREEITEM
      FileEncoding     as long       
      UserModified     as boolean  ' occurs when user manually changes encoding state so that document will be saved in the new format
      DeletedButKeep   as boolean  ' file no longer exists but keep open anyway
      DocumentBuild    as string   ' specific build configuration to use for this document
      sMatchWord       as string   ' for the incremental autocomplete search
      AutoCompleteType as long     ' AUTOC_DIMAS, AUTOC_TYPE
      AutoCStartPos    as Long
      
      ' Following used for split edit views
      hScrollBar       as hwnd
      ScrInfo          As SCROLLINFO  ' Scrollbar parameters array
      rcSplitButton    as RECT        ' Split gripper
      SplitY           As long        ' Y coordinate of vertical splitter
      
      static NextFileNum as Long
      
      declare property hWndActiveScintilla() as hwnd
      declare property hWndActiveScintilla(byval hWindow as hwnd)
      
      declare function GetActiveScintillaPtr() as any ptr
      Declare Function CreateCodeWindow( ByVal hWndParent As HWnd, ByVal IsNewFile As BOOLEAN, ByVal IsTemplate As BOOLEAN = False, ByVal pwszFile As WString Ptr = 0) As HWnd
      declare Function CreateDesignerWindow( ByVal hWndParent As HWnd) As HWnd   
      Declare Function FindReplace( ByVal strFindText As String, ByVal strReplaceText As String ) As Long
      Declare Function InsertFile() As BOOLEAN
      declare function GenerateDesignerCode() as long
      declare function ParseDesignerString( ByVal hWndParent As HWnd, byref sAllText as CWSTR ) as CWSTR 
      declare function CreateDesignerString() as CWSTR 
      Declare Function SaveFile(ByVal bSaveAs As BOOLEAN = False) As BOOLEAN
      Declare Function ApplyProperties() As Long
      Declare Function GetTextRange( ByVal cpMin As Long, ByVal cpMax As Long) As String
      Declare Function ChangeSelectionCase( ByVal fCase As Long) As Long 
      Declare Function GetCurrentLineNumber() As Long
      Declare Function SelectLine( ByVal nLineNum As Long ) As Long
      Declare Function GetLine( ByVal nLine As Long) As String
      Declare Function GetSelText() As String
      Declare Function GetText() As String
      Declare Function SetText( ByRef sText As Const String ) As Long 
      declare Function AppendText( ByRef sText As Const String ) As Long 
      Declare Function GetSelectedLineRange( ByRef startLine As Long, ByRef endLine As Long, ByRef startPos As Long, ByRef endPos As Long ) As Long 
      Declare Function BlockComment( ByVal flagBlock As BOOLEAN ) As Long
      Declare Function CurrentLineUp() As Long
      Declare Function CurrentLineDown() As Long
      Declare Function MoveCurrentLines( ByVal flagMoveDown As BOOLEAN ) As Long
      Declare Function ToggleBookmark( ByVal nLine As Long ) As Long
      Declare Function NextBookmark() As Long 
      Declare Function PrevBookmark() As Long 
      Declare Function FoldToggle( ByVal nLine As Long ) As Long
      Declare Function FoldAll() As Long
      Declare Function UnFoldAll() As Long
      Declare Function FoldToggleOnwards( ByVal nLine As Long) As Long
      Declare Function ConvertEOL( ByVal nMode As Long) As Long
      Declare Function DisplayStats() As Long
      Declare Function TabsToSpaces() As Long
      Declare Function GetWord( ByVal curPos As Long = -1 ) As String
      Declare Function GetBookmarks() As String
      Declare Function SetBookmarks( ByVal sBookmarks As String ) As Long
      declare Function GetCurrentFunctionName() As string
      declare Function LineDuplicate() As Long
      declare function SetMarkerHighlight() As Long
      declare Function RemoveMarkerHighlight() As Long
      declare Function IsMultiLineSelection() As boolean
      declare Function HasMarkerHighlight() As BOOLEAN
      declare Function FirstMarkerHighlight() As long
      declare Function LastMarkerHighlight() As long
      declare function CompileDirectives( Directives() as COMPILE_DIRECTIVES) as Long
      Declare Constructor
      Declare Destructor
End Type
dim clsDocument.NextFileNum as long = 0

Type clsTopTabCtl
   Private:
      
   Public:
      hWindow   As HWnd
      Declare Function AddTab( ByVal pDoc As clsDocument Ptr ) As Long
      Declare Function GetTabIndexFromFilename( ByVal pwszName As WString Ptr ) As Long
      declare Function GetTabIndexByDocumentPtr( ByVal pDocIn As clsDocument Ptr ) As Long
      Declare Function SetTabIndexByDocumentPtr( ByVal pDocIn As clsDocument Ptr ) As Long
      Declare Function SetFocusTab( ByVal idx As Long ) As Long
      Declare Function GetActiveDocumentPtr() As clsDocument Ptr
      Declare Function GetDocumentPtr( ByVal idx As Long ) As clsDocument Ptr
      Declare Function DisplayScintilla( ByVal idx As Long, ByVal bShow As BOOLEAN ) As Long
      Declare Function SetTabText( ByVal idx As Long ) As Long
      Declare Function NextTab() As Long
      Declare Function PrevTab() As Long
      Declare Function CloseTab() As Long
      
End Type

' Create array to hold unlimited number of UserTool configurations.
type TYPE_TOOLS
   wszDescription   as CWSTR
   wszCommand       as CWSTR
   wszParameters    as CWSTR
   wszKey           as CWSTR
   wszWorkingFolder as CWSTR
   IsCtrl           as long
   IsAlt            as Long
   IsShift          as Long
   IsPromptRun      as Long
   IsMinimized      as Long
   IsWaitFinish     as Long
   IsDisplayMenu    as Long
   Action           as long 
END TYPE

' Create array to hold unlimited number of build configurations.
type TYPE_BUILDS
   id             as string    ' GUID
   wszDescription as CWSTR
   wszOptions     as CWSTR
   IsDefault      as Long      ' 0:False, 1:True
   Is32bit        as Long      ' 0:False, 1:True
   Is64bit        as Long      ' 0:False, 1:True
END TYPE

' Used for Themes.
Type TYPE_COLORS
   nFg As COLORREF
   nBg As COLORREF
   bUseDefaultBg as Long = 0  '  (currently not used) do not use BOOLEAN (don't want the words true/false outputted to ini file)
   bFontBold   as Long = 0
   bFontItalic as Long = 0
   bFontUnderline as long = 0
End Type

type TYPE_THEMES
   id             as string    ' GUID
   wszDescription as CWSTR
   colors(CLR_CARET to CLR_WINDOW) as TYPE_COLORS
END TYPE

Type clsConfig
   Private:
      _ConfigFilename As String 
      
   Public:
      SelectedTheme        as string          ' GUID of selected theme
      idxTheme             as long            ' need global b/c can't GetCurSel from CBN_EDITCHANGE
      Themes(any)          as TYPE_THEMES
      ThemesTemp(any)      as TYPE_THEMES
      Tools(any)           as TYPE_TOOLS
      ToolsTemp(any)       as TYPE_TOOLS  
      Builds(any)          as TYPE_BUILDS  
      BuildsTemp(any)      as TYPE_BUILDS  
      FBKeywords           As String 
      bKeywordsDirty       As BOOLEAN = True       ' not saved to file
      AskExit              As Long = false         ' use Long so True/False string not written to file
      HideToolbar          as long = false
      HideStatusbar        as long = false
      CloseFuncList        As Long = True
      ShowExplorer         As Long = True
      ShowExplorerWidth    As Long = 250
      SyntaxHighlighting   As Long = True
      Codetips             As Long = True
      AutoComplete         As Long = True
      RightEdge            As Long = TRUE
      RightEdgePosition    As CWSTR = "80"
      LeftMargin           As Long = True
      FoldMargin           As Long = false
      AutoIndentation      As Long = True
      ConfineCaret         As Long = true
      LineNumbering        As Long = True
      HighlightCurrentLine As Long = True
      IndentGuides         As Long = True
      TabIndentSpaces      As Long = True
      HideCompile          As Long = False
      MultipleInstances    As Long = True
      CompileAutosave      As Long = True
      UnicodeEncoding      As Long = False
      TabSize              As CWSTR = "3"
      LocalizationFile     As CWSTR = "english.lang"
      EditorFontname       As CWSTR = "Courier New"
      EditorFontCharSet    As CWSTR = "Default"
      EditorFontsize       As CWSTR = "10"
      KeywordCase          As Long = 2  ' "Original Case"
      StartupLeft          As Long = 0
      StartupTop           As Long = 0
      StartupRight         As Long = 0
      StartupBottom        As Long = 0
      StartupMaximized     As Long = False
      FBWINCompiler32      As CWSTR
      FBWINCompiler64      As CWSTR
      AfxPath              As CWSTR
      CompilerSwitches     As CWSTR
      CompilerHelpfile     As CWSTR
      Win32APIHelpfile     As CWSTR
      RunViaCommandWindow  As Long = False
      MRU(9)               As CWSTR
      MRUProject(9)        As CWSTR
      
      Declare Constructor()
      Declare Destructor()
      declare function ImportTheme( byref st as wstring, byval bImportExternal as Boolean = false ) as Long
      Declare Function LoadKeywords() As Long
      Declare Function SaveKeywords() As Long
      Declare Function SaveToFile() As Long
      Declare Function LoadFromFile() As Long
      declare Function InitializeToolBox() as Long
      Declare Function ProjectSaveToFile() As BOOLEAN    
      declare Function ProjectLoadFromFile( byref wzFile as WSTRING) As BOOLEAN    
      declare Function LoadCodetips( ByRef sFilename As String ) as boolean
      declare Function LoadCodetipsWinAPI( ByRef sFilename As String ) as boolean
End Type


type clsProject
   private:
      m_arrDocuments(Any) As clsDocument Ptr
   
   public:
      InUse                as boolean     ' this spot in the Projects array is in use
      ProjectName          As CWSTR
      ProjectFilename      As CWSTR
      ProjectBuild         As string      ' default build configuration for the project (GUID)
      ProjectOther32       As CWSTR       ' compile flags 32 bit compiler
      ProjectOther64       As CWSTR       ' compile flags 64 bit compiler
      ProjectManifest      as long        ' T/F create a generic resource and manifest file
      hExplorerRootNode    As HTREEITEM
      ProjectNotes         as CWSTR       ' Save/Load from project file
      ProjectCommandLine   as CWSTR
      
      Declare Function AddDocument( ByVal pDoc As clsDocument Ptr ) As Long
      declare Function RemoveDocumentFromArray( ByVal idx As Long) As Long
      Declare Function RemoveDocument( ByVal pDoc As clsDocument Ptr ) As Long
      declare Function RemoveAllDocuments() As Long
      Declare Function GetDocumentCount() As Long
      Declare Function GetDocumentPtr( ByVal idx As Long ) As clsDocument Ptr
      Declare Function GetDocumentPtrByFilename( ByVal pswzName As WString Ptr ) As clsDocument Ptr
      Declare Function GetMainDocumentPtr() As clsDocument Ptr
      Declare Function GetResourceDocumentPtr() As clsDocument Ptr
      Declare Function SaveProject( ByVal bSaveAs As BOOLEAN = False ) As BOOLEAN
      Declare Function ProjectSetFileType( ByVal pDoc As clsDocument Ptr, ByVal nFileType As Long ) As LRESULT
      declare Function GetProjectCompiler() As long
      Declare Function Debug() As Long
END TYPE

Type clsApp
   Private: 
      m_arrQuickRun(Any) As WSTRING * MAX_PATH
      
   Public:
      IsWindowIncludes        as Boolean     ' T/F that Windows includes have already been loaded
      SuppressNotify          As BOOLEAN     ' temporarily suppress Scintilla notifications
      hRecentFilesRootNode    As HTREEITEM
      hRecentProjectsRootNode As HTREEITEM
      bDragTabActive          as BOOLEAN     ' A tab in the top tabcontrol is being dragged
      bDragActive             As BOOLEAN     ' splitter drag is currently active 
      hWndPanel               As HWND        ' the panel being split left/right or up/down
      IncludeFilename         As CWSTR
      NonProjectNotes         as CWSTR       ' Save/load from config file
      IsNewProjectFlag        As BOOLEAN
      ProjectOverrideIndex    as long        ' Do action to specific project rather than the active project
      
      ' Handles for images used in scintilla popup autocomplete
      pImageAutocompleteBaseType as any ptr
      pImageAutocompleteClass    as any ptr
      pImageAutocompleteMethod   as any ptr
      pImageAutocompleteProperty as any ptr
      hWndAutoCListBox           as hwnd          ' handle of popup autocomplete ListBox window
      pWindowAutoC               as CWindow       ' Our secondary popup info window
      hWndAutoCTooltip           as hwnd          ' the label control on the secondary info window
      AutoCTipsID(any)           as String        ' the keyword in the AutoC list used to find additional popup info
      AutoCTipsData(any)         as DB2_DATA ptr  ' the pData into the DB2_DATA database
      
      
      Projects(any) as clsProject 
      
      declare function GetProjectCount() as LONG
      declare Function GetActiveProjectIndex() As long
      declare Function SetActiveProject( byval hNode As HTREEITEM ) As long
      declare Function EnsureDefaultActiveProject(byval hNode as HTREEITEM = 0) As long
      declare Function RemoveAllSelectionAttributes() As long
      declare Function GetProjectIndexByFilename( byref sFilename as wstring ) As long
      declare Function GetDocumentPtrByWindow( byval hWindow as hwnd) As clsDocument ptr
         
      Declare Function IsProjectActive() As boolean
      declare function GetNewProjectIndex() As Long
      
      declare function AddQuickRunEXE( byref sFilename as wstring ) as Long
      declare function CheckQuickRunEXE() as Long
      
      Declare Constructor()
      Declare Destructor()
      
End Type

'  Internal flags for the parser routines
enum
   ACTION_NONE
   ACTION_PARSEFUNCTION     
   ACTION_PARSESUB     
   ACTION_PARSEPROPERTY     
   ACTION_PARSETYPE
   ACTION_PARSEENUM
   ACTION_PARSECOMMENT
   ACTION_PARSEPARAMETERS   ' function parameters
end enum

type clsParser
   public:
      fileName      as CWSTR
      action        as Long        ' current active action
      lineNum       as long
      idxProject    as Long
      st            as String      ' full line, comments and double spaces removed
      st_ucase      as String      ' full line (UCASE), comments and double spaces removed
      funcName      as string      ' Name of function being parsed
      funcParams    as string      ' Parameters to a function identifed in sFuncName
      funcLineNum   as long        ' The line where the sub/function started. This is different than lineNum.
      typeName      as string      ' Name of TYPE being parsed
      typeElements  as string      ' Elements of the TYPE identified in sTypeName
      typeAlias     as string      ' Same as typeName unless ALIAS was detected
      varName       as string      ' Name of variable
      varType       as string      ' Type of variable identified in sVarName
      bIsAlias      as boolean     ' T/F if the stored TYPE name is an ALIAS for another TYPE.
      todoText      as string      ' text description associated with a TODO item
      bInTypePublic as Boolean     ' PRIVATE/PUBLIC sections of a TYPE
      Description   as string      ' Text from '#Description: tag
      IsWinApi      as boolean     ' If windows.bi was found then database items added
      IsEnum        as Boolean     ' The TYPE is treated as an ENUM
      TypeExtends   as String      ' The TYPE is extended from this TYPE
      
      declare function parseToDoItem(byval sText as string) as boolean
      declare function IsMultilineComment(byval sLine as String) as boolean
      declare function NormalizeLine() as boolean
      declare function InspectLine() as boolean
      declare function parseVariableDefinitions() as boolean
      declare function parseTYPE() as boolean
      declare function parseENUM() as boolean
      declare function IsStandardDataType( byref sVarType as string ) as Boolean
END TYPE   

TYPE clsDB2
   private:
      m_arrData(any) as DB2_DATA
      m_index as LONG
      
   public:  
      declare function dbAdd( byref parser as clsParser, byref id as long) as DB2_DATA ptr
      declare function dbDelete( byref wszFilename as WString) as long
      declare function dbDeleteByProject( byval idx as long ) as boolean
      declare function dbDeleteWinAPI() as boolean
      declare function dbRewind() as LONG
      declare function dbGetNext() as DB2_DATA ptr
      declare function dbSeek( byval sLookFor as string, byval Action as long ) as DB2_DATA ptr
      declare function dbFindFunction( byref sFunctionName as string ) as DB2_DATA ptr
      declare function dbFindSub( byref sFunctionName as string ) as DB2_DATA ptr
      declare function dbFindProperty( byref sFunctionName as string ) as DB2_DATA ptr
      declare function dbFindVariable( byref sVariableName as string ) as DB2_DATA ptr
      declare function dbFindTYPE( byref sTypeName as string ) as DB2_DATA ptr
      declare function dbFilenameExists( byref sFilename as CWSTR ) as boolean
      declare function dbDebug() as long
      declare constructor
END TYPE

'  Global classes
Dim Shared gApp As clsApp
Dim Shared gConfig As clsConfig
Dim Shared gTTabCtl As clsTopTabCtl



