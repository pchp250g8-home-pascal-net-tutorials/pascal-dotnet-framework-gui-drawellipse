Unit Unit1;

interface

uses System, System.Drawing, System.Windows.Forms;

type
  Form1 = class(Form)
    procedure Form1_Paint(sender: Object; e: PaintEventArgs);
    procedure Form1_Resize(sender: Object; e: EventArgs);
  {$region FormDesigner}
  internal
    {$resource Unit1.Form1.resources}
    {$include Unit1.Form1.inc}
  {$endregion FormDesigner}
  public
    constructor;
    begin
      InitializeComponent;
    end;
  end;

implementation

procedure Form1.Form1_Paint(sender: Object; e: PaintEventArgs);
begin
  var g := e.Graphics;
  g.Clear(Color.Black);
  g.DrawEllipse(Pens.Yellow, 0, 0, ClientSize.Width, ClientSize.Height);
  g.FillEllipse(Brushes.Red, 0, 0, ClientSize.Width, ClientSize.Height);
end;

procedure Form1.Form1_Resize(sender: Object; e: EventArgs);
begin
  Invalidate();
end;

end.
