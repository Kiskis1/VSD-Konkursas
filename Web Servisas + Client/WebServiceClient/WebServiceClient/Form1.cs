using System;
using System.Drawing;
using System.Windows.Forms;
using WebServiceClient.WebService;

namespace WebServiceClient
{
    public partial class Form1 : Form
    {
        private Timer _timer;
        private Label _label;

        private RTDateTimeClient _soap = new RTDateTimeClient();
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            InitTimer();
            _label = new Label
            {
                AutoSize = false,
                Font = new Font("Comic Sans", 12),
                Size = new Size(100, 50),
                TextAlign = ContentAlignment.TopLeft,
                Dock = DockStyle.None,
                Text = _soap.getDateTime()
            };
            panel1.Controls.Add(_label);

        }

        public void InitTimer()
        {
            _timer = new Timer();
            _timer.Tick += Timer_Tick;
            _timer.Interval = 1000; // in miliseconds
            _timer.Start();
        }

        private void Timer_Tick(object sender, EventArgs e)
        {
            _label.Text = _soap.getDateTime();
        }
    }
}
