using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.IO;


namespace Leapfrog3
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        readonly List<string> processedwordlist=new List<string>(); 
        Dictionary<string,int> wordDictionary=new Dictionary<string, int>(); 
        
      
        private void button1_Click(object sender, EventArgs e)
        {

            StreamReader reader = new StreamReader(textBox2.Text);

           
            string[] words = reader.ReadToEnd().Split(null);

            int count = 0;


            for (int i = 0; i < words.Count(); i++)
            {
                count = 0;
                if (!processedwordlist.Contains(words[i]))
                {
                    

                    for (int j = 0; j < words.Count(); j++)
                    {
                        if (words[i] == words[j])
                        {
                            count++;
                        }
                    }

                    wordDictionary.Add(words[i],count);
                    processedwordlist.Add(words[i]);
                }

                

            }


            textBox1.Text = textBox1.Text + Environment.NewLine + "Unique Words: ";

            for (int k = 0; k < wordDictionary.Count; k++)
            {
                if (wordDictionary[processedwordlist[k]] == 1)
                {
                    textBox1.Text += processedwordlist[k] + ", ";

                }
            }
            textBox1.Text = textBox1.Text + Environment.NewLine + "Duplicate Words: " ;

            for (int k = 0; k < wordDictionary.Count; k++)
            {
             
                 if (wordDictionary[processedwordlist[k]]>1)
                 {
                     textBox1.Text += processedwordlist[k] + "-" + wordDictionary[processedwordlist[k]].ToString() + ", ";
                                    

                 }
            }

            textBox1.Text = textBox1.Text + Environment.NewLine + "Duplicate Eliminated : ";

            for (int k = 0; k < wordDictionary.Count; k++)
            {

               textBox1.AppendText(processedwordlist[k]+" ");
            }

            
        }

        private void btnbrowse_Click(object sender, EventArgs e)
        {
            openFileDialog1.ShowDialog();
            textBox2.Text = openFileDialog1.FileName;
        }
    }
}
