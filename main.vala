namespace OOP {
    public int main (string[] args) {
        var cat = new Cat ("Garfield");
        cat.print_name ();
        cat.print_weight ();
        cat.feed();
        cat.print_weight();
        cat.play ();
        cat.print_weight ();

        var dog = new Dog ("Brown");
        dog.name_set ("Bernard");
        dog.print_name ();

        var rabbit = new Rabbit ();
        rabbit.name_set ("Bianca");
        rabbit.name_print ();
        rabbit.colour_set ("White");
        rabbit.colour_print ();
        
        return 0;
    }
}

