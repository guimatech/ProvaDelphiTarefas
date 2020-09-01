inherited fTarefa1: TfTarefa1
  Caption = 'Tarefa 1'
  ClientHeight = 311
  ExplicitHeight = 350
  PixelsPerInch = 96
  TextHeight = 17
  object pnlTopo: TPanel
    Left = 5
    Top = 5
    Width = 624
    Height = 169
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object pnlControles: TPanel
      Left = 507
      Top = 0
      Width = 117
      Height = 169
      Align = alClient
      BevelOuter = bvNone
      Padding.Left = 5
      Padding.Top = 10
      Padding.Right = 5
      Padding.Bottom = 5
      TabOrder = 3
      object btnGerarSQL: TButton
        Left = 14
        Top = 65
        Width = 93
        Height = 41
        Caption = 'Gerar SQL'
        Default = True
        TabOrder = 0
        OnClick = btnGerarSQLClick
      end
    end
    object pnlCondicoes: TPanel
      Left = 338
      Top = 0
      Width = 169
      Height = 169
      Align = alLeft
      BevelOuter = bvNone
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      TabOrder = 2
      object lblCondicoes: TLabel
        Left = 5
        Top = 5
        Width = 159
        Height = 17
        Align = alTop
        Caption = 'Condi'#231#245'es'
        FocusControl = mmoCodicoes
        ExplicitWidth = 61
      end
      object mmoCodicoes: TMemo
        Left = 5
        Top = 22
        Width = 159
        Height = 142
        Align = alClient
        TabOrder = 0
      end
    end
    object pnlTabelas: TPanel
      Left = 169
      Top = 0
      Width = 169
      Height = 169
      Align = alLeft
      BevelOuter = bvNone
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      TabOrder = 1
      object lblTabelas: TLabel
        Left = 5
        Top = 5
        Width = 159
        Height = 17
        Align = alTop
        Caption = 'Tabelas'
        FocusControl = mmoTabelas
        ExplicitWidth = 44
      end
      object mmoTabelas: TMemo
        Left = 5
        Top = 22
        Width = 159
        Height = 142
        Align = alClient
        TabOrder = 0
      end
    end
    object pnlColunas: TPanel
      Left = 0
      Top = 0
      Width = 169
      Height = 169
      Align = alLeft
      BevelOuter = bvNone
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      TabOrder = 0
      object lblColunas: TLabel
        Left = 5
        Top = 5
        Width = 159
        Height = 17
        Align = alTop
        Caption = 'Colunas'
        FocusControl = mmoColunas
        ExplicitWidth = 46
      end
      object mmoColunas: TMemo
        Left = 5
        Top = 22
        Width = 159
        Height = 142
        Align = alClient
        TabOrder = 0
      end
    end
  end
  object pnlSQLGerado: TPanel
    Left = 5
    Top = 174
    Width = 624
    Height = 132
    Align = alClient
    BevelOuter = bvNone
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    TabOrder = 1
    object lblSQLGerado: TLabel
      Left = 5
      Top = 5
      Width = 614
      Height = 17
      Align = alTop
      Caption = 'SQL Gerado'
      FocusControl = mmoSQLGerado
      ExplicitWidth = 71
    end
    object mmoSQLGerado: TMemo
      Left = 5
      Top = 22
      Width = 614
      Height = 105
      Align = alClient
      ReadOnly = True
      TabOrder = 0
    end
  end
  object qryTarefa1: TspQuery
    CachedUpdates = True
    SQL.Strings = (
      'SELECT  FROM  WHERE ')
    Left = 280
    Top = 232
  end
end
