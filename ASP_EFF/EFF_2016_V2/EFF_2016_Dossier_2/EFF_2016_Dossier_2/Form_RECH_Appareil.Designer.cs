namespace EFF_2016_Dossier_2
{
    partial class Form_RECH_Appareil
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.txt_numero = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.btn_rechercher = new System.Windows.Forms.Button();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.num_prix = new System.Windows.Forms.NumericUpDown();
            this.combo_type = new System.Windows.Forms.ComboBox();
            this.num_nbContrats = new System.Windows.Forms.NumericUpDown();
            this.num_num = new System.Windows.Forms.NumericUpDown();
            this.datetime_dateAchat = new System.Windows.Forms.DateTimePicker();
            this.text_nom = new System.Windows.Forms.TextBox();
            this.label_resultat = new System.Windows.Forms.Label();
            this.btn_enregistrer = new System.Windows.Forms.Button();
            this.groupBox_appareil = new System.Windows.Forms.GroupBox();
            this.label_chiffreAffaire = new System.Windows.Forms.Label();
            this.label_nbClients = new System.Windows.Forms.Label();
            this.label_nbContrats = new System.Windows.Forms.Label();
            this.label11 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.btn_etat = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.num_prix)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.num_nbContrats)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.num_num)).BeginInit();
            this.groupBox_appareil.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // txt_numero
            // 
            this.txt_numero.AutoCompleteCustomSource.AddRange(new string[] {
            "1",
            "2",
            "3",
            "4",
            "5",
            "6",
            "7",
            "8",
            "9",
            "10"});
            this.txt_numero.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.Suggest;
            this.txt_numero.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.CustomSource;
            this.txt_numero.Location = new System.Drawing.Point(81, 19);
            this.txt_numero.Name = "txt_numero";
            this.txt_numero.Size = new System.Drawing.Size(100, 20);
            this.txt_numero.TabIndex = 0;
            this.txt_numero.Text = "1";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(28, 23);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(44, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "Numéro";
            // 
            // btn_rechercher
            // 
            this.btn_rechercher.Location = new System.Drawing.Point(190, 18);
            this.btn_rechercher.Name = "btn_rechercher";
            this.btn_rechercher.Size = new System.Drawing.Size(75, 23);
            this.btn_rechercher.TabIndex = 2;
            this.btn_rechercher.Text = "Rechercher";
            this.btn_rechercher.UseVisualStyleBackColor = true;
            this.btn_rechercher.Click += new System.EventHandler(this.btn_rechercher_Click);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(89, 186);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(31, 13);
            this.label5.TabIndex = 21;
            this.label5.Text = "Type";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(58, 122);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(62, 13);
            this.label6.TabIndex = 23;
            this.label6.Text = "Prix d\'achat";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(20, 154);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(100, 13);
            this.label4.TabIndex = 22;
            this.label4.Text = "Nombre de contrats";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(52, 90);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(68, 13);
            this.label3.TabIndex = 24;
            this.label3.Text = "Date d\'achat";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(91, 58);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(29, 13);
            this.label2.TabIndex = 26;
            this.label2.Text = "Nom";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(76, 26);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(44, 13);
            this.label7.TabIndex = 25;
            this.label7.Text = "Numéro";
            // 
            // num_prix
            // 
            this.num_prix.Location = new System.Drawing.Point(126, 123);
            this.num_prix.Maximum = new decimal(new int[] {
            100000000,
            0,
            0,
            0});
            this.num_prix.Name = "num_prix";
            this.num_prix.Size = new System.Drawing.Size(120, 20);
            this.num_prix.TabIndex = 18;
            // 
            // combo_type
            // 
            this.combo_type.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.combo_type.FormattingEnabled = true;
            this.combo_type.Location = new System.Drawing.Point(126, 189);
            this.combo_type.Name = "combo_type";
            this.combo_type.Size = new System.Drawing.Size(121, 21);
            this.combo_type.TabIndex = 20;
            // 
            // num_nbContrats
            // 
            this.num_nbContrats.Location = new System.Drawing.Point(126, 156);
            this.num_nbContrats.Maximum = new decimal(new int[] {
            100000000,
            0,
            0,
            0});
            this.num_nbContrats.Name = "num_nbContrats";
            this.num_nbContrats.ReadOnly = true;
            this.num_nbContrats.Size = new System.Drawing.Size(120, 20);
            this.num_nbContrats.TabIndex = 19;
            // 
            // num_num
            // 
            this.num_num.Location = new System.Drawing.Point(126, 24);
            this.num_num.Maximum = new decimal(new int[] {
            100000000,
            0,
            0,
            0});
            this.num_num.Name = "num_num";
            this.num_num.ReadOnly = true;
            this.num_num.Size = new System.Drawing.Size(120, 20);
            this.num_num.TabIndex = 17;
            // 
            // datetime_dateAchat
            // 
            this.datetime_dateAchat.Location = new System.Drawing.Point(126, 90);
            this.datetime_dateAchat.Name = "datetime_dateAchat";
            this.datetime_dateAchat.Size = new System.Drawing.Size(200, 20);
            this.datetime_dateAchat.TabIndex = 16;
            // 
            // text_nom
            // 
            this.text_nom.Location = new System.Drawing.Point(126, 57);
            this.text_nom.Name = "text_nom";
            this.text_nom.Size = new System.Drawing.Size(200, 20);
            this.text_nom.TabIndex = 15;
            // 
            // label_resultat
            // 
            this.label_resultat.AutoSize = true;
            this.label_resultat.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_resultat.ForeColor = System.Drawing.Color.Blue;
            this.label_resultat.Location = new System.Drawing.Point(274, 21);
            this.label_resultat.Name = "label_resultat";
            this.label_resultat.Size = new System.Drawing.Size(169, 17);
            this.label_resultat.TabIndex = 27;
            this.label_resultat.Text = "[Description_Resultat]";
            // 
            // btn_enregistrer
            // 
            this.btn_enregistrer.Location = new System.Drawing.Point(126, 226);
            this.btn_enregistrer.Name = "btn_enregistrer";
            this.btn_enregistrer.Size = new System.Drawing.Size(75, 23);
            this.btn_enregistrer.TabIndex = 28;
            this.btn_enregistrer.Text = "Enregistrer";
            this.btn_enregistrer.UseVisualStyleBackColor = true;
            this.btn_enregistrer.Click += new System.EventHandler(this.btn_enregistrer_Click);
            // 
            // groupBox_appareil
            // 
            this.groupBox_appareil.Controls.Add(this.label_chiffreAffaire);
            this.groupBox_appareil.Controls.Add(this.label_nbClients);
            this.groupBox_appareil.Controls.Add(this.label_nbContrats);
            this.groupBox_appareil.Controls.Add(this.label11);
            this.groupBox_appareil.Controls.Add(this.label10);
            this.groupBox_appareil.Controls.Add(this.label9);
            this.groupBox_appareil.Controls.Add(this.label8);
            this.groupBox_appareil.Controls.Add(this.dataGridView1);
            this.groupBox_appareil.Controls.Add(this.label7);
            this.groupBox_appareil.Controls.Add(this.btn_enregistrer);
            this.groupBox_appareil.Controls.Add(this.text_nom);
            this.groupBox_appareil.Controls.Add(this.datetime_dateAchat);
            this.groupBox_appareil.Controls.Add(this.label5);
            this.groupBox_appareil.Controls.Add(this.num_num);
            this.groupBox_appareil.Controls.Add(this.label6);
            this.groupBox_appareil.Controls.Add(this.num_nbContrats);
            this.groupBox_appareil.Controls.Add(this.label4);
            this.groupBox_appareil.Controls.Add(this.combo_type);
            this.groupBox_appareil.Controls.Add(this.label3);
            this.groupBox_appareil.Controls.Add(this.num_prix);
            this.groupBox_appareil.Controls.Add(this.label2);
            this.groupBox_appareil.Enabled = false;
            this.groupBox_appareil.Location = new System.Drawing.Point(24, 57);
            this.groupBox_appareil.Name = "groupBox_appareil";
            this.groupBox_appareil.Size = new System.Drawing.Size(750, 341);
            this.groupBox_appareil.TabIndex = 29;
            this.groupBox_appareil.TabStop = false;
            this.groupBox_appareil.Text = "Informations de l\'appareil";
            // 
            // label_chiffreAffaire
            // 
            this.label_chiffreAffaire.AutoSize = true;
            this.label_chiffreAffaire.Location = new System.Drawing.Point(462, 312);
            this.label_chiffreAffaire.Name = "label_chiffreAffaire";
            this.label_chiffreAffaire.Size = new System.Drawing.Size(13, 13);
            this.label_chiffreAffaire.TabIndex = 32;
            this.label_chiffreAffaire.Text = "_";
            // 
            // label_nbClients
            // 
            this.label_nbClients.AutoSize = true;
            this.label_nbClients.Location = new System.Drawing.Point(462, 294);
            this.label_nbClients.Name = "label_nbClients";
            this.label_nbClients.Size = new System.Drawing.Size(13, 13);
            this.label_nbClients.TabIndex = 32;
            this.label_nbClients.Text = "_";
            // 
            // label_nbContrats
            // 
            this.label_nbContrats.AutoSize = true;
            this.label_nbContrats.Location = new System.Drawing.Point(462, 276);
            this.label_nbContrats.Name = "label_nbContrats";
            this.label_nbContrats.Size = new System.Drawing.Size(13, 13);
            this.label_nbContrats.TabIndex = 32;
            this.label_nbContrats.Text = "_";
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(356, 312);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(77, 13);
            this.label11.TabIndex = 31;
            this.label11.Text = "Chiffre d\'affaire";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(356, 294);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(92, 13);
            this.label10.TabIndex = 31;
            this.label10.Text = "Nombre de clients";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(356, 276);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(100, 13);
            this.label9.TabIndex = 31;
            this.label9.Text = "Nombre de contrats";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(359, 24);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(46, 13);
            this.label8.TabIndex = 30;
            this.label8.Text = "Contrats";
            // 
            // dataGridView1
            // 
            this.dataGridView1.AllowUserToAddRows = false;
            this.dataGridView1.AllowUserToDeleteRows = false;
            this.dataGridView1.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dataGridView1.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells;
            this.dataGridView1.BackgroundColor = System.Drawing.Color.White;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(359, 47);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.ReadOnly = true;
            this.dataGridView1.Size = new System.Drawing.Size(372, 223);
            this.dataGridView1.TabIndex = 29;
            // 
            // btn_etat
            // 
            this.btn_etat.Location = new System.Drawing.Point(659, 18);
            this.btn_etat.Name = "btn_etat";
            this.btn_etat.Size = new System.Drawing.Size(115, 23);
            this.btn_etat.TabIndex = 30;
            this.btn_etat.Text = "Générer un état";
            this.btn_etat.UseVisualStyleBackColor = true;
            this.btn_etat.Click += new System.EventHandler(this.btn_etat_Click);
            // 
            // Form_RECH_Appareil
            // 
            this.AcceptButton = this.btn_rechercher;
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(798, 416);
            this.Controls.Add(this.btn_etat);
            this.Controls.Add(this.groupBox_appareil);
            this.Controls.Add(this.label_resultat);
            this.Controls.Add(this.btn_rechercher);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txt_numero);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "Form_RECH_Appareil";
            this.Text = "Appareils";
            this.Load += new System.EventHandler(this.Form_RECH_Appareil_Load);
            ((System.ComponentModel.ISupportInitialize)(this.num_prix)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.num_nbContrats)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.num_num)).EndInit();
            this.groupBox_appareil.ResumeLayout(false);
            this.groupBox_appareil.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox txt_numero;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btn_rechercher;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.NumericUpDown num_prix;
        private System.Windows.Forms.ComboBox combo_type;
        private System.Windows.Forms.NumericUpDown num_nbContrats;
        private System.Windows.Forms.NumericUpDown num_num;
        private System.Windows.Forms.DateTimePicker datetime_dateAchat;
        private System.Windows.Forms.TextBox text_nom;
        private System.Windows.Forms.Label label_resultat;
        private System.Windows.Forms.Button btn_enregistrer;
        private System.Windows.Forms.GroupBox groupBox_appareil;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Button btn_etat;
        private System.Windows.Forms.Label label_nbContrats;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label_chiffreAffaire;
        private System.Windows.Forms.Label label_nbClients;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Label label10;
    }
}