unit Frame.Welcome;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFrameWelcome = class(TFrame)
    Label1: TLabel;
    lblAppVersion: TLabel;
    Image1: TImage;
    tmrFirstShow: TTimer;
    procedure tmrFirstShowTimer(Sender: TObject);
  private
    FAppVersion: String;
    { Private declarations }
  public
    property AppVersion: String read FAppVersion write FAppVersion;
  end;

implementation

{$R *.dfm}

procedure TFrameWelcome.tmrFirstShowTimer(Sender: TObject);
var
  rs: TResourceStream;
  image: TPNGImage;
begin
  tmrFirstShow.Enabled := False;
  lblAppVersion.Caption := Format('wersja: %s',[FAppVersion]);
  image := TPNGImage.Create;
  try
    rs := TResourceStream.Create(hInstance, 'PngImage_1', RT_RCDATA);
    try
      image.LoadFromStream(rs);
      Image1.Picture.Graphic := image;
    finally
      rs.Free;
    end;
  finally
    image.Free;
  end;
end;

end.
