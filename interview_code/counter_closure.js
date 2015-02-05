function counter() {
    var count = 0;
    var plus = function() {
        count +=1;
        return count;
    }
    return plus;
}
var a = counter(); // assigns function expression to variable a
var b = counter(); // assigns function expression to variable b
a(); // invoke a; value = 1
b(); // invoke b; value =1
b(); // value = 2
a(); // value = 2
a(); // value = 3
document.write(a()); // value = 4; print result in html document
document.write(b()); //value = 3; print result in html document
