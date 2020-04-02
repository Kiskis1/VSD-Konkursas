using Newtonsoft.Json;
using System;
using System.Drawing;
using System.Net;
using System.Windows.Forms;

namespace VSDTemperatura
{
    public partial class Form1 : Form
    {

        private readonly string TEMP_URL = "http://www.hkk.gf.vu.lt/json.php";
        private readonly char[] TRIM_START = { 'w', 'u', 'p', '(' };
        private readonly char[] TRIM_END = { ')', ';' };
        private Data _duomenys;
        private int _total;
        private double _temp;
        private Timer _timer;
        private Label _label;
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            InitTimer();

            _total = 0;
            _temp = 0;
            var label1 = new Label
            {
                AutoSize = true,
                Font = new Font("Comic Sans", 12),
                TextAlign = ContentAlignment.TopCenter,
                Dock = DockStyle.None,
                Text = @"Vid paros temperatura"
            };
            _label = new Label
            {
                AutoSize = false,
                Font = new Font("Comic Sans", 30),
                Size = new Size(100, 50),
                TextAlign = ContentAlignment.MiddleCenter,
                Dock = DockStyle.None
            };
            _label.Left = panel1.Width / 2 - _label.Width / 2;
            _label.Top = panel1.Height / 2 - _label.Height / 2;
            _label.Text = GetTemperature().ToString();
            panel1.Controls.Add(_label);
            panel1.Controls.Add(label1);
        }

        private double GetTemperature()
        {
            using (var w = new WebClient())
            {
                var json = w.DownloadString(TEMP_URL);
                json = json.TrimStart(TRIM_START);
                json = json.Trim();
                json = json.TrimEnd(TRIM_END);

                _duomenys = JsonConvert.DeserializeObject<Data>(json);
                _total++;
                _temp += _duomenys.zeno_AT_5s_C;
            }

            return _temp / _total;
        }

        public void InitTimer()
        {
            _timer = new Timer();
            _timer.Tick += timer_Tick;
            _timer.Interval = 3600000; // in miliseconds
            _timer.Start();
        }

        private void timer_Tick(object sender, EventArgs e)
        {
            if (DateTime.Now.Hour == 0)
            {
                _total = 0;
                _temp = 0;
            }
            _label.Text = GetTemperature().ToString();
        }
    }
}
