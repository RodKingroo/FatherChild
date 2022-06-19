using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace LabelBase.Models
{
    public class Father : INotifyPropertyChanged
    {

        private int _id;
        public int FatherID
        {
            get => _id;
            set
            {
                _id = value;
                OnPropertyChanged();
            }
        }

        private string _firstname;
        public string Firstname
        {
            get => _firstname;
            set
            {
                _firstname = value;
                OnPropertyChanged();
            }
        }

        private string _secondname;
        public string Secondname
        {
            get => _secondname;
            set
            {
                _secondname = value;
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
