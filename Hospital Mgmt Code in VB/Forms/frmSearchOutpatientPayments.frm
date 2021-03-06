VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Begin VB.Form frmSearchOutpatientPayments 
   Caption         =   "Search Payments"
   ClientHeight    =   8895
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   11775
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   Picture         =   "frmSearchOutpatientPayments.frx":0000
   ScaleHeight     =   8895
   ScaleWidth      =   11775
   WindowState     =   2  'Maximized
   Begin VB.TextBox txtSearch 
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   6960
      TabIndex        =   2
      Top             =   2280
      Width           =   2295
   End
   Begin VB.ComboBox cboSearchType 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      ItemData        =   "frmSearchOutpatientPayments.frx":1C86E
      Left            =   3120
      List            =   "frmSearchOutpatientPayments.frx":1C87E
      Style           =   2  'Dropdown List
      TabIndex        =   1
      Top             =   2280
      Width           =   2415
   End
   Begin VB.CommandButton cmdClose 
      Appearance      =   0  'Flat
      BackColor       =   &H80000000&
      Caption         =   "&Close"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   5040
      Style           =   1  'Graphical
      TabIndex        =   0
      ToolTipText     =   "Click Here To Close This Interface"
      Top             =   8040
      Width           =   1695
   End
   Begin MSDataGridLib.DataGrid dgrdOutpatientsBillingInfo 
      Height          =   4215
      Left            =   1080
      TabIndex        =   3
      Top             =   3240
      Width           =   9495
      _ExtentX        =   16748
      _ExtentY        =   7435
      _Version        =   393216
      AllowUpdate     =   -1  'True
      AllowArrows     =   -1  'True
      BackColor       =   -2147483629
      HeadLines       =   1
      RowHeight       =   15
      BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Caption         =   "Outpatients Billing Information"
      ColumnCount     =   2
      BeginProperty Column00 
         DataField       =   ""
         Caption         =   ""
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column01 
         DataField       =   ""
         Caption         =   ""
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
      EndProperty
      SplitCount      =   1
      BeginProperty Split0 
         BeginProperty Column00 
         EndProperty
         BeginProperty Column01 
         EndProperty
      EndProperty
   End
   Begin VB.Label lblCriteria 
      BackStyle       =   0  'Transparent
      Caption         =   "Criteria"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   2400
      TabIndex        =   5
      Top             =   2310
      Width           =   615
   End
   Begin VB.Label lblSearchFor 
      BackStyle       =   0  'Transparent
      Caption         =   "Search For:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   5760
      TabIndex        =   4
      Top             =   2310
      Width           =   1695
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000001&
      BorderColor     =   &H80000001&
      Height          =   735
      Left            =   2040
      Top             =   2040
      Width           =   7575
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H80000001&
      BorderColor     =   &H80000001&
      Height          =   4695
      Left            =   840
      Top             =   3000
      Width           =   9975
   End
End
Attribute VB_Name = "frmSearchOutpatientPayments"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

'-------------------------------------------------------------------------------
'The Name Of The Database Being Accessed: sdp
'The Name/s Of The Database Table/s Being Accessed: Outpatient_Billing
'--------------------------------------------------------------------------------


Private Sub cmdClose_Click()
    
    If MsgBox(userName & ", Are You Sure You Wish To Close This Interface?", vbYesNo + vbQuestion, "Close Interface?") = vbYes Then
        Unload Me
    End If

End Sub

Private Sub Form_Load()
    Call Outpatient_Billing
    Set dgrdOutpatientsBillingInfo.DataSource = rsOutpatientBilling
End Sub


Private Sub txtSearch_Change()  'This is executed when the user types in the Search textfield
    
    If Len(txtSearch.Text) > 0 Then 'Checking if the user has typed in the textfield
    
        With rsOutpatientBilling
        
            'Filter the Records As The User Types, According to the Criteria
            Select Case (cboSearchType.ListIndex)
                Case 0:
                    .Filter = "[InvoiceID] Like '" & txtSearch.Text & "%" & "'"
                Case 1:
                    .Filter = "[PatientID] Like '" & txtSearch.Text & "%" & "'"
                Case 2:
                    .Filter = "[PatientName] Like '" & txtSearch.Text & "%" & "'"
                Case 3:
                    .Filter = "[AccountType] Like '" & txtSearch.Text & "%" & "'"
            End Select
    
        End With
            
    Else
        
        Call Outpatient_Billing
        
        Set dgrdOutpatientsBillingInfo.DataSource = rsOutpatientBilling
    
    End If
    
End Sub


