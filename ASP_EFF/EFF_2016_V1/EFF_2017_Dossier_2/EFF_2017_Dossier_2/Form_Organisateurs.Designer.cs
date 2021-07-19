namespace EFF_2017_Dossier_2
{
    partial class Form_Organisateurs
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
            this.txt_nom = new System.Windows.Forms.TextBox();
            this.txt_prenom = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.txt_email = new System.Windows.Forms.MaskedTextBox();
            this.btn_ajouter = new System.Windows.Forms.Button();
            this.btn_modifier = new System.Windows.Forms.Button();
            this.btn_supprimer = new System.Windows.Forms.Button();
            this.num_ID = new System.Windows.Forms.NumericUpDown();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.btn_dernier = new System.Windows.Forms.Button();
            this.btn_suivant = new System.Windows.Forms.Button();
            this.btn_precedent = new System.Windows.Forms.Button();
            this.btn_premier = new System.Windows.Forms.Button();
            this.txt_pass = new System.Windows.Forms.TextBox();
            this.btn_refresh_gridView = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.num_ID)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // txt_nom
            // 
            this.txt_nom.Location = new System.Drawing.Point(92, 54);
            this.txt_nom.Name = "txt_nom";
            this.txt_nom.Size = new System.Drawing.Size(120, 20);
            this.txt_nom.TabIndex = 1;
            this.txt_nom.Text = "sans_nom";
            // 
            // txt_prenom
            // 
            this.txt_prenom.Location = new System.Drawing.Point(92, 80);
            this.txt_prenom.Name = "txt_prenom";
            this.txt_prenom.Size = new System.Drawing.Size(120, 20);
            this.txt_prenom.TabIndex = 1;
            this.txt_prenom.Text = "sans_prenom";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(68, 20);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(18, 13);
            this.label1.TabIndex = 2;
            this.label1.Text = "ID";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(57, 60);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(29, 13);
            this.label2.TabIndex = 2;
            this.label2.Text = "Nom";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(43, 85);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(43, 13);
            this.label3.TabIndex = 2;
            this.label3.Text = "Prénom";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(57, 123);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(32, 13);
            this.label4.TabIndex = 2;
            this.label4.Text = "Email";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(21, 149);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(71, 13);
            this.label5.TabIndex = 3;
            this.label5.Text = "Mot de passe";
            // 
            // txt_email
            // 
            this.txt_email.Location = new System.Drawing.Point(92, 120);
            this.txt_email.Name = "txt_email";
            this.txt_email.Size = new System.Drawing.Size(120, 20);
            this.txt_email.TabIndex = 4;
            this.txt_email.Text = "no_mail@mail.com";
            // 
            // btn_ajouter
            // 
            this.btn_ajouter.Location = new System.Drawing.Point(235, 13);
            this.btn_ajouter.Name = "btn_ajouter";
            this.btn_ajouter.Size = new System.Drawing.Size(75, 30);
            this.btn_ajouter.TabIndex = 5;
            this.btn_ajouter.Text = "Ajouter";
            this.btn_ajouter.UseVisualStyleBackColor = true;
            this.btn_ajouter.Click += new System.EventHandler(this.btn_ajouter_Click);
            // 
            // btn_modifier
            // 
            this.btn_modifier.Location = new System.Drawing.Point(235, 51);
            this.btn_modifier.Name = "btn_modifier";
            this.btn_modifier.Size = new System.Drawing.Size(75, 30);
            this.btn_modifier.TabIndex = 6;
            this.btn_modifier.Text = "Modifier";
            this.btn_modifier.UseVisualStyleBackColor = true;
            this.btn_modifier.Click += new System.EventHandler(this.btn_modifier_Click);
            // 
            // btn_supprimer
            // 
            this.btn_supprimer.Location = new System.Drawing.Point(235, 89);
            this.btn_supprimer.Name = "btn_supprimer";
            this.btn_supprimer.Size = new System.Drawing.Size(75, 30);
            this.btn_supprimer.TabIndex = 7;
            this.btn_supprimer.Text = "Supprimer";
            this.btn_supprimer.UseVisualStyleBackColor = true;
            this.btn_supprimer.Click += new System.EventHandler(this.btn_supprimer_Click);
            // 
            // num_ID
            // 
            this.num_ID.Location = new System.Drawing.Point(92, 13);
            this.num_ID.Minimum = new decimal(new int[] {
            1,
            0,
            0,
            0});
            this.num_ID.Name = "num_ID";
            this.num_ID.Size = new System.Drawing.Size(120, 20);
            this.num_ID.TabIndex = 8;
            this.num_ID.Value = new decimal(new int[] {
            1,
            0,
            0,
            0});
            // 
            // dataGridView1
            // 
            this.dataGridView1.AllowUserToAddRows = false;
            this.dataGridView1.AllowUserToDeleteRows = false;
            this.dataGridView1.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dataGridView1.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.DisplayedCells;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(331, 13);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.ReadOnly = true;
            this.dataGridView1.Size = new System.Drawing.Size(321, 224);
            this.dataGridView1.TabIndex = 9;
            // 
            // btn_dernier
            // 
            this.btn_dernier.Location = new System.Drawing.Point(147, 240);
            this.btn_dernier.Name = "btn_dernier";
            this.btn_dernier.Size = new System.Drawing.Size(38, 32);
            this.btn_dernier.TabIndex = 10;
            this.btn_dernier.Text = ">>";
            this.btn_dernier.UseVisualStyleBackColor = true;
            this.btn_dernier.Click += new System.EventHandler(this.btn_dernier_Click);
            // 
            // btn_suivant
            // 
            this.btn_suivant.Location = new System.Drawing.Point(103, 240);
            this.btn_suivant.Name = "btn_suivant";
            this.btn_suivant.Size = new System.Drawing.Size(38, 32);
            this.btn_suivant.TabIndex = 10;
            this.btn_suivant.Text = ">";
            this.btn_suivant.UseVisualStyleBackColor = true;
            this.btn_suivant.Click += new System.EventHandler(this.btn_suivant_Click);
            // 
            // btn_precedent
            // 
            this.btn_precedent.Location = new System.Drawing.Point(59, 240);
            this.btn_precedent.Name = "btn_precedent";
            this.btn_precedent.Size = new System.Drawing.Size(38, 32);
            this.btn_precedent.TabIndex = 10;
            this.btn_precedent.Text = "<";
            this.btn_precedent.UseVisualStyleBackColor = true;
            this.btn_precedent.Click += new System.EventHandler(this.btn_precedent_Click);
            // 
            // btn_premier
            // 
            this.btn_premier.Location = new System.Drawing.Point(15, 240);
            this.btn_premier.Name = "btn_premier";
            this.btn_premier.Size = new System.Drawing.Size(38, 32);
            this.btn_premier.TabIndex = 10;
            this.btn_premier.Text = "<<";
            this.btn_premier.UseVisualStyleBackColor = true;
            this.btn_premier.Click += new System.EventHandler(this.btn_premier_Click);
            // 
            // txt_pass
            // 
            this.txt_pass.Location = new System.Drawing.Point(92, 146);
            this.txt_pass.Name = "txt_pass";
            this.txt_pass.PasswordChar = '•';
            this.txt_pass.Size = new System.Drawing.Size(120, 20);
            this.txt_pass.TabIndex = 11;
            this.txt_pass.Text = "nopass";
            // 
            // btn_refresh_gridView
            // 
            this.btn_refresh_gridView.Location = new System.Drawing.Point(590, 247);
            this.btn_refresh_gridView.Name = "btn_refresh_gridView";
            this.btn_refresh_gridView.Size = new System.Drawing.Size(62, 26);
            this.btn_refresh_gridView.TabIndex = 12;
            this.btn_refresh_gridView.Text = "Actualiser";
            this.btn_refresh_gridView.UseVisualStyleBackColor = true;
            this.btn_refresh_gridView.Click += new System.EventHandler(this.btn_refresh_gridView_Click);
            // 
            // Form_Organisateurs
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(667, 287);
            this.Controls.Add(this.btn_refresh_gridView);
            this.Controls.Add(this.txt_pass);
            this.Controls.Add(this.btn_premier);
            this.Controls.Add(this.btn_precedent);
            this.Controls.Add(this.btn_suivant);
            this.Controls.Add(this.btn_dernier);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.num_ID);
            this.Controls.Add(this.btn_supprimer);
            this.Controls.Add(this.btn_modifier);
            this.Controls.Add(this.btn_ajouter);
            this.Controls.Add(this.txt_email);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txt_prenom);
            this.Controls.Add(this.txt_nom);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "Form_Organisateurs";
            this.Text = "Organisateurs";
            this.Load += new System.EventHandler(this.Form_Organisateurs_Load);
            ((System.ComponentModel.ISupportInitialize)(this.num_ID)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox txt_nom;
        private System.Windows.Forms.TextBox txt_prenom;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.MaskedTextBox txt_email;
        private System.Windows.Forms.Button btn_ajouter;
        private System.Windows.Forms.Button btn_modifier;
        private System.Windows.Forms.Button btn_supprimer;
        private System.Windows.Forms.NumericUpDown num_ID;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Button btn_dernier;
        private System.Windows.Forms.Button btn_suivant;
        private System.Windows.Forms.Button btn_precedent;
        private System.Windows.Forms.Button btn_premier;
        private System.Windows.Forms.TextBox txt_pass;
        private System.Windows.Forms.Button btn_refresh_gridView;
    }
}