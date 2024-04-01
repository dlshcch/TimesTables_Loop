unit frmMain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnGenerate: TButton;
    edtBase: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lblResult: TLabel;
    procedure btnGenerateClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnGenerateClick(Sender: TObject);
var
  index: integer;
  base: integer;
begin
  base := StrToInt(edtBase.Caption);
  lblResult.Caption := 'The times table for 1-12 of ' + IntToStr(base) +
    ' is: ' + #10#13 + #10#13;
  for index := 1 to 12 do
  begin
    lblResult.Caption := lblResult.Caption + IntToStr(index) + 'x' +
      IntToStr(base) + '=' + IntToStr((index * base)) + #10#13;
  end;// end of for loop

end;// end of buttonClick code

end.//end of the whole code
