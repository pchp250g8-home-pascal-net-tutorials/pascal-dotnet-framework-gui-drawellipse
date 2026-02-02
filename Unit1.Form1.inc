procedure InitializeComponent;
    begin
        self.SuspendLayout();
        // 
        // Form1
        // 
        self.ClientSize := new System.Drawing.Size(462, 273);
        self.Name := 'Form1';
        self.Text := 'Form1';
        self.Paint += Form1_Paint;
        self.Resize += Form1_Resize;
        self.ResumeLayout(false);
    end;
