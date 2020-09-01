inherited fTarefa2: TfTarefa2
  Caption = 'Tarefa 2'
  ClientHeight = 199
  ClientWidth = 410
  ExplicitWidth = 426
  ExplicitHeight = 238
  PixelsPerInch = 96
  TextHeight = 17
  object lblIntervalo: TLabel
    AlignWithMargins = True
    Left = 5
    Top = 98
    Width = 400
    Height = 17
    Margins.Left = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alTop
    Caption = 'Intervalo (ms)'
    FocusControl = edtIntervalo
    ExplicitTop = 106
    ExplicitWidth = 79
  end
  object lblThread1: TLabel
    Left = 5
    Top = 5
    Width = 400
    Height = 17
    Align = alTop
    Caption = 'Thread 1'
    ExplicitWidth = 52
  end
  object lblThread2: TLabel
    Left = 5
    Top = 50
    Width = 400
    Height = 17
    Align = alTop
    Caption = 'Thread 2'
    ExplicitWidth = 52
  end
  object btnDispararThreads: TButton
    AlignWithMargins = True
    Left = 5
    Top = 143
    Width = 400
    Height = 51
    Margins.Left = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alTop
    Caption = 'Disparar Threads!'
    Default = True
    TabOrder = 1
    OnClick = btnDispararThreadsClick
    ExplicitLeft = 224
    ExplicitTop = 208
    ExplicitWidth = 185
    ExplicitHeight = 57
  end
  object edtIntervalo: TEdit
    Left = 5
    Top = 115
    Width = 400
    Height = 25
    Hint = 'Informe o intervalo em milisegundos'
    Align = alTop
    NumbersOnly = True
    TabOrder = 0
    TextHint = 'Informe o intervalo em milisegundos'
  end
  object barThread1: TProgressBar
    Left = 5
    Top = 22
    Width = 400
    Height = 28
    Align = alTop
    TabOrder = 2
    ExplicitLeft = 8
    ExplicitTop = -17
  end
  object barThread2: TProgressBar
    Left = 5
    Top = 67
    Width = 400
    Height = 28
    Align = alTop
    TabOrder = 3
    ExplicitLeft = 2
    ExplicitTop = 41
  end
end
