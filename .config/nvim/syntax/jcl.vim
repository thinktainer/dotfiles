" JCL syntax file
" Language:	Equinox Method Language ("JCL"?)
" Maintainer:	Charlie Hornberger <chornberger@utilitywarehouse.co.uk>

" Based on vb.vim (copy/paste/tweak)

if version < 600
	syntax clear
elseif exists("b:current_syntax")
	finish
endif

" JCL is case insensitive
syn case ignore

syn keyword jclConditional If Then ElseIf Else Select Case Switch EndIf

syn keyword jclOperator AddressOf And ByRef ByVal Eqv Imp In
syn keyword jclOperator Is Like Mod Not Or To Xor

syn match jclOperator "[()+.,\-/*=&]"
syn match jclOperator "[<>]=\="
syn match jclOperator "<>"
syn match jclOperator "\s\+_$"

syn keyword jclBoolean  True False
syn keyword jclConst Null Nothing

syn keyword jclRepeat Do For ForEach Loop Next Repeat
syn keyword jclRepeat Step To Until Wend While

syn keyword jclEvents AccessKeyPress Activate ActiveRowChanged
syn keyword jclEvents AfterAddFile AfterChangeFileName AfterCloseFile
syn keyword jclEvents AfterColEdit AfterColUpdate AfterDelete
syn keyword jclEvents AfterInsert AfterLabelEdit AfterRemoveFile
syn keyword jclEvents AfterUpdate AfterWriteFile AmbientChanged
syn keyword jclEvents ApplyChanges Associate AsyncProgress
syn keyword jclEvents AsyncReadComplete AsyncReadProgress AxisActivated
syn keyword jclEvents AxisLabelActivated AxisLabelSelected
syn keyword jclEvents AxisLabelUpdated AxisSelected AxisTitleActivated
syn keyword jclEvents AxisTitleSelected AxisTitleUpdated AxisUpdated
syn keyword jclEvents BeforeClick BeforeColEdit BeforeColUpdate
syn keyword jclEvents BeforeConnect BeforeDelete BeforeInsert
syn keyword jclEvents BeforeLabelEdit BeforeLoadFile BeforeUpdate
syn keyword jclEvents BeginRequest BeginTrans ButtonClick
syn keyword jclEvents ButtonCompleted ButtonDropDown ButtonGotFocus
syn keyword jclEvents ButtonLostFocus CallbackKeyDown Change Changed
syn keyword jclEvents ChartActivated ChartSelected ChartUpdated Click
syn keyword jclEvents Close CloseQuery CloseUp ColEdit ColResize
syn keyword jclEvents Collapse ColumnClick CommitTrans Compare
syn keyword jclEvents ConfigChageCancelled ConfigChanged
syn keyword jclEvents ConfigChangedCancelled Connect ConnectionRequest
syn keyword jclEvents CurrentRecordChanged DECommandAdded
syn keyword jclEvents DECommandPropertyChanged DECommandRemoved
syn keyword jclEvents DEConnectionAdded DEConnectionPropertyChanged
syn keyword jclEvents DEConnectionRemoved DataArrival DataChanged
syn keyword jclEvents DataUpdated DateClicked DblClick Deactivate
syn keyword jclEvents DevModeChange DeviceArrival DeviceOtherEvent
syn keyword jclEvents DeviceQueryRemove DeviceQueryRemoveFailed
syn keyword jclEvents DeviceRemoveComplete DeviceRemovePending
syn keyword jclEvents Disconnect DisplayChanged Dissociate
syn keyword jclEvents DoGetNewFileName Done DonePainting DownClick
syn keyword jclEvents DragDrop DragOver DropDown EditProperty EditQuery
syn keyword jclEvents EndRequest EnterCell EnterFocus ExitFocus Expand
syn keyword jclEvents FontChanged FootnoteActivated FootnoteSelected
syn keyword jclEvents FootnoteUpdated Format FormatSize GotFocus
syn keyword jclEvents HeadClick HeightChanged Hide InfoMessage
syn keyword jclEvents IniProperties InitProperties Initialize
syn keyword jclEvents ItemActivated ItemAdded ItemCheck ItemClick
syn keyword jclEvents ItemReloaded ItemRemoved ItemRenamed
syn keyword jclEvents ItemSeletected KeyDown KeyPress KeyUp LeaveCell
syn keyword jclEvents LegendActivated LegendSelected LegendUpdated
syn keyword jclEvents LinkClose LinkError LinkExecute LinkNotify
syn keyword jclEvents LinkOpen Load LostFocus MouseDown MouseMove
syn keyword jclEvents MouseUp NodeCheck NodeClick OLECompleteDrag
syn keyword jclEvents OLEDragDrop OLEDragOver OLEGiveFeedback OLESetData
syn keyword jclEvents OLEStartDrag ObjectEvent ObjectMove OnAddNew
syn keyword jclEvents OnComm Paint PanelClick PanelDblClick PathChange
syn keyword jclEvents PatternChange PlotActivated PlotSelected
syn keyword jclEvents PlotUpdated PointActivated PointLabelActivated
syn keyword jclEvents PointLabelSelected PointLabelUpdated PointSelected
syn keyword jclEvents PointUpdated PowerQuerySuspend PowerResume
syn keyword jclEvents PowerStatusChanged PowerSuspend ProcessTag
syn keyword jclEvents ProcessingTimeout QueryChangeConfig QueryClose
syn keyword jclEvents QueryComplete QueryCompleted QueryTimeout
syn keyword jclEvents QueryUnload ReadProperties RepeatedControlLoaded
syn keyword jclEvents RepeatedControlUnloaded Reposition
syn keyword jclEvents RequestChangeFileName RequestWriteFile Resize
syn keyword jclEvents ResultsChanged RetainedProject RollbackTrans
syn keyword jclEvents RowColChange RowCurrencyChange RowResize
syn keyword jclEvents RowStatusChanged Scroll SelChange SelectionChanged
syn keyword jclEvents SendComplete SendProgress SeriesActivated
syn keyword jclEvents SeriesSelected SeriesUpdated SettingChanged Show
syn keyword jclEvents SplitChange Start StateChanged StatusUpdate
syn keyword jclEvents SysColorsChanged Terminate TimeChanged Timer
syn keyword jclEvents TitleActivated TitleSelected TitleUpdated
syn keyword jclEvents UnboundAddData UnboundDeleteRow
syn keyword jclEvents UnboundGetRelativeBookmark UnboundReadData
syn keyword jclEvents UnboundWriteData Unformat Unload UpClick Updated
syn keyword jclEvents UserEvent Validate ValidationError
syn keyword jclEvents VisibleRecordChanged WillAssociate WillChangeData
syn keyword jclEvents WillDissociate WillExecute WillUpdateRows
syn keyword jclEvents WriteProperties


syn keyword jclFunction Abs Array Asc AscB AscW Atn Avg BOF CBool CByte
syn keyword jclFunction CCur CDate CDbl CInt CLng CSng CStr CVDate CVErr
syn keyword jclFunction CVar CallByName Cdec Choose Chr ChrB ChrW Command
syn keyword jclFunction Cos Count CreateObject CurDir DDB Date DateAdd
syn keyword jclFunction DateDiff DatePart DateSerial DateValue Day Dir
syn keyword jclFunction DoEvents EOF Environ Error Exp FV FileAttr
syn keyword jclFunction FileDateTime FileLen FilterFix Fix Format
syn keyword jclFunction FormatCurrency FormatDateTime FormatNumber
syn keyword jclFunction FormatPercent FreeFile GetAllStrings GetAttr
syn keyword jclFunction GetAutoServerSettings GetObject GetSetting Hex
syn keyword jclFunction Hour IIf IMEStatus IPmt InStr Input InputB
syn keyword jclFunction InputBox InstrB Int IsArray IsDate IsEmpty IsError
syn keyword jclFunction IsMissing IsNull IsNumeric IsObject Join LBound
syn keyword jclFunction LCase LOF LTrim Left LeftB Len LenB LoadPicture
syn keyword jclFunction LoadResData LoadResPicture LoadResString Loc Log
syn keyword jclFunction MIRR Max Mid MidB Min Minute Month MonthName
syn keyword jclFunction MsgBox NPV NPer Now Oct PPmt PV Partition Pmt
syn keyword jclFunction QBColor RGB RTrim Rate Replace Right RightB Rnd
syn keyword jclFunction Round SLN SYD Second Seek Sgn Shell Sin Space Spc
syn keyword jclFunction Split Sqr StDev StDevP Str StrComp StrConv
syn keyword jclFunction StrReverse String Sum Tab Tan Time
syn keyword jclFunction TimeSerial TimeValue Timer Trim TypeName UBound
syn keyword jclFunction UCase Val Var VarP VarType Weekday WeekdayName
syn keyword jclFunction Year
syn keyword jclFunction Today
syn keyword jclFunction FindRecord NextRecord InsertRecord ReplaceRecord
syn keyword jclFunction SetIndex MarkIndex BlankIndex

syn keyword jclMethods AboutBox Accept Activate Add AddCustom AddFile
syn keyword jclMethods AddFromFile AddFromGuid AddFromString
syn keyword jclMethods AddFromTemplate AddItem AddNew AddToAddInToolbar
syn keyword jclMethods AddToolboxProgID Append AppendAppendChunk
syn keyword jclMethods AppendChunk Arrange Assert AsyncRead BatchUpdate
syn keyword jclMethods BeginQueryEdit BeginTrans Bind BuildPath
syn keyword jclMethods CanPropertyChange Cancel CancelAsyncRead
syn keyword jclMethods CancelBatch CancelUpdate CaptureImage CellText
syn keyword jclMethods CellValue Circle Clear ClearFields ClearSel
syn keyword jclMethods ClearSelCols ClearStructure Clone Close Cls
syn keyword jclMethods ColContaining CollapseAll ColumnSize CommitTrans
syn keyword jclMethods CompactDatabase Compose Connect Copy CopyFile
syn keyword jclMethods CopyFolder CopyQueryDef Count CreateDatabase
syn keyword jclMethods CreateDragImage CreateEmbed CreateField
syn keyword jclMethods CreateFolder CreateGroup CreateIndex CreateLink
syn keyword jclMethods CreatePreparedStatement CreatePropery CreateQuery
syn keyword jclMethods CreateQueryDef CreateRelation CreateTableDef
syn keyword jclMethods CreateTextFile CreateToolWindow CreateUser
syn keyword jclMethods CreateWorkspace Customize Cut Delete
syn keyword jclMethods DeleteColumnLabels DeleteColumns DeleteFile
syn keyword jclMethods DeleteFolder DeleteLines DeleteRowLabels
syn keyword jclMethods DeleteRows DeselectAll DesignerWindow DoVerb Drag
syn keyword jclMethods Draw DriveExists Edit EditCopy EditPaste EndDoc
syn keyword jclMethods EnsureVisible EstablishConnection Execute Exists
syn keyword jclMethods Expand Export ExportReport ExtractIcon Fetch
syn keyword jclMethods FetchVerbs FileExists Files FillCache Find
syn keyword jclMethods FindFirst FindItem FindLast FindNext FindPrevious
syn keyword jclMethods FolderExists Forward GetAbsolutePathName
syn keyword jclMethods GetBaseName GetBookmark GetChunk GetClipString
syn keyword jclMethods GetData GetDrive GetDriveName GetFile GetFileName
syn keyword jclMethods GetFirstVisible GetFolder GetFormat GetHeader
syn keyword jclMethods GetLineFromChar GetNumTicks GetParentFolderName
syn keyword jclMethods GetRows GetSelectedPart GetSelection
syn keyword jclMethods GetSpecialFolder GetTempName GetText
syn keyword jclMethods GetVisibleCount GoBack GoForward Hide HitTest
syn keyword jclMethods HoldFields Idle Import InitializeLabels Insert
syn keyword jclMethods InsertColumnLabels InsertColumns InsertFile
syn keyword jclMethods InsertLines InsertObjDlg InsertRowLabels
syn keyword jclMethods InsertRows Item Keys KillDoc Layout Line Lines
syn keyword jclMethods LinkExecute LinkPoke LinkRequest LinkSend Listen
syn keyword jclMethods LoadFile LoadResData LoadResPicture LoadResString
syn keyword jclMethods LogEvent MakeCompileFile MakeCompiledFile
syn keyword jclMethods MakeReplica MoreResults Move MoveData MoveFile
syn keyword jclMethods MoveFirst MoveFolder MoveLast MoveNext
syn keyword jclMethods MovePrevious NavigateTo NewPage NewPassword
syn keyword jclMethods NextRecordset OLEDrag OnAddinsUpdate OnConnection
syn keyword jclMethods OnDisconnection OnStartupComplete Open
syn keyword jclMethods OpenAsTextStream OpenConnection OpenDatabase
syn keyword jclMethods OpenQueryDef OpenRecordset OpenResultset OpenURL
syn keyword jclMethods Overlay PSet PaintPicture PastSpecialDlg Paste
syn keyword jclMethods PeekData Play Point PopulatePartial PopupMenu
syn keyword jclMethods Print PrintForm PrintReport PropertyChanged Quit
syn keyword jclMethods Raise RandomDataFill RandomFillColumns
syn keyword jclMethods RandomFillRows ReFill Read ReadAll ReadFromFile
syn keyword jclMethods ReadLine ReadProperty Rebind Refresh RefreshLink
syn keyword jclMethods RegisterDatabase ReleaseInstance Reload Remove
syn keyword jclMethods RemoveAddInFromToolbar RemoveAll RemoveItem Render
syn keyword jclMethods RepairDatabase ReplaceLine Reply ReplyAll Requery
syn keyword jclMethods ResetCustom ResetCustomLabel ResolveName
syn keyword jclMethods RestoreToolbar Resync Rollback RollbackTrans
syn keyword jclMethods RowBookmark RowContaining RowTop Save SaveAs
syn keyword jclMethods SaveFile SaveToFile SaveToOle1File SaveToolbar
syn keyword jclMethods Scale ScaleX ScaleY Scroll SelPrint SelectAll
syn keyword jclMethods SelectPart Send SendData Set SetAutoServerSettings
syn keyword jclMethods SetData SetFocus SetOption SetSelection SetSize
syn keyword jclMethods SetText SetViewport Show ShowColor ShowFont
syn keyword jclMethods ShowHelp ShowOpen ShowPrinter ShowSave
syn keyword jclMethods ShowWhatsThis SignOff SignOn Size Skip SkipLine
syn keyword jclMethods Span Split SplitContaining StartLabelEdit
syn keyword jclMethods StartLogging Stop Synchronize Tag TextHeight
syn keyword jclMethods TextWidth ToDefaults Trace TwipsToChartPart
syn keyword jclMethods TypeByChartType URLFor Update UpdateControls
syn keyword jclMethods UpdateRecord UpdateRow Upto ValidateControls Value
syn keyword jclMethods WhatsThisMode Write WriteBlankLines WriteLine
syn keyword jclMethods WriteProperty WriteTemplate ZOrder
syn keyword jclMethods rdoCreateEnvironment rdoRegisterDataSource

syn keyword jclStatement Alias AppActivate As Base Beep Begin Call ChDir
syn keyword jclStatement ChDrive Close Const Date Declare DefBool DefByte
syn keyword jclStatement DefCur DefDate DefDbl DefDec DefInt DefLng DefObj
syn keyword jclStatement DefSng DefStr DefVar Deftype DeleteSetting Dim Do
syn keyword jclStatement Each ElseIf Enum Erase Error Event Exit
syn keyword jclStatement Explicit FileCopy For ForEach Function Get GoSub
syn keyword jclStatement GoTo Gosub Implements Kill LSet Let Lib LineInput
syn keyword jclStatement Load Lock Loop Mid MkDir Name Next On OnError Open
syn keyword jclStatement Option Preserve Private Property Public Put RSet
syn keyword jclStatement RaiseEvent Randomize ReDim Redim Rem Reset Resume
syn keyword jclStatement Return RmDir SavePicture SaveSetting Seek SendKeys
syn keyword jclStatement Sendkeys Set SetAttr Static Step Stop Sub Time
syn keyword jclStatement Type Unload Unlock Until Wend While Width With
syn keyword jclStatement Write
syn keyword jclStatement Procedure
syn match jclStatement "End\s*\(Procedure\|If\|While\|Switch\)"

syn keyword jclSpecial SubTable EndSubTable "End SubTable"
syn match jclSpecial "End SubTable"

syn keyword jclKeyword As Binary ByRef ByVal Date Empty Error Friend Get
syn keyword jclKeyword Input Is Len Lock Me Mid New Nothing Null On
syn keyword jclKeyword Option Optional ParamArray Print Private Property
syn keyword jclKeyword Public PublicNotCreateable OnNewProcessSingleUse
syn keyword jclKeyword InSameProcessMultiUse GlobalMultiUse Resume Seek
syn keyword jclKeyword Set Static Step String Time WithEvents

syn keyword jclTodo contained	TODO

"Datatypes
syn keyword jclTypes Boolean Byte Currency Date Decimal Double Empty
syn keyword jclTypes Integer Long Object Single String Variant
syn keyword jclTypes Logical Number Memo

"VB defined values
syn keyword jclDefine dbBigInt dbBinary dbBoolean dbByte dbChar
syn keyword jclDefine dbCurrency dbDate dbDecimal dbDouble dbFloat
syn keyword jclDefine dbGUID dbInteger dbLong dbLongBinary dbMemo
syn keyword jclDefine dbNumeric dbSingle dbText dbTime dbTimeStamp
syn keyword jclDefine dbVarBinary

"VB defined values
syn keyword jclDefine jcl3DDKShadow jcl3DFace jcl3DHighlight jcl3DLight
syn keyword jclDefine jcl3DShadow jclAbort jclAbortRetryIgnore
syn keyword jclDefine jclActiveBorder jclActiveTitleBar jclAlias
syn keyword jclDefine jclApplicationModal jclApplicationWorkspace
syn keyword jclDefine jclAppTaskManager jclAppWindows jclArchive jclArray
syn keyword jclDefine jclBack jclBinaryCompare jclBlack jclBlue jclBoolean
syn keyword jclDefine jclButtonFace jclButtonShadow jclButtonText jclByte
syn keyword jclDefine jclCalGreg jclCalHijri jclCancel jclCr jclCritical
syn keyword jclDefine jclCrLf jclCurrency jclCyan jclDatabaseCompare
syn keyword jclDefine jclDataObject jclDate jclDecimal jclDefaultButton1
syn keyword jclDefine jclDefaultButton2 jclDefaultButton3 jclDefaultButton4
syn keyword jclDefine jclDesktop jclDirectory jclDouble jclEmpty jclError
syn keyword jclDefine jclExclamation jclFirstFourDays jclFirstFullWeek
syn keyword jclDefine jclFirstJan1 jclFormCode jclFormControlMenu
syn keyword jclDefine jclFormFeed jclFormMDIForm jclFriday jclFromUnicode
syn keyword jclDefine jclGrayText jclGreen jclHidden jclHide jclHighlight
syn keyword jclDefine jclHighlightText jclHiragana jclIgnore jclIMEAlphaDbl
syn keyword jclDefine jclIMEAlphaSng jclIMEDisable jclIMEHiragana
syn keyword jclDefine jclIMEKatakanaDbl jclIMEKatakanaSng jclIMEModeAlpha
syn keyword jclDefine jclIMEModeAlphaFull jclIMEModeDisable
syn keyword jclDefine jclIMEModeHangul jclIMEModeHangulFull
syn keyword jclDefine jclIMEModeHiragana jclIMEModeKatakana
syn keyword jclDefine jclIMEModeKatakanaHalf jclIMEModeNoControl
syn keyword jclDefine jclIMEModeOff jclIMEModeOn jclIMENoOp jclIMEOff
syn keyword jclDefine jclIMEOn jclInactiveBorder jclInactiveCaptionText
syn keyword jclDefine jclInactiveTitleBar jclInfoBackground jclInformation
syn keyword jclDefine jclInfoText jclInteger jclKatakana jclKey0 jclKey1
syn keyword jclDefine jclKey2 jclKey3 jclKey4 jclKey5 jclKey6 jclKey7 jclKey8
syn keyword jclDefine jclKey9 jclKeyA jclKeyAdd jclKeyB jclKeyBack jclKeyC
syn keyword jclDefine jclKeyCancel jclKeyCapital jclKeyClear jclKeyControl
syn keyword jclDefine jclKeyD jclKeyDecimal jclKeyDelete jclKeyDivide
syn keyword jclDefine jclKeyDown jclKeyE jclKeyEnd jclKeyEscape jclKeyExecute
syn keyword jclDefine jclKeyF jclKeyF1 jclKeyF10 jclKeyF11 jclKeyF12 jclKeyF13
syn keyword jclDefine jclKeyF14 jclKeyF15 jclKeyF16 jclKeyF2 jclKeyF3 jclKeyF4
syn keyword jclDefine jclKeyF5 jclKeyF6 jclKeyF7 jclKeyF8 jclKeyF9 jclKeyG
syn keyword jclDefine jclKeyH jclKeyHelp jclKeyHome jclKeyI jclKeyInsert
syn keyword jclDefine jclKeyJ jclKeyK jclKeyL jclKeyLButton jclKeyLeft jclKeyM
syn keyword jclDefine jclKeyMButton jclKeyMenu jclKeyMultiply jclKeyN
syn keyword jclDefine jclKeyNumlock jclKeyNumpad0 jclKeyNumpad1
syn keyword jclDefine jclKeyNumpad2 jclKeyNumpad3 jclKeyNumpad4
syn keyword jclDefine jclKeyNumpad5 jclKeyNumpad6 jclKeyNumpad7
syn keyword jclDefine jclKeyNumpad8 jclKeyNumpad9 jclKeyO jclKeyP
syn keyword jclDefine jclKeyPageDown jclKeyPageUp jclKeyPause jclKeyPrint
syn keyword jclDefine jclKeyQ jclKeyR jclKeyRButton jclKeyReturn jclKeyRight
syn keyword jclDefine jclKeyS jclKeySelect jclKeySeparator jclKeyShift
syn keyword jclDefine jclKeySnapshot jclKeySpace jclKeySubtract jclKeyT
syn keyword jclDefine jclKeyTab jclKeyU jclKeyUp jclKeyV jclKeyW jclKeyX
syn keyword jclDefine jclKeyY jclKeyZ jclLf jclLong jclLowerCase jclMagenta
syn keyword jclDefine jclMaximizedFocus jclMenuBar jclMenuText
syn keyword jclDefine jclMinimizedFocus jclMinimizedNoFocus jclMonday
syn keyword jclDefine jclMsgBox jclMsgBoxHelpButton jclMsgBoxRight
syn keyword jclDefine jclMsgBoxRtlReading jclMsgBoxSetForeground
syn keyword jclDefine jclMsgBoxText jclNarrow jclNewLine jclNo jclNormal
syn keyword jclDefine jclNormalFocus jclNormalNoFocus jclNull jclNullChar
syn keyword jclDefine jclNullString jclObject jclObjectError jclOK
syn keyword jclDefine jclOKCancel jclOKOnly jclProperCase jclQuestion
syn keyword jclDefine jclReadOnly jclRed jclRetry jclRetryCancel jclSaturday
syn keyword jclDefine jclScrollBars jclSingle jclString jclSunday jclSystem
syn keyword jclDefine jclSystemModal jclTab jclTextCompare jclThursday
syn keyword jclDefine jclTitleBarText jclTuesday jclUnicode jclUpperCase
syn keyword jclDefine jclUseSystem jclUseSystemDayOfWeek jclVariant
syn keyword jclDefine jclVerticalTab jclVolume jclWednesday jclWhite jclWide
syn keyword jclDefine jclWindowBackground jclWindowFrame jclWindowText
syn keyword jclDefine jclYellow jclYes jclYesNo jclYesNoCancel

"Numbers
"integer number, or floating point number without a dot.
syn match jclNumber "\<\d\+\>"
"floating point number, with dot
syn match jclNumber "\<\d\+\.\d*\>"
"floating point number, starting with a dot
syn match jclNumber "\.\d\+\>"
"syn match  jclNumber		"{[[:xdigit:]-]\+}\|&[hH][[:xdigit:]]\+&"
"syn match  jclNumber		":[[:xdigit:]]\+"
"syn match  jclNumber		"[-+]\=\<\d\+\>"
syn match  jclFloat		"[-+]\=\<\d\+[eE][\-+]\=\d\+"
syn match  jclFloat		"[-+]\=\<\d\+\.\d*\([eE][\-+]\=\d\+\)\="
syn match  jclFloat		"[-+]\=\<\.\d\+\([eE][\-+]\=\d\+\)\="

" String and Character contstants
syn region  jclString		start=+"+  end=+"\|$+
syn region  jclString		start=+'+  end=+'\|$+
syn region  jclComment		start="\(^\|\s\)REM\s" end="$" contains=vbTodo
syn region  jclComment		start="\(^\|\s\)|"   end="$" contains=vbTodo
syn region  jclMultilineComment start="\(^\|\s\)|\*" end="\*|" contains=jclMultilineComment
syn match   jclLineNumber	"^\d\+\(\s\|$\)"
syn match   jclTypeSpecifier  "[a-zA-Z0-9][\$%&!#]"ms=s+1
syn match   jclTypeSpecifier  "#[a-zA-Z0-9]"me=e-1

" Define the default highlighting.
" Only when an item doesn't have highlighting yet
hi def link jclBoolean			Boolean
hi def link jclLineNumber		Comment
hi def link jclComment			Comment
hi def link jclMultilineComment		Comment
hi def link jclConditional		Conditional
hi def link jclConst			Constant
hi def link jclDefine			Constant
hi def link jclError			Error
hi def link jclFunction			Identifier
hi def link jclIdentifier		Identifier
hi def link jclNumber			Number
hi def link jclFloat			Float
hi def link jclMethods			PreProc
hi def link jclOperator			Operator
hi def link jclRepeat			Repeat
hi def link jclString			String
hi def link jclStatement		Statement
hi def link jclKeyword			Statement
hi def link jclEvents			Special
hi def link jclSpecial			Special
hi def link jclTodo			Todo
hi def link jclTypes			Type
hi def link jclTypeSpecifier		Type


let b:current_syntax = "jcl"

" vim: ts=8
