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


' ========================================================================================
' Process WM_COMMAND message for window/dialog: frmOptionsCompiler
' ========================================================================================
Function frmOptionsCompiler_OnCommand(ByVal HWnd As HWnd, ByVal id As Long, ByVal hwndCtl As HWnd, ByVal codeNotify As UINT) As LRESULT

   Select Case id

      Case IDC_FRMOPTIONSCOMPILER_CMDFBWIN32, IDC_FRMOPTIONSCOMPILER_CMDFBWIN64, _
           IDC_FRMOPTIONSCOMPILER_CMDFBHELPFILE, IDC_FRMOPTIONSCOMPILER_CMDAPIHELPPATH

         If codeNotify = BN_CLICKED Then
            ' Display the Open File Dialog
            Dim pwszName As WString Ptr = AfxIFileOpenDialogW(HWnd, id)
            If pwszName Then
               If id = IDC_FRMOPTIONSCOMPILER_CMDFBWIN32 Then SetWindowTextW( GetDlgItem(HWnd, IDC_FRMOPTIONSCOMPILER_TXTFBWIN32), pwszName )
               If id = IDC_FRMOPTIONSCOMPILER_CMDFBWIN64 Then SetWindowTextW( GetDlgItem(HWnd, IDC_FRMOPTIONSCOMPILER_TXTFBWIN64), pwszName )
               If id = IDC_FRMOPTIONSCOMPILER_CMDFBHELPFILE Then SetWindowTextW( GetDlgItem(HWnd, IDC_FRMOPTIONSCOMPILER_TXTFBHELPFILE), pwszName )
               If id = IDC_FRMOPTIONSCOMPILER_CMDAPIHELPPATH Then SetWindowTextW( GetDlgItem(HWnd, IDC_FRMOPTIONSCOMPILER_TXTWIN32HELPPATH), pwszName )
               CoTaskMemFree pwszName
            End If
            Exit Function
         End If

      Case IDC_FRMOPTIONSCOMPILER_CMDAFXPATH
         If codeNotify = BN_CLICKED Then
            dim as CWSTR cwsFolder = AfxBrowseForFolder(HWND, L(349,"WinFBX Library Path:"), curdir)
            if len(cwsFolder) THEN
               AfxSetWindowText( GetDlgItem(HWnd, IDC_FRMOPTIONSCOMPILER_TXTAFXPATH), cwsFolder)
            END IF
         end if
   End Select

   Function = 0
End Function


' ========================================================================================
' frmOptionsCompiler Window procedure
' ========================================================================================
Function frmOptionsCompiler_WndProc( ByVal HWnd   As HWnd, _
                                     ByVal uMsg   As UINT, _
                                     ByVal wParam As WPARAM, _
                                     ByVal lParam As LPARAM _
                                     ) As LRESULT

   Select Case uMsg
      HANDLE_MSG (HWnd, WM_COMMAND, frmOptionsCompiler_OnCommand)
   End Select

   ' for messages that we don't deal with
   Function = DefWindowProcW(HWnd, uMsg, wParam, lParam)

End Function


' ========================================================================================
' frmOptionsCompiler_Show
' ========================================================================================
Function frmOptionsCompiler_Show( ByVal hWndParent As HWnd, _
                                  ByVal nCmdShow   As Long = 0 _
                                  ) As Long

   '  Create the main window and child controls
   Dim pWindow As CWindow Ptr = New CWindow
   pWindow->DPI = AfxCWindowPtr(hwndParent)->DPI
   
   HWND_FRMOPTIONSCOMPILER = pWindow->Create( hWndParent, "", @frmOptionsCompiler_WndProc, 0, 0, 0, 0, _
        WS_CHILD, WS_EX_CONTROLPARENT Or WS_EX_LEFT Or WS_EX_LTRREADING Or WS_EX_RIGHTSCROLLBAR)
   ' Height and width of this child form is set in frmOptions_OnNotify when the treeview option is selected.
   
   pWindow->AddControl("LABEL", , IDC_FRMOPTIONSCOMPILER_LBLFBC32, L(154,"FBC 32bit Compiler:"), 0, 2, 375, 15, _
        WS_CHILD Or WS_VISIBLE Or SS_LEFT Or SS_NOTIFY, _
        WS_EX_LEFT Or WS_EX_LTRREADING)
   pWindow->AddControl("TEXTBOX", , IDC_FRMOPTIONSCOMPILER_TXTFBWIN32, "", 0, 20, 356, 20, _
        WS_CHILD Or WS_VISIBLE Or WS_TABSTOP Or ES_LEFT Or ES_AUTOHSCROLL, _
        WS_EX_CLIENTEDGE Or WS_EX_LEFT Or WS_EX_LTRREADING Or WS_EX_RIGHTSCROLLBAR)
   pWindow->AddControl("BUTTON", , IDC_FRMOPTIONSCOMPILER_CMDFBWIN32, "...", 362, 20, 24, 20, _
        WS_CHILD Or WS_VISIBLE Or WS_TABSTOP Or BS_TEXT Or BS_PUSHBUTTON Or BS_NOTIFY Or BS_CENTER Or BS_VCENTER, _
        WS_EX_LEFT Or WS_EX_LTRREADING)

   pWindow->AddControl("LABEL", , IDC_FRMOPTIONSCOMPILER_LBLFBC64, L(156,"FBC 64bit Compiler:"), 0, 50, 375, 15, _
        WS_CHILD Or WS_VISIBLE Or SS_LEFT Or SS_NOTIFY, _
        WS_EX_LEFT Or WS_EX_LTRREADING)
   pWindow->AddControl("TEXTBOX", , IDC_FRMOPTIONSCOMPILER_TXTFBWIN64, "", 0, 68, 356, 20, _
        WS_CHILD Or WS_VISIBLE Or WS_TABSTOP Or ES_LEFT Or ES_AUTOHSCROLL, _
        WS_EX_CLIENTEDGE Or WS_EX_LEFT Or WS_EX_LTRREADING Or WS_EX_RIGHTSCROLLBAR)
   pWindow->AddControl("BUTTON", , IDC_FRMOPTIONSCOMPILER_CMDFBWIN64, "...", 362, 68, 24, 20, _
        WS_CHILD Or WS_VISIBLE Or WS_TABSTOP Or BS_TEXT Or BS_PUSHBUTTON Or BS_NOTIFY Or BS_CENTER Or BS_VCENTER, _
        WS_EX_LEFT Or WS_EX_LTRREADING)

   pWindow->AddControl("LABEL", , IDC_FRMOPTIONSCOMPILER_LBLAFXPATH, L(349,"WinFBX Library Path:"), 0, 98, 375, 15, _
        WS_CHILD Or WS_VISIBLE Or SS_LEFT Or SS_NOTIFY, _
        WS_EX_LEFT Or WS_EX_LTRREADING)
   pWindow->AddControl("TEXTBOX", , IDC_FRMOPTIONSCOMPILER_TXTAFXPATH, "", 0, 116, 356, 20, _
        WS_CHILD Or WS_VISIBLE Or WS_TABSTOP Or ES_LEFT Or ES_AUTOHSCROLL, _
        WS_EX_CLIENTEDGE Or WS_EX_LEFT Or WS_EX_LTRREADING Or WS_EX_RIGHTSCROLLBAR)
   pWindow->AddControl("BUTTON", , IDC_FRMOPTIONSCOMPILER_CMDAFXPATH, "...", 362, 116, 24, 20, _
        WS_CHILD Or WS_VISIBLE Or WS_TABSTOP Or BS_TEXT Or BS_PUSHBUTTON Or BS_NOTIFY Or BS_CENTER Or BS_VCENTER, _
        WS_EX_LEFT Or WS_EX_LTRREADING)

'112 + 34 = 146
   pWindow->AddControl("LABEL", , IDC_FRMOPTIONSCOMPILER_LBLSWITCHES, L(153,"Additional compiler option switches (optional):"), 0, 160, 375, 14, _
        WS_CHILD Or WS_VISIBLE Or SS_LEFT Or SS_NOTIFY, _
        WS_EX_LEFT Or WS_EX_LTRREADING)
   pWindow->AddControl("TEXTBOX", , IDC_FRMOPTIONSCOMPILER_TXTFBSWITCHES, "", 0, 178, 356, 20, _
        WS_CHILD Or WS_VISIBLE Or WS_TABSTOP Or ES_LEFT Or ES_AUTOHSCROLL, _
        WS_EX_CLIENTEDGE Or WS_EX_LEFT Or WS_EX_LTRREADING Or WS_EX_RIGHTSCROLLBAR)
   
   
   pWindow->AddControl("LABEL", , IDC_FRMOPTIONSCOMPILER_LBLFBHELP, L(155,"FreeBASIC Help file (*.chm):"), 0, 164+48, 375, 14, _
        WS_CHILD Or WS_VISIBLE Or SS_LEFT Or SS_NOTIFY, _
        WS_EX_LEFT Or WS_EX_LTRREADING)
   pWindow->AddControl("TEXTBOX", , IDC_FRMOPTIONSCOMPILER_TXTFBHELPFILE, "", 0, 182+48, 356, 20, _
        WS_CHILD Or WS_VISIBLE Or WS_TABSTOP Or ES_LEFT Or ES_AUTOHSCROLL, _
        WS_EX_CLIENTEDGE Or WS_EX_LEFT Or WS_EX_LTRREADING Or WS_EX_RIGHTSCROLLBAR)
   pWindow->AddControl("BUTTON", , IDC_FRMOPTIONSCOMPILER_CMDFBHELPFILE, "...", 362, 182+48, 24, 20, _
        WS_CHILD Or WS_VISIBLE Or WS_TABSTOP Or BS_TEXT Or BS_PUSHBUTTON Or BS_NOTIFY Or BS_CENTER Or BS_VCENTER, _
        WS_EX_LEFT Or WS_EX_LTRREADING)
   
   pWindow->AddControl("LABEL", , IDC_FRMOPTIONSCOMPILER_LBLAPIHELP, L(157,"WinAPI Help file (Win32_fb.chm):"), 0, 219+48, 375, 16, _
        WS_CHILD Or WS_VISIBLE Or SS_LEFT Or SS_NOTIFY, _
        WS_EX_LEFT Or WS_EX_LTRREADING)
   pWindow->AddControl("TEXTBOX", , IDC_FRMOPTIONSCOMPILER_TXTWIN32HELPPATH, "", 0, 239+48, 356, 20, _
        WS_CHILD Or WS_VISIBLE Or WS_TABSTOP Or ES_LEFT Or ES_AUTOHSCROLL, _
        WS_EX_CLIENTEDGE Or WS_EX_LEFT Or WS_EX_LTRREADING Or WS_EX_RIGHTSCROLLBAR)
   pWindow->AddControl("BUTTON", , IDC_FRMOPTIONSCOMPILER_CMDAPIHELPPATH, "...", 362, 239+48, 24, 20, _
        WS_CHILD Or WS_VISIBLE Or WS_TABSTOP Or BS_TEXT Or BS_PUSHBUTTON Or BS_NOTIFY Or BS_CENTER Or BS_VCENTER, _
        WS_EX_LEFT Or WS_EX_LTRREADING)

   pWindow->AddControl("CHECKBOX", , IDC_FRMOPTIONSCOMPILER_CHKRUNVIACOMMANDWINDOW, _
        L(273,"Run compiled programs using command window"), 0, 274+48, 400, 20, _
        WS_CHILD Or WS_VISIBLE Or WS_TABSTOP Or BS_TEXT Or BS_NOTIFY Or BS_AUTOCHECKBOX Or BS_LEFT Or BS_VCENTER, _
        WS_EX_LEFT Or WS_EX_LTRREADING)
   
   gConfig.FBWINCompiler32  = ProcessFromCurdrive(gConfig.FBWINCompiler32)
   gConfig.FBWINCompiler64  = ProcessFromCurdrive(gConfig.FBWINCompiler64)
   gConfig.AfxPath          = ProcessFromCurdrive(gConfig.AfxPath)
   gConfig.CompilerHelpfile = ProcessFromCurdrive(gConfig.CompilerHelpfile)
   gConfig.Win32APIHelpfile = ProcessFromCurdrive(gConfig.Win32APIHelpfile)

   Dim As HWnd HWnd = HWND_FRMOPTIONSCOMPILER
   SetWindowTextW GetDlgItem( HWnd, IDC_FRMOPTIONSCOMPILER_TXTFBWIN32),       gConfig.FBWINCompiler32
   SetWindowTextW GetDlgItem( HWnd, IDC_FRMOPTIONSCOMPILER_TXTFBWIN64),       gConfig.FBWINCompiler64
   SetWindowTextW GetDlgItem( HWnd, IDC_FRMOPTIONSCOMPILER_TXTAFXPATH),       gConfig.AfxPath
   SetWindowTextW GetDlgItem( HWnd, IDC_FRMOPTIONSCOMPILER_TXTFBSWITCHES),    gConfig.CompilerSwitches
   SetWindowTextW GetDlgItem( HWnd, IDC_FRMOPTIONSCOMPILER_TXTFBHELPFILE),    gConfig.CompilerHelpfile
   SetWindowTextW GetDlgItem( HWnd, IDC_FRMOPTIONSCOMPILER_TXTWIN32HELPPATH), gConfig.Win32APIHelpfile
   Button_SetCheck( GetDlgItem( HWnd, IDC_FRMOPTIONSCOMPILER_CHKRUNVIACOMMANDWINDOW),  gConfig.RunViaCommandWindow)

   Function = 0 
End Function
