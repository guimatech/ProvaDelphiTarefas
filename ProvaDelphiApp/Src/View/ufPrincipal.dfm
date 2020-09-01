object fPrincipal: TfPrincipal
  Left = 0
  Top = 0
  Caption = 'Prova Delphi App'
  ClientHeight = 561
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = mnuPrincipal
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 21
  object mnuPrincipal: TMainMenu
    Left = 24
    Top = 8
    object mniTarefas: TMenuItem
      Caption = 'Tarefas'
      object mniTarefa1: TMenuItem
        Action = actTarefa1
      end
      object mniTarefa2: TMenuItem
        Action = actTarefa2
      end
      object mniTarefa3: TMenuItem
        Action = actTarefa3
      end
    end
  end
  object lstAcoes: TActionList
    Left = 24
    Top = 64
    object actTarefa1: TAction
      Category = 'Tarefas'
      Caption = 'Tarefa 1'
      OnExecute = actTarefa1Execute
    end
    object actTarefa2: TAction
      Category = 'Tarefas'
      Caption = 'Tarefa 2'
      OnExecute = actTarefa2Execute
    end
    object actTarefa3: TAction
      Category = 'Tarefas'
      Caption = 'Tarefa 3'
      OnExecute = actTarefa3Execute
    end
  end
end
