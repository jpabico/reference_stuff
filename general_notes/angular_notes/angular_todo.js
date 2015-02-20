angular.module('todoapp', ['firebase']);

// scope is an object shared with html; angularFire library is a dependency
function TodoCtrl($scope, angularFire) {

    // Firebase object representing data
    var fireData = new Firebase('https://angular-todo-pabico.firebaseio.com');

    // binds fireData to $scope.todos
    angularFire(fireData, $scope, 'todos');

    // initialize empty todo list
    $scope.todos = [];

    // adds a new list item
    $scope.addTodo = function() {
        var newTodo = {
            done: false, text: $scope.todoText
        };
        $scope.todos.push(newTodo);
        $scope.todoText = "";
    }

    // removes a list item
    $scope.removeTodo = function(start) {
        $scope.todos.splice(start, 1);
    }

    // allows items to be rearranged
    $scope.move = function(index, direction) {
        if(direction === "up") {
            if (index ===0) {
                return;
            }
            index = index - 1;
        }
        if (direction === "down") {
            if (index === $scope.todos.length -1) {
                return;
            }
        }
        var todo = $scope.todos[index]
        $scope.todos.splice(index + 2, 0, todo);
        $scope.todos.splice(index, 1);
    }

}
