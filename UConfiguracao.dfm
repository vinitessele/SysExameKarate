inherited FConfiguracao: TFConfiguracao
  Caption = 'Configura'#231#227'o'
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 16
    Top = 72
    Width = 40
    Height = 13
    Caption = 'Servidor'
  end
  object Label2: TLabel [1]
    Left = 16
    Top = 120
    Width = 41
    Height = 13
    Caption = 'Caminho'
  end
  inherited PanelTooBar: TPanel
    Visible = False
    inherited DBNavigator1: TDBNavigator
      Visible = False
    end
  end
  object EditServidor: TEdit
    Left = 16
    Top = 93
    Width = 193
    Height = 21
    TabOrder = 2
  end
  object EditCaminho: TEdit
    Left = 16
    Top = 139
    Width = 193
    Height = 21
    TabOrder = 3
  end
  object btnConfirma: TBitBtn
    Left = 16
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Confirma'
    TabOrder = 4
    OnClick = btnConfirmaClick
  end
end
