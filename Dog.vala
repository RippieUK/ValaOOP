namespace OOP {
    public class Dog : GLib.Object {

        private int hunger = 5;
        private int weight = 5;

        public string name { get; construct; }

        public Dog (string _name) {
            Object (name: _name);
        }

        construct {
            stdout.printf ("New dog object was created. The dog's name is %s", name);
        }

        public void print_name () {
            stdout.printf ("My name is %s\n", name);
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