unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Label1: TLabel;
    FDConnection1: TFDConnection;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  NomeUsuarioLogado: String;

implementation

{$R *.dfm}

uses Unit_cadastros;

procedure TForm1.Button1Click(Sender: TObject);
  var
    Query: TFDQuery;
    NomeCompleto, CPF: string;
  begin
    NomeCompleto := Edit1.Text;
    CPF := Edit2.Text;

  Query := TFDQuery.Create(nil);

  try
    Query.Connection := FDConnection1;
    Query.SQL.Text := 'SELECT COUNT(*) FROM usuario WHERE nome_completo = :NomeCompleto AND cpf = :CPF';
    Query.Params.ParamByName('NomeCompleto').AsString := NomeCompleto;
    Query.Params.ParamByName('CPF').AsString := CPF;
    Query.Open;

    if Query.Fields[0].AsInteger > 0 then
    begin
      Form3.Show
    end
    else
    begin
      ShowMessage('Nome ou CPF incorretos.');
    end;
  finally
    Query.Free;
  end;
end;

end.
