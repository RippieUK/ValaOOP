/** 
* Below is a non Glib construct and because we are using that we can do:
* var cat = new Cat ("Garfield"); Only with that construct can we do that.
* See Dog class for another method.
*
* We can pass in arguments using the non GLIB construct method.
* We should however aim to use GLib style. See Dog class.
*/


public class OOP.Cat {
    private int hunger = 5; // field
    private int weight = 5; // field

    private string name; // field

    public Cat (string name) { // non GLIB object way to construct
        this.name = name;
        stdout.printf ("New cat object created named %s\n", name);
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
