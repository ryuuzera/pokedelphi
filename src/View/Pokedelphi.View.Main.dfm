object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  AlphaBlend = True
  AlphaBlendValue = 254
  BorderStyle = bsNone
  Caption = 'FrmPrincipal'
  ClientHeight = 518
  ClientWidth = 763
  Color = 1116461
  TransparentColor = True
  TransparentColorValue = 8388863
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Padding.Left = 1
  Padding.Top = 1
  Padding.Right = 1
  Padding.Bottom = 1
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 1
    Top = 28
    Width = 761
    Height = 489
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    Color = 3808929
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    object Panel3: TPanel
      Left = 338
      Top = 0
      Width = 16
      Height = 489
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Panel3'
      Color = 3808929
      ParentBackground = False
      ShowCaption = False
      TabOrder = 0
    end
    object Panel4: TPanel
      Left = 354
      Top = 0
      Width = 407
      Height = 489
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel3'
      Color = 1840657
      ParentBackground = False
      ShowCaption = False
      TabOrder = 1
      object Panel8: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 35
        Width = 407
        Height = 62
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Panel6'
        ShowCaption = False
        TabOrder = 0
        object Shape1: TShape
          AlignWithMargins = True
          Left = 6
          Top = 6
          Width = 395
          Height = 50
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          Align = alClient
          Brush.Color = 4470056
          Pen.Style = psClear
          Shape = stRoundRect
          ExplicitLeft = 73
          ExplicitTop = 2
          ExplicitWidth = 233
          ExplicitHeight = 41
        end
        object btnBuscar: TPanel
          Tag = 10
          Left = 282
          Top = 15
          Width = 106
          Height = 31
          BevelOuter = bvNone
          Caption = 'Search'
          Color = 3808929
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Poppins Medium'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
          OnClick = btnBuscarClick
          OnMouseEnter = pnEventsMouseEnter
          OnMouseLeave = pnEventsMouseLeave
        end
        object Panel11: TPanel
          Left = 16
          Top = 16
          Width = 258
          Height = 29
          BevelOuter = bvNone
          Caption = 'Panel11'
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          object Image2: TImage
            Left = 0
            Top = 0
            Width = 27
            Height = 27
            Align = alLeft
            Center = True
            Picture.Data = {
              }
          end
          object edPokemon: TEdit
            Left = 32
            Top = 4
            Width = 223
            Height = 22
            Cursor = crIBeam
            Align = alCustom
            BorderStyle = bsNone
            DoubleBuffered = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'Poppins'
            Font.Style = []
            ParentDoubleBuffered = False
            ParentFont = False
            TabOrder = 0
            TextHint = 'Enter Pok'#233'mon'
            OnKeyPress = edPokemonKeyPress
          end
          object Panel12: TPanel
            Left = 0
            Top = 27
            Width = 258
            Height = 2
            Align = alBottom
            BevelOuter = bvNone
            Caption = 'Panel11'
            Color = 3808929
            ParentBackground = False
            ShowCaption = False
            TabOrder = 1
          end
        end
      end
      object Panel9: TPanel
        Left = 0
        Top = 0
        Width = 407
        Height = 35
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Panel9'
        ShowCaption = False
        TabOrder = 1
        object Label1: TLabel
          Left = 16
          Top = 19
          Width = 284
          Height = 22
          Caption = 'Enter pokemon name! (or number if you know)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Poppins Medium'
          Font.Style = []
          ParentFont = False
        end
      end
      object pnEvents: TPanel
        Tag = 25
        Left = 152
        Top = -24
        Width = 33
        Height = 24
        Caption = 'pnEvents'
        TabOrder = 2
        Visible = False
        OnMouseEnter = pnEventsMouseEnter
        OnMouseLeave = pnEventsMouseLeave
      end
      object PageControl1: TPageControl
        Left = 0
        Top = 103
        Width = 407
        Height = 340
        ActivePage = TabSheet1
        Align = alClient
        Style = tsButtons
        TabOrder = 3
        object TabSheet1: TTabSheet
          Caption = 'tbInicial'
          object Panel15: TPanel
            Left = 0
            Top = 0
            Width = 399
            Height = 309
            Align = alClient
            BevelOuter = bvNone
            Caption = 'Panel15'
            Color = 1840657
            ParentBackground = False
            ShowCaption = False
            TabOrder = 0
            object Panel13: TPanel
              Left = 0
              Top = 18
              Width = 399
              Height = 97
              Align = alTop
              BevelOuter = bvNone
              Caption = 'Panel6'
              ShowCaption = False
              TabOrder = 0
              object Shape5: TShape
                AlignWithMargins = True
                Left = 11
                Top = 6
                Width = 377
                Height = 85
                Margins.Left = 11
                Margins.Top = 6
                Margins.Right = 11
                Margins.Bottom = 6
                Align = alClient
                Brush.Color = 4470056
                Pen.Style = psClear
                Shape = stRoundRect
                ExplicitLeft = 73
                ExplicitTop = 2
                ExplicitWidth = 233
                ExplicitHeight = 41
              end
              object lbDescricao: TLabel
                AlignWithMargins = True
                Left = 18
                Top = 3
                Width = 363
                Height = 91
                Margins.Left = 18
                Margins.Right = 18
                Align = alClient
                Alignment = taCenter
                Caption = 
                  'When it is angered, it immediately discharges the energy stored ' +
                  'in the pouches in its cheeks.'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Poppins Medium'
                Font.Style = []
                ParentFont = False
                Layout = tlCenter
                WordWrap = True
                ExplicitWidth = 354
                ExplicitHeight = 38
              end
            end
            object Panel14: TPanel
              Left = 0
              Top = 0
              Width = 399
              Height = 18
              Align = alTop
              BevelOuter = bvNone
              Caption = 'Panel19'
              ShowCaption = False
              TabOrder = 1
              object Label6: TLabel
                AlignWithMargins = True
                Left = 11
                Top = 0
                Width = 388
                Height = 18
                Margins.Left = 11
                Margins.Top = 0
                Margins.Right = 0
                Margins.Bottom = 0
                Align = alClient
                Caption = 'Description'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'Poppins Medium'
                Font.Style = []
                ParentFont = False
                ExplicitWidth = 73
                ExplicitHeight = 23
              end
            end
            object Panel18: TPanel
              Left = 0
              Top = 133
              Width = 399
              Height = 185
              Align = alTop
              BevelOuter = bvNone
              Caption = 'Panel6'
              DoubleBuffered = True
              ParentDoubleBuffered = False
              ShowCaption = False
              TabOrder = 2
              object Shape4: TShape
                AlignWithMargins = True
                Left = 6
                Top = 3
                Width = 387
                Height = 177
                Margins.Left = 6
                Margins.Right = 6
                Margins.Bottom = 5
                Align = alClient
                Brush.Color = 4470056
                Pen.Style = psClear
                Shape = stRoundRect
                ExplicitLeft = 11
                ExplicitTop = 191
                ExplicitWidth = 367
              end
              object gaHP: TGauge
                Left = 38
                Top = 39
                Width = 33
                Height = 100
                BackColor = 5456177
                BorderStyle = bsNone
                ForeColor = 8419835
                Kind = gkVerticalBar
                MaxValue = 160
                Progress = 35
                ShowText = False
              end
              object gaAtk: TGauge
                Left = 95
                Top = 39
                Width = 33
                Height = 100
                BackColor = 5456177
                BorderStyle = bsNone
                ForeColor = 8826610
                Kind = gkVerticalBar
                MaxValue = 160
                Progress = 35
                ShowText = False
              end
              object gaDef: TGauge
                Left = 153
                Top = 39
                Width = 33
                Height = 100
                BackColor = 5456177
                BorderStyle = bsNone
                ForeColor = 9954047
                Kind = gkVerticalBar
                MaxValue = 160
                Progress = 35
                ShowText = False
              end
              object gaSpAtk: TGauge
                Left = 210
                Top = 39
                Width = 33
                Height = 100
                BackColor = 5456177
                BorderStyle = bsNone
                ForeColor = 14264974
                Kind = gkVerticalBar
                MaxValue = 160
                Progress = 35
                ShowText = False
              end
              object gaSpDef: TGauge
                Left = 268
                Top = 39
                Width = 33
                Height = 100
                BackColor = 5456177
                BorderStyle = bsNone
                ForeColor = 10212788
                Kind = gkVerticalBar
                MaxValue = 160
                Progress = 35
                ShowText = False
              end
              object gaSpeed: TGauge
                Left = 326
                Top = 39
                Width = 33
                Height = 100
                BackColor = 5456177
                BorderStyle = bsNone
                ForeColor = 16554696
                Kind = gkVerticalBar
                MaxValue = 160
                Progress = 35
                ShowText = False
              end
              object lbHPv: TLabel
                Left = 47
                Top = 20
                Width = 14
                Height = 19
                Caption = '35'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Poppins Medium'
                Font.Style = []
                ParentFont = False
              end
              object lbAtkv: TLabel
                Left = 105
                Top = 20
                Width = 14
                Height = 19
                Caption = '35'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Poppins Medium'
                Font.Style = []
                ParentFont = False
              end
              object lbDefv: TLabel
                Left = 162
                Top = 20
                Width = 14
                Height = 19
                Caption = '35'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Poppins Medium'
                Font.Style = []
                ParentFont = False
              end
              object lbSpAtkv: TLabel
                Left = 220
                Top = 20
                Width = 14
                Height = 19
                Caption = '35'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Poppins Medium'
                Font.Style = []
                ParentFont = False
              end
              object lbSpDefv: TLabel
                Left = 279
                Top = 20
                Width = 14
                Height = 19
                Caption = '35'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Poppins Medium'
                Font.Style = []
                ParentFont = False
              end
              object lbSpdv: TLabel
                Left = 335
                Top = 20
                Width = 14
                Height = 19
                Caption = '35'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Poppins Medium'
                Font.Style = []
                ParentFont = False
              end
              object Label9: TLabel
                Left = 47
                Top = 145
                Width = 15
                Height = 19
                Caption = 'HP'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Poppins Medium'
                Font.Style = []
                ParentFont = False
              end
              object Label10: TLabel
                Left = 93
                Top = 145
                Width = 36
                Height = 19
                Caption = 'Attack'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Poppins Medium'
                Font.Style = []
                ParentFont = False
              end
              object Label11: TLabel
                Left = 146
                Top = 145
                Width = 46
                Height = 19
                Caption = 'Defense'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Poppins Medium'
                Font.Style = []
                ParentFont = False
              end
              object Label12: TLabel
                Left = 207
                Top = 145
                Width = 38
                Height = 19
                Caption = 'Sp. Atk'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Poppins Medium'
                Font.Style = []
                ParentFont = False
              end
              object Label13: TLabel
                Left = 265
                Top = 145
                Width = 39
                Height = 19
                Caption = 'Sp. Def'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Poppins Medium'
                Font.Style = []
                ParentFont = False
              end
              object Label14: TLabel
                Left = 324
                Top = 145
                Width = 35
                Height = 19
                Caption = 'Speed'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Poppins Medium'
                Font.Style = []
                ParentFont = False
              end
            end
            object Panel19: TPanel
              Left = 0
              Top = 115
              Width = 399
              Height = 18
              Align = alTop
              BevelOuter = bvNone
              Caption = 'Panel19'
              ShowCaption = False
              TabOrder = 3
              object Label4: TLabel
                AlignWithMargins = True
                Left = 11
                Top = 0
                Width = 388
                Height = 18
                Margins.Left = 11
                Margins.Top = 0
                Margins.Right = 0
                Margins.Bottom = 0
                Align = alClient
                Caption = 'Base Stats'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'Poppins Medium'
                Font.Style = []
                ParentFont = False
                ExplicitWidth = 69
                ExplicitHeight = 23
              end
            end
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'TabSheet2'
          ImageIndex = 1
        end
        object TabSheet3: TTabSheet
          Caption = 'TabSheet3'
          ImageIndex = 2
        end
        object TabSheet4: TTabSheet
          Caption = 'TabSheet4'
          ImageIndex = 3
        end
      end
      object Panel20: TPanel
        Left = 0
        Top = 100
        Width = 407
        Height = 3
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Panel20'
        ShowCaption = False
        TabOrder = 4
      end
      object Panel21: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 446
        Width = 401
        Height = 42
        Margins.Bottom = 1
        Align = alBottom
        BevelOuter = bvNone
        Caption = 'Panel20'
        Color = 3808929
        ParentBackground = False
        ShowCaption = False
        TabOrder = 5
        object Panel22: TPanel
          AlignWithMargins = True
          Left = 1
          Top = 1
          Width = 399
          Height = 41
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 0
          Align = alClient
          BevelOuter = bvNone
          Caption = 'Panel22'
          Color = 1840657
          ParentBackground = False
          TabOrder = 0
          object Panel23: TPanel
            AlignWithMargins = True
            Left = 70
            Top = 0
            Width = 259
            Height = 40
            Margins.Left = 70
            Margins.Top = 0
            Margins.Right = 70
            Margins.Bottom = 0
            Align = alTop
            BevelOuter = bvNone
            Caption = 'Panel22'
            ShowCaption = False
            TabOrder = 0
            object Panel25: TPanel
              Tag = 12
              Left = 0
              Top = 0
              Width = 65
              Height = 40
              Align = alLeft
              BevelOuter = bvNone
              Caption = 'Panel25'
              Color = 1840657
              ParentBackground = False
              ShowCaption = False
              TabOrder = 0
              object nMain: TImage
                Tag = 12
                Left = 0
                Top = 0
                Width = 66
                Height = 40
                Align = alLeft
                Center = True
                Picture.Data = {
                  }
                ExplicitLeft = 9
                ExplicitTop = 2
                ExplicitHeight = 38
              end
            end
            object Panel26: TPanel
              Tag = 12
              Left = 65
              Top = 0
              Width = 65
              Height = 40
              Align = alLeft
              BevelOuter = bvNone
              Caption = 'Panel26'
              Color = 1840657
              ParentBackground = False
              ShowCaption = False
              TabOrder = 1
              object nEvo: TImage
                Tag = 12
                Left = 0
                Top = 0
                Width = 66
                Height = 40
                Align = alLeft
                Center = True
                Picture.Data = {
                  }
                ExplicitLeft = 72
                ExplicitTop = 1
              end
            end
            object Panel27: TPanel
              Tag = 12
              Left = 130
              Top = 0
              Width = 65
              Height = 40
              Align = alLeft
              BevelOuter = bvNone
              Caption = 'Panel27'
              Color = 1840657
              ParentBackground = False
              ShowCaption = False
              TabOrder = 2
              object nLocation: TImage
                Tag = 12
                Left = 0
                Top = 0
                Width = 66
                Height = 40
                Align = alLeft
                Center = True
                Picture.Data = {
                  }
                ExplicitLeft = 6
                ExplicitTop = 1
              end
            end
            object Panel28: TPanel
              Tag = 12
              Left = 195
              Top = 0
              Width = 65
              Height = 40
              Align = alLeft
              BevelOuter = bvNone
              Caption = 'Panel28'
              Color = 1840657
              ParentBackground = False
              ShowCaption = False
              TabOrder = 3
              object nInfo: TImage
                Tag = 12
                Left = 0
                Top = 0
                Width = 65
                Height = 40
                Align = alClient
                Center = True
                Picture.Data = {
                  }
                ExplicitLeft = 6
                ExplicitTop = 1
                ExplicitWidth = 66
                ExplicitHeight = 38
              end
            end
          end
          object Panel24: TPanel
            Left = 0
            Top = 40
            Width = 399
            Height = 1
            Align = alClient
            BevelOuter = bvNone
            Caption = 'Panel22'
            Color = 3808929
            ParentBackground = False
            ShowCaption = False
            TabOrder = 1
          end
        end
      end
    end
    object Panel5: TPanel
      Left = 0
      Top = 0
      Width = 338
      Height = 489
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Panel3'
      Color = 1840657
      ParentBackground = False
      ShowCaption = False
      TabOrder = 2
      object Label2: TLabel
        Left = 4
        Top = 472
        Width = 130
        Height = 19
        Caption = 'Dev by Fagner Menezes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Poppins Medium'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 213
        Top = 472
        Width = 116
        Height = 19
        Cursor = crHandPoint
        Caption = 'github.com/ryuuzera'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16709071
        Font.Height = -11
        Font.Name = 'Poppins Medium'
        Font.Style = [fsUnderline]
        ParentFont = False
        OnClick = Label3Click
      end
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 338
        Height = 329
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Panel6'
        ShowCaption = False
        TabOrder = 0
        object Shape6: TShape
          Left = 13
          Top = 16
          Width = 312
          Height = 60
          Brush.Color = 5719091
          Pen.Color = 5719091
          Pen.Style = psClear
          Shape = stRoundRect
        end
        object Shape7: TShape
          Left = 13
          Top = 263
          Width = 312
          Height = 60
          Brush.Color = 5719091
          Pen.Color = 5719091
          Pen.Style = psClear
          Shape = stRoundRect
        end
        object Shape8: TShape
          Left = 13
          Top = 58
          Width = 312
          Height = 235
          Brush.Color = 5719091
          Pen.Color = 5719091
          Pen.Style = psClear
        end
        object Panel10: TPanel
          AlignWithMargins = True
          Left = 20
          Top = 20
          Width = 298
          Height = 289
          Margins.Left = 20
          Margins.Top = 20
          Margins.Right = 20
          Margins.Bottom = 20
          Align = alClient
          BevelOuter = bvNone
          Caption = 'Panel10'
          Color = 5719091
          ParentBackground = False
          ShowCaption = False
          TabOrder = 0
          object ImgPokemon: TsImage
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 292
            Height = 283
            Align = alClient
            Picture.Data = {   
             }
            Stretch = True
            ExplicitHeight = 286
          end
        end
      end
      object Panel7: TPanel
        Left = 0
        Top = 329
        Width = 338
        Height = 51
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Panel6'
        ShowCaption = False
        TabOrder = 1
        object Shape2: TShape
          AlignWithMargins = True
          Left = 11
          Top = 6
          Width = 316
          Height = 39
          Margins.Left = 11
          Margins.Top = 6
          Margins.Right = 11
          Margins.Bottom = 6
          Align = alClient
          Brush.Color = 4470056
          Pen.Style = psClear
          Shape = stRoundRect
          ExplicitLeft = 73
          ExplicitTop = 2
          ExplicitWidth = 233
          ExplicitHeight = 41
        end
        object lbNome: TLabel
          Left = 0
          Top = 0
          Width = 338
          Height = 51
          Align = alClient
          Alignment = taCenter
          Caption = 'Pikachu #25'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -17
          Font.Name = 'Poppins Medium'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          ExplicitWidth = 107
          ExplicitHeight = 30
        end
      end
      object Panel16: TPanel
        Left = 0
        Top = 425
        Width = 338
        Height = 37
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Panel6'
        ShowCaption = False
        TabOrder = 2
        object btnMegaX: TPanel
          Tag = 11
          Left = 30
          Top = 7
          Width = 83
          Height = 31
          BevelOuter = bvNone
          Caption = 'Mega '
          Color = 11908533
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8816262
          Font.Height = -11
          Font.Name = 'Poppins Medium'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
          OnClick = btnMegaXClick
        end
        object btnDefault: TPanel
          Tag = 11
          Left = 123
          Top = 4
          Width = 83
          Height = 31
          BevelOuter = bvNone
          Caption = 'Default'
          Color = 11908533
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8816262
          Font.Height = -11
          Font.Name = 'Poppins Medium'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 1
          OnClick = btnDefaultClick
        end
        object btnMegaY: TPanel
          Tag = 11
          Left = 217
          Top = 7
          Width = 83
          Height = 31
          BevelOuter = bvNone
          Caption = 'Mega Alt'
          Color = 11908533
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8816262
          Font.Height = -11
          Font.Name = 'Poppins Medium'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 2
          OnClick = btnMegaYClick
        end
      end
      object Panel17: TPanel
        Left = 0
        Top = 380
        Width = 338
        Height = 45
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Panel6'
        ShowCaption = False
        TabOrder = 3
        object Shape3: TShape
          AlignWithMargins = True
          Left = 11
          Top = 3
          Width = 316
          Height = 37
          Margins.Left = 11
          Margins.Right = 11
          Margins.Bottom = 5
          Align = alClient
          Brush.Color = 4470056
          Pen.Style = psClear
          Shape = stRoundRect
          ExplicitLeft = 3
          ExplicitWidth = 300
        end
        object lbTipo1: TLabel
          Left = 58
          Top = 9
          Width = 50
          Height = 30
          Alignment = taCenter
          Caption = 'Eletric'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -17
          Font.Name = 'Poppins Medium'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object lbTipo2: TLabel
          Left = 202
          Top = 9
          Width = 4
          Height = 30
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -17
          Font.Name = 'Poppins Medium'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 1
    Top = 1
    Width = 761
    Height = 27
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel2'
    Color = 1512211
    ParentBackground = False
    ShowCaption = False
    TabOrder = 1
    OnMouseDown = Panel2MouseDown
    object Close: TImage
      Left = 729
      Top = 0
      Width = 32
      Height = 27
      Align = alRight
      Center = True
      Picture.Data = {
        }
      OnClick = CloseClick
      ExplicitLeft = 704
      ExplicitHeight = 24
    end
  end
  object RClient: TRESTClient
    Params = <>
    HandleRedirects = True
    Left = 48
    Top = 40
  end
  object RRequest: TRESTRequest
    Client = RClient
    Params = <>
    Response = RResponse
    SynchronizedEvents = False
    Left = 16
    Top = 40
  end
  object RResponse: TRESTResponse
    Left = 80
    Top = 40
  end
end
