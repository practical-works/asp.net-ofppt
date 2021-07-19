namespace EFF_2016_Dossier_2
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
            this.miseÀJourDesAppareilToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.rechercheDesAppareilsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.miseÀJourDesAppareilToolStripMenuItem,
            this.rechercheDesAppareilsToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(928, 24);
            this.menuStrip1.TabIndex = 1;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // miseÀJourDesAppareilToolStripMenuItem
            // 
            this.miseÀJourDesAppareilToolStripMenuItem.Name = "miseÀJourDesAppareilToolStripMenuItem";
            this.miseÀJourDesAppareilToolStripMenuItem.Size = new System.Drawing.Size(148, 20);
            this.miseÀJourDesAppareilToolStripMenuItem.Text = "Mise à jour des appareils";
            this.miseÀJourDesAppareilToolStripMenuItem.Click += new System.EventHandler(this.miseÀJourDesAppareilToolStripMenuItem_Click);
            // 
            // rechercheDesAppareilsToolStripMenuItem
            // 
            this.rechercheDesAppareilsToolStripMenuItem.Name = "rechercheDesAppareilsToolStripMenuItem";
            this.rechercheDesAppareilsToolStripMenuItem.Size = new System.Drawing.Size(145, 20);
            this.rechercheDesAppareilsToolStripMenuItem.Text = "Recherche des appareils";
            this.rechercheDesAppareilsToolStripMenuItem.Click += new System.EventHandler(this.rechercheDesAppareilsToolStripMenuItem_Click);
            // 
            // Form_Menu
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(928, 524);
            this.Controls.Add(this.menuStrip1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.IsMdiContainer = true;
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "Form_Menu";
            this.Text = "Gestionnaire de location d\'appareils";
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem miseÀJourDesAppareilToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem rechercheDesAppareilsToolStripMenuItem;
    }
}

