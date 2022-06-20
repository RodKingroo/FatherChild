using LabelBase.Models;
using System;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.IO;
using System.Runtime.CompilerServices;
using System.Windows;

namespace LabelBase
{
    public class ContextView : INotifyPropertyChanged
    {
        public ObservableCollection<Father> Fathers { get; }
        public ObservableCollection<Child> Children { get; }

        private Father _selectedFather;
        public Father SelectedFathers
        {
            get => _selectedFather;
            set
            {
                _selectedFather = value;
                OnPropertyChanged();
            }
        }

        private RelayCommand _addFatherButton;
        public RelayCommand AddFatherButton
        {
            get
            {
                return _addFatherButton ?? (_addFatherButton = new RelayCommand(obj =>
                {
                    Father f = new Father();
                    Random r = new Random();

                    f.FatherID = r.Next(99);
                    Fathers.Insert(Fathers.Count, f);
                    SelectedFathers = f;
                }));
            }
        }

        private Child _selectedChild;
        public Child SelectedChildren
        {
            get => _selectedChild;
            set
            {
                _selectedChild = value;
                OnPropertyChanged();
            }
        }

        private RelayCommand _addChildButton;
        public RelayCommand AddChildButton
        {
            get
            {
                return _addChildButton ?? (_addChildButton = new RelayCommand(obj =>
                {
                    Child c = new Child();
                    Random r = new Random();

                    c.ChildID = r.Next(99);
                    Children.Insert(Children.Count, c);
                    SelectedChildren = c;
                }));
            }
        }

        private RelayCommand _save;
        public RelayCommand SaveButton
        {
            get
            {
                return _save ?? (_save = new RelayCommand(obj =>
                {
                    StreamWriter swChild = new StreamWriter($"{AppDomain.CurrentDomain.BaseDirectory}/save/child.lbs", false);
                    StreamWriter swFather = new StreamWriter($"{AppDomain.CurrentDomain.BaseDirectory}/save/father.lbs", false);

                    foreach (Child item in Children)
                    {
                        string sandwich = $"{item.ChildID};{item.Firstname};{item.Secondname};{item.Father.FatherID}";
                        swChild.WriteLine(sandwich);
                    }
                    swChild.Close();
                    foreach (Father item in Fathers)
                    {
                        string sandwich = $"{item.FatherID};{item.Firstname};{item.Secondname}";
                        swFather.WriteLine(sandwich);
                    }
                    swFather.Close();
                    MessageBox.Show("Complete");

                }));
            }
        }

        private RelayCommand _load;
        public RelayCommand LoadButton
        {
            get
            {
                return _load ?? (_load = new RelayCommand(obj =>
                {
                    
                    

                    string lineChild, lineFather;
                    using (StreamReader srFather = new StreamReader($"{AppDomain.CurrentDomain.BaseDirectory}/save/father.lbs", false)) { 
                        while ((lineFather = srFather.ReadLine()) != null)
                        {
                            string[] word = lineFather.Split(';');
                            Father f = new Father();
                            f.FatherID = int.Parse(word[0]);
                            f.Firstname = word[1];
                            f.Secondname = word[2];
                            Fathers.Add(f);
                        }
                        srFather.Close();
                    }
                    using (StreamReader srChild = new StreamReader($"{AppDomain.CurrentDomain.BaseDirectory}/save/child.lbs", false)) { 
                        while ((lineChild = srChild.ReadLine()) != null)
                        {
                            string[] word = lineChild.Split(';');
                            Child c = new Child();
                            c.ChildID = int.Parse(word[0]);
                            c.Firstname = word[1];
                            c.Secondname = word[2];
                            foreach (Father item in Fathers)
                            {
                                if (item.FatherID == int.Parse(word[3])) c.Father = item;
                            } 

                            Children.Add(c);
                        }
                    srChild.Close();
                    }

                    MessageBox.Show("Complete");
                }));
            }
        }

        public ContextView()
        {

            Fathers = new ObservableCollection<Father>();
            Children = new ObservableCollection<Child>();

        }

        public event PropertyChangedEventHandler PropertyChanged;
        public void OnPropertyChanged([CallerMemberName] string prop = "")
        {
            if (PropertyChanged != null)
                PropertyChanged(this, new PropertyChangedEventArgs(prop));
        }
    }
}
