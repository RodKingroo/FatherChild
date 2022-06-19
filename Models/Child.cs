using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace LabelBase.Models
{
    public class Child : INotifyPropertyChanged
    {
        private int _id;
        public int ChildID
        {
            get => _id;
            set
            {
                _id = value;
                OnPropertyChanged();
            }
        }

        private string _first;
        public string Firstname
        {
            get => _first;
            set
            {
                _first = value;
                OnPropertyChanged();
            }
        }

        private string _second;
        public string Secondname
        {
            get => _second;
            set
            {
                _second = value;
                OnPropertyChanged();
            }
        }

        private Father _father;
        public Father Father
        {
            get => _father;
            set
            {
                _father = value;
                OnPropertyChanged();
            }
        }

        public event PropertyChangedEventHandler PropertyChanged;
        public void OnPropertyChanged([CallerMemberName] string prop = "")
        {
            if (PropertyChanged != null)
                PropertyChanged(this, new PropertyChangedEventArgs(prop));
        }
    }
}
