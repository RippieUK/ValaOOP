namespace OOP {
    public class Person : GLib.Object {
        public string name { get; construct; }
        public string colour { get; construct; }
        public string sex { get; construct; }
        public int height { get; private set; default = 184; }
        public int weight { get; private set; default = 95; }

        public Person (string _name, string _colour, string _sex) {
            Object (
                name : _name,
                colour : _colour,
                sex : _sex
            );
        }

        construct {
            GLib.print ("New Person object was created.\n");
            GLib.print ("Name: %s\n", name);
            GLib.print ("Colour: %s\n", colour);
            GLib.print ("Sex: %s\n", sex);

            GLib.print ("Default height set at : %d\n", height);
            GLib.print ("Default weight set at : %d\n", weight);
        }

        public void eat {
            weight++
        }
    }
}