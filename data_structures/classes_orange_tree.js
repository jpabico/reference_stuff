# not finished

var Orange_tree = function() {
    this.age = 0;
    this.height = 0;
    this.num_fruit = 0;
    this.adult = false;
    this.dead = false;
    this.basket = new Basket();

    this.grow = function() {
        this.age +=1;
        this.num_fruit +=3;
        console.log("tree has aged one year!");
        if(this.age >= 5) {
            this.adult = true;
        }
        if(this.age >=12) {
            this.dead = true;
            document.write("your tree is dead");
            return "dead!";
        }
    }
    this.pick_fruit = function() {
        if(this.num_fruit > 0) {
            this.num_fruit -=1;
            this.basket.contents += 1;
            return "your tree has 1 less piece of fruit!";
        } else {
            document.write("there is no fruit to pick");
            return "no fruit to pick!";
        }
    }


}

var Basket = function() {
    this.contents = 0;
}

var Jonz_tree = new Orange_tree();