namespace EFF_2017_Dossier_2
{
    partial class Form_Menu
    {
        /// <summary>
        /// Variable nécessaire au concepteur.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Nettoyage des ressources utilisées.
        /// </summary>
        /// <param name="disposing">true si les ressources managées doivent être supprimées ; sinon, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Code généré par le Concepteur Windows Form

        /// <summary>
        /// Méthode requise pour la prise en charge du concepteur - ne modifiez pas
        /// le contenu de cette méthode avec l'éditeur de code.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form_Menu));
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.organisateursToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.consultationCampagnesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.campagnesRéussToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.participationsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.rapportsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.rapportDesParticipationsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.graphiqueDesParticipationsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.organisateursToolStripMenuItem,
            this.consultationCampagnesToolStripMenuItem,
            this.campagnesRéussToolStripMenuItem,
            this.participationsToolStripMenuItem,
            this.rapportsToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(768, 24);
            this.menuStrip1.TabIndex = 1;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // organisateursToolStripMenuItem
            // 
            this.organisateursToolStripMenuItem.Name = "organisateursToolStripMenuItem";
            this.organisateursToolStripMenuItem.Size = new System.Drawing.Size(92, 20);
            this.organisateursToolStripMenuItem.Text = "Organisateurs";
            this.organisateursToolStripMenuItem.Click += new System.EventHandler(this.organisateursToolStripMenuItem_Click);
            // 
            // consultationCampagnesToolStripMenuItem
            // 
            this.consultationCampagnesToolStripMenuItem.Name = "consultationCampagnesToolStripMenuItem";
            this.consultationCampagnesToolStripMenuItem.Size = new System.Drawing.Size(82, 20);
            this.consultationCampagnesToolStripMenuItem.Text = "Campagnes";
            this.consultationCampagnesToolStripMenuItem.Click += new System.EventHandler(this.consultationCampagnesToolStripMenuItem_Click);
            // 
            // campagnesRéussToolStripMenuItem
            // 
            this.campagnesRéussToolStripMenuItem.BackColor = System.Drawing.Color.LawnGreen;
            this.campagnesRéussToolStripMenuItem.Name = "campagnesRéussToolStripMenuItem";
            this.campagnesRéussToolStripMenuItem.Size = new System.Drawing.Size(183, 20);
            this.campagnesRéussToolStripMenuItem.Text = "Campagnes accomplies  (2017)";
            this.campagnesRéussToolStripMenuItem.Click += new System.EventHandler(this.campagnesRéussToolStripMenuItem_Click);
            // 
            // participationsToolStripMenuItem
            // 
            this.participationsToolStripMenuItem.Name = "participationsToolStripMenuItem";
            this.participationsToolStripMenuItem.Size = new System.Drawing.Size(91, 20);
            this.participationsToolStripMenuItem.Text = "Participations";
            this.participationsToolStripMenuItem.Click += new System.EventHandler(this.participationsToolStripMenuItem_Click);
            // 
            // rapportsToolStripMenuItem
            // 
            this.rapportsToolStripMenuItem.BackColor = System.Drawing.Color.Yellow;
            this.rapportsToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.rapportDesParticipationsToolStripMenuItem,
            this.graphiqueDesParticipationsToolStripMenuItem});
            this.rapportsToolStripMenuItem.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Bold);
            this.rapportsToolStripMenuItem.Name = "rapportsToolStripMenuItem";
            this.rapportsToolStripMenuItem.Size = new System.Drawing.Size(150, 20);
            this.rapportsToolStripMenuItem.Text = "Rapports et Graphiques";
            // 
            // rapportDesParticipationsToolStripMenuItem
            // 
            this.rapportDesParticipationsToolStripMenuItem.Name = "rapportDesParticipationsToolStripMenuItem";
            this.rapportDesParticipationsToolStripMenuItem.Size = new System.Drawing.Size(232, 22);
            this.rapportDesParticipationsToolStripMenuItem.Text = "Rapport des participations";
            this.rapportDesParticipationsToolStripMenuItem.Click += new System.EventHandler(this.rapportDesParticipationsToolStripMenuItem_Click);
            // 
            // graphiqueDesParticipationsToolStripMenuItem
            // 
            this.graphiqueDesParticipationsToolStripMenuItem.Name = "graphiqueDesParticipationsToolStripMenuItem";
            this.graphiqueDesParticipationsToolStripMenuItem.Size = new System.Drawing.Size(232, 22);
            this.graphiqueDesParticipationsToolStripMenuItem.Text = "Graphique des participations";
            this.graphiqueDesParticipationsToolStripMenuItem.Click += new System.EventHandler(this.graphiqueDesParticipationsToolStripMenuItem_Click);
            // 
            // Form_Menu
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(768, 417);
            this.Controls.Add(this.menuStrip1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.IsMdiContainer = true;
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "Form_Menu";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Human-Co Manager";
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem organisateursToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem consultationCampagnesToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem campagnesRéussToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem participationsToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem rapportsToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem rapportDesParticipationsToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem graphiqueDesParticipationsToolStripMenuItem;
    }
}

