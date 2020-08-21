namespace OOP {
    public class Rabbit : GLib.Object {
        public string name { get; private set; }
        public string colour { get; construct; }
        
        construct {
            colour = "beige";
            stdout.printf ("Rabbit created, colour is %s\n", colour);
        }

        public void name_set (string _name) {
            this.name = _name;
        }
        
        public void name_print () {
            stdout.printf ("%s\n", name);
        }


    }
}