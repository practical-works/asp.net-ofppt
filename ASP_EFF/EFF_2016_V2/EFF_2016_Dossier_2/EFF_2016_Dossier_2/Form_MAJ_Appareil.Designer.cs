namespace EFF_2016_Dossier_2
{
    partial class Form_MAJ_Appareil
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
            this.components = new System.ComponentModel.Container();
            this.btn_ajouter = new System.Windows.Forms.Button();
            this.btn_enregistrer = new System.Windows.Forms.Button();
            this.btn_supprimer = new System.Windows.Forms.Button();
            this.btn_fermer = new System.Windows.Forms.Button();
            this.btn_premier = new System.Windows.Forms.Button();
            this.btn_precedent = new System.Windows.Forms.Button();
            this.btn_suivant = new System.Windows.Forms.Button();
            this.btn_dernier = new System.Windows.Forms.Button();
            this.text_nom = new System.Windows.Forms.TextBox();
            this.datetime_dateAchat = new System.Windows.Forms.DateTimePicker();
            this.num_num = new System.Windows.Forms.NumericUpDown();
            this.num_nbContrats = new System.Windows.Forms.NumericUpDown();
            this.combo_type = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.num_prix = new System.Windows.Forms.NumericUpDown();
            this.label6 = new System.Windows.Forms.Label();
            this.label_position = new System.Windows.Forms.Label();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.contextMenuStrip1 = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.actualiserToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            ((System.ComponentModel.ISupportInitialize)(this.num_num)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.num_nbContrats)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.num_prix)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.contextMenuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // btn_ajouter
            // 
            this.btn_ajouter.Location = new System.Drawing.Point(393, 20);
            this.btn_ajouter.Name = "btn_ajouter";
            this.btn_ajouter.Size = new System.Drawing.Size(151, 35);
            this.btn_ajouter.TabIndex = 0;
            this.btn_ajouter.Text = "Ajouter";
            this.btn_ajouter.UseVisualStyleBackColor = true;
            this.btn_ajouter.Click += new System.EventHandler(this.btn_ajouter_Click);
            // 
            // btn_enregistrer
            // 
            this.btn_enregistrer.Location = new System.Drawing.Point(393, 63);
            this.btn_enregistrer.Name = "btn_enregistrer";
            this.btn_enregistrer.Size = new System.Drawing.Size(151, 35);
            this.btn_enregistrer.TabIndex = 1;
            this.btn_enregistrer.Text = "Enregistrer";
            this.btn_enregistrer.UseVisualStyleBackColor = true;
            this.btn_enregistrer.Click += new System.EventHandler(this.btn_enregistrer_Click);
            // 
            // btn_supprimer
            // 
            this.btn_supprimer.Location = new System.Drawing.Point(393, 106);
            this.btn_supprimer.Name = "btn_supprimer";
            this.btn_supprimer.Size = new System.Drawing.Size(151, 35);
            this.btn_supprimer.TabIndex = 2;
            this.btn_supprimer.Text = "Supprimer";
            this.btn_supprimer.UseVisualStyleBackColor = true;
            this.btn_supprimer.Click += new System.EventHandler(this.btn_supprimer_Click);
            // 
            // btn_fermer
            // 
            this.btn_fermer.Location = new System.Drawing.Point(393, 149);
            this.btn_fermer.Name = "btn_fermer";
            this.btn_fermer.Size = new System.Drawing.Size(151, 35);
            this.btn_fermer.TabIndex = 3;
            this.btn_fermer.Text = "Fermer";
            this.btn_fermer.UseVisualStyleBackColor = true;
            this.btn_fermer.Click += new System.EventHandler(this.btn_fermer_Click);
            // 
            // btn_premier
            // 
            this.btn_premier.Location = new System.Drawing.Point(53, 230);
            this.btn_premier.Name = "btn_premier";
            this.btn_premier.Size = new System.Drawing.Size(49, 34);
            this.btn_premier.TabIndex = 4;
            this.btn_premier.Text = "<<";
            this.btn_premier.UseVisualStyleBackColor = true;
            this.btn_premier.Click += new System.EventHandler(this.btn_premier_Click);
            // 
            // btn_precedent
            // 
            this.btn_precedent.Location = new System.Drawing.Point(108, 230);
            this.btn_precedent.Name = "btn_precedent";
            this.btn_precedent.Size = new System.Drawing.Size(49, 34);
            this.btn_precedent.TabIndex = 5;
            this.btn_precedent.Text = "<";
            this.btn_precedent.UseVisualStyleBackColor = true;
            this.btn_precedent.Click += new System.EventHandler(this.btn_precedent_Click);
            // 
            // btn_suivant
            // 
            this.btn_suivant.Location = new System.Drawing.Point(227, 230);
            this.btn_suivant.Name = "btn_suivant";
            this.btn_suivant.Size = new System.Drawing.Size(49, 34);
            this.btn_suivant.TabIndex = 6;
            this.btn_suivant.Text = ">";
            this.btn_suivant.UseVisualStyleBackColor = true;
            this.btn_suivant.Click += new System.EventHandler(this.btn_suivant_Click);
            // 
            // btn_dernier
            // 
            this.btn_dernier.Location = new System.Drawing.Point(282, 230);
            this.btn_dernier.Name = "btn_dernier";
            this.btn_dernier.Size = new System.Drawing.Size(49, 34);
            this.btn_dernier.TabIndex = 7;
            this.btn_dernier.Text = ">>";
            this.btn_dernier.UseVisualStyleBackColor = true;
            this.btn_dernier.Click += new System.EventHandler(this.btn_dernier_Click);
            // 
            // text_nom
            // 
            this.text_nom.Location = new System.Drawing.Point(131, 53);
            this.text_nom.Name = "text_nom";
            this.text_nom.Size = new System.Drawing.Size(200, 20);
            this.text_nom.TabIndex = 9;
            // 
            // datetime_dateAchat
            // 
            this.datetime_dateAchat.Location = new System.Drawing.Point(131, 86);
            this.datetime_dateAchat.Name = "datetime_dateAchat";
            this.datetime_dateAchat.Size = new System.Drawing.Size(200, 20);
            this.datetime_dateAchat.TabIndex = 10;
            // 
            // num_num
            // 
            this.num_num.Location = new System.Drawing.Point(131, 20);
            this.num_num.Maximum = new decimal(new int[] {
            100000000,
            0,
            0,
            0});
            this.num_num.Minimum = new decimal(new int[] {
            1,
            0,
            0,
            0});
            this.num_num.Name = "num_num";
            this.num_num.Size = new System.Drawing.Size(120, 20);
            this.num_num.TabIndex = 11;
            this.num_num.Value = new decimal(new int[] {
            1,
            0,
            0,
            0});
            // 
            // num_nbContrats
            // 
            this.num_nbContrats.Location = new System.Drawing.Point(131, 152);
            this.num_nbContrats.Maximum = new decimal(new int[] {
            100000000,
            0,
            0,
            0});
            this.num_nbContrats.Name = "num_nbContrats";
            this.num_nbContrats.ReadOnly = true;
            this.num_nbContrats.Size = new System.Drawing.Size(120, 20);
            this.num_nbContrats.TabIndex = 12;
            // 
            // combo_type
            // 
            this.combo_type.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.combo_type.FormattingEnabled = true;
            this.combo_type.Location = new System.Drawing.Point(131, 185);
            this.combo_type.Name = "combo_type";
            this.combo_type.Size = new System.Drawing.Size(121, 21);
            this.combo_type.TabIndex = 13;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(81, 22);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(44, 13);
            this.label1.TabIndex = 14;
            this.label1.Text = "Numéro";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(96, 54);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(29, 13);
            this.label2.TabIndex = 14;
            this.label2.Text = "Nom";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(57, 86);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(68, 13);
            this.label3.TabIndex = 14;
            this.label3.Text = "Date d\'achat";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(25, 150);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(100, 13);
            this.label4.TabIndex = 14;
            this.label4.Text = "Nombre de contrats";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(94, 182);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(31, 13);
            this.label5.TabIndex = 14;
            this.label5.Text = "Type";
            // 
            // num_prix
            // 
            this.num_prix.Location = new System.Drawing.Point(131, 119);
            this.num_prix.Maximum = new decimal(new int[] {
            100000000,
            0,
            0,
            0});
            this.num_prix.Name = "num_prix";
            this.num_prix.Size = new System.Drawing.Size(120, 20);
            this.num_prix.TabIndex = 12;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(63, 118);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(62, 13);
            this.label6.TabIndex = 14;
            this.label6.Text = "Prix d\'achat";
            // 
            // label_position
            // 
            this.label_position.AutoSize = true;
            this.label_position.Location = new System.Drawing.Point(183, 241);
            this.label_position.Name = "label_position";
            this.label_position.Size = new System.Drawing.Size(18, 13);
            this.label_position.TabIndex = 15;
            this.label_position.Text = "-/-";
            // 
            // dataGridView1
            // 
            this.dataGridView1.AllowUserToAddRows = false;
            this.dataGridView1.AllowUserToDeleteRows = false;
            this.dataGridView1.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dataGridView1.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(393, 230);
            this.dataGridView1.MultiSelect = false;
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.ReadOnly = true;
            this.dataGridView1.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dataGridView1.Size = new System.Drawing.Size(354, 205);
            this.dataGridView1.TabIndex = 16;
            this.dataGridView1.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellClick);
            // 
            // contextMenuStrip1
            // 
            this.contextMenuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.actualiserToolStripMenuItem});
            this.contextMenuStrip1.Name = "contextMenuStrip1";
            this.contextMenuStrip1.Size = new System.Drawing.Size(127, 26);
            // 
            // actualiserToolStripMenuItem
            // 
            this.actualiserToolStripMenuItem.Name = "actualiserToolStripMenuItem";
            this.actualiserToolStripMenuItem.Size = new System.Drawing.Size(126, 22);
            this.actualiserToolStripMenuItem.Text = "Actualiser";
            this.actualiserToolStripMenuItem.Click += new System.EventHandler(this.actualiserToolStripMenuItem_Click);
            // 
            // Form_MAJ_Appareil
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(772, 454);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.label_position);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.num_prix);
            this.Controls.Add(this.combo_type);
            this.Controls.Add(this.num_nbContrats);
            this.Controls.Add(this.num_num);
            this.Controls.Add(this.datetime_dateAchat);
            this.Controls.Add(this.text_nom);
            this.Controls.Add(this.btn_dernier);
            this.Controls.Add(this.btn_suivant);
            this.Controls.Add(this.btn_precedent);
            this.Controls.Add(this.btn_premier);
            this.Controls.Add(this.btn_fermer);
            this.Controls.Add(this.btn_supprimer);
            this.Controls.Add(this.btn_enregistrer);
            this.Controls.Add(this.btn_ajouter);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "Form_MAJ_Appareil";
            this.Text = "Mise à jour des appareils";
            this.Load += new System.EventHandler(this.Form_MAJ_Appareil_Load);
            ((System.ComponentModel.ISupportInitialize)(this.num_num)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.num_nbContrats)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.num_prix)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.contextMenuStrip1.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btn_ajouter;
        private System.Windows.Forms.Button btn_enregistrer;
        private System.Windows.Forms.Button btn_supprimer;
        private System.Windows.Forms.Button btn_fermer;
        private System.Windows.Forms.Button btn_premier;
        private System.Windows.Forms.Button btn_precedent;
        private System.Windows.Forms.Button btn_suivant;
        private System.Windows.Forms.Button btn_dernier;
        private System.Windows.Forms.TextBox text_nom;
        private System.Windows.Forms.DateTimePicker datetime_dateAchat;
        private System.Windows.Forms.NumericUpDown num_num;
        private System.Windows.Forms.NumericUpDown num_nbContrats;
        private System.Windows.Forms.ComboBox combo_type;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.NumericUpDown num_prix;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label_position;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.ContextMenuStrip contextMenuStrip1;
        private System.Windows.Forms.ToolStripMenuItem actualiserToolStripMenuItem;
    }
}