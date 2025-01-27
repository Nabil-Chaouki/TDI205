﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Mode_Connecter
{
    public partial class Form1 : Form
    {
        GestionStagaires gs = new GestionStagaires();
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                int i = int.Parse(this.textBox1.Text);
                string nom = this.textBox2.Text;
                string prenom = this.textBox3.Text;
                gs.Ajouter(new Stagiaire(i, nom, prenom));
                MessageBox.Show("Done");
                textBox1.Text = "";
                textBox2.Text = "";
                textBox3.Text = "";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

        }

        private void button2_Click(object sender, EventArgs e)
        {
            try
            {
                int i = int.Parse(this.textBox1.Text);
                string nom = this.textBox2.Text;
                string prenom = this.textBox3.Text;
                this.gs.Modifier(new Stagiaire(i, nom, prenom));
                MessageBox.Show("Done");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            try
            {
                int i = int.Parse(this.textBox1.Text);

                if (MessageBox.Show("are you sure", "attention", MessageBoxButtons.YesNo, MessageBoxIcon.Exclamation) == DialogResult.Yes)
                    this.gs.Supprimer(i);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void button4_Click(object sender, EventArgs e)
        {
            List<Stagiaire> lst = this.gs.Afficher();
            this.dataGridView1.DataSource = lst;
        }
    }
}
