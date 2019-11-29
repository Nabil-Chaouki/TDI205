﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace TP6_WindowsForm
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        public void Affiche_DataGV()
        {
            dataGV1.DataSource = null;
            dataGV1.DataSource = new Gestion_de_livre().Affichier();
        }
        private void btnAjouter_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(text_id.Text);
            string titre = text_titre.Text;
            string catg = text_catg.Text;
            string nom_aut = text_nom.Text;

            Livre l = new Livre(id,titre,catg,nom_aut);

            new Gestion_de_livre().Ajouter(l);

            this.Affiche_DataGV();


            label_ID.Text = dataGV1.RowCount.ToString();

        }

        private void btnSup_Click(object sender, EventArgs e)
        {
            int id= Convert.ToInt32(text_id.Text);
            new Gestion_de_livre().Supprimer(id);
            this.Affiche_DataGV();
        }

        private void btnMod_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(text_id.Text);
            string titre = text_titre.Text;
            string catg = text_catg.Text;
            string nom_aut = text_nom.Text;

            Livre l = new Livre(id, titre, catg, nom_aut);

            new Gestion_de_livre().Modifier(l);

            this.Affiche_DataGV();
        }

        private void btnAnnuler_Click(object sender, EventArgs e)
        {
            text_id.Text="";
            text_titre.Text="";
             text_catg.Text="";
             text_nom.Text="";
        }

        private void btnFermer_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnRech_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(text_rech.Text);

           int trouve= new Gestion_de_livre().Recherche(id);

            if (trouve != -1)
            {
                MessageBox.Show("le livre existe dans la bibliotheque");
            }
            else
            {
                MessageBox.Show("le livre n'existe pas !!!!!");
            }
        }
    }
}