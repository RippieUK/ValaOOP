/*
Below we are doubg a GLib style object creation but we are also
using the non GLib object construct so that we can pass the argument
`colour` in during creation. Without this non GLib style, this would
not be possible.

Colour will not change for a dog after creation, hence why i made it 
a construct so it can only be set during construct.

Name can change many times after creation, hence why i made that a private set.
I made it private set because i want the class to control how to set the property
which would also allow us to validate code inside that method if we so wanted to.
*/
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