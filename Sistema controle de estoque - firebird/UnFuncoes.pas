unit UnFuncoes;

interface

uses IniFiles, SysUtils;

type
  TFuncoes = class
  Public
    class function LerIni(Chave1, Chave2: String; ValorPadrao: String = ''): String; static;
  end;

implementation

class function TFuncoes.LerIni(Chave1, Chave2: String; ValorPadrao: String = ''): String;
var
  Arquivo: String;
  FileIni: TIniFile;
begin
  Arquivo := ChangeFileExt(ParamStr(0), '') + '.ini';
  result := ValorPadrao;
  try
    FileIni := TIniFile.Create(Arquivo);
    if FileExists(Arquivo) then
      result := FileIni.ReadString(Chave1, Chave2, ValorPadrao);
  finally
    FreeAndNil(FileIni)
  end;
end;
end.
