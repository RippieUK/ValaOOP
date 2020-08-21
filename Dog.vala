namespace OOP {
    public class Dog : GLib.Object {

        private int hunger = 5;
        private int weight = 5;

        public string colour { get; construct; }
        public string name { get; private set; }

        public Dog (string _colour) {
            Object (
                colour: _colour
            );
        }

        construct {
            stdout.printf ("New dog object was created. The colour is %s\n", colour);
        }

        public void name_set (string _name) {
            this.name = _name;
        }

        public void print_name () {
            stdout.printf ("Name is : %s\n", name);
        }

        public void feed () {
            hunger--;
            weight++;
        }

        public void play () {
            hunger++;
            weight--;
        }

        public void print_weight () {
            stdout.printf ("weight is: %d\n", weight);
        }
    }
}