/**
Below I am doing a GLib construct of a Rabbit() class
but we are not allowing passing any arguments in during 
the creation/instansiation of this object.

In real life it would be better if colour was set during creation
as the name can change but the rabbit's colour remain the same
throughout its life.

the `name` and `colour` fields are now called properties because
we use the GLib construct way which also allows us to use getters
and setters.
*/

namespace OOP {
    public class Rabbit : GLib.Object {
        public string name { get; private set; }
        public string colour { get; private set; }
        
        construct {
            stdout.printf ("New Rabbit object created.\n");
        }

        public void name_set (string _name) {
            this.name = _name;
        }
        
        public void name_print () {
            stdout.printf ("Name is : %s\n", name);
        }

        public void colour_set ( string _colour ) {
            this.colour = _colour;
        }

        public void colour_print () {
            stdout.printf ("Colour is : %s\n", colour);
        }


    }
}