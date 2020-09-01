inherited fTarefa3: TfTarefa3
  Caption = 'Tarefa 3'
  ClientHeight = 447
  OnDestroy = FormDestroy
  ExplicitHeight = 486
  PixelsPerInch = 96
  TextHeight = 17
  object lblTotal: TLabel
    Left = 496
    Top = 322
    Width = 50
    Height = 17
    Anchors = [akRight, akBottom]
    Caption = 'Total R$:'
    ExplicitTop = 341
  end
  object lblTotalDivisoes: TLabel
    Left = 496
    Top = 384
    Width = 101
    Height = 17
    Anchors = [akRight, akBottom]
    Caption = 'Total divis'#245'es R$:'
    ExplicitTop = 403
  end
  object lblTituloGrid: TLabel
    Left = 5
    Top = 5
    Width = 624
    Height = 17
    Align = alTop
    Caption = 'Valores por projeto:'
    ExplicitWidth = 118
  end
  object grdTarefa3: TDBGrid
    Left = 5
    Top = 22
    Width = 624
    Height = 294
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'IdProjeto'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeProjeto'
        Width = 399
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor'
        Width = 117
        Visible = True
      end>
  end
  object btnObterTotal: TButton
    Left = 351
    Top = 345
    Width = 139
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Obter Total'
    TabOrder = 1
    OnClick = btnObterTotalClick
  end
  object btnObterTotalDivisoes: TButton
    Left = 351
    Top = 407
    Width = 139
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Obter Total Divis'#245'es'
    TabOrder = 2
    OnClick = btnObterTotalDivisoesClick
  end
  object edtTotal: TEdit
    Left = 496
    Top = 345
    Width = 121
    Height = 25
    Anchors = [akRight, akBottom]
    ReadOnly = True
    TabOrder = 3
    TextHint = '0,0'
  end
  object edtTotalDivisoes: TEdit
    Left = 496
    Top = 407
    Width = 121
    Height = 25
    Anchors = [akRight, akBottom]
    ReadOnly = True
    TabOrder = 4
    TextHint = '0,0'
  end
end
