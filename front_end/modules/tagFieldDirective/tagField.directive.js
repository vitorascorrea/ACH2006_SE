angular.module("Cheffice")
  .directive("tagField", [directive]);

function directive(){
  return{
    restrict: 'E',
    templateUrl: 'modules/tagFieldDirective/tagField.directive.html',
    controller: ['$scope', '$resource', controller],
    controllerAs: 'tagFieldCtrl'
  }

  function controller($scope, $resource){
    var ctrl = this;
    //var initialization
    ctrl.insertIngredient = insertIngredient;
    ctrl.deleteIngredient = deleteIngredient;

    //initialization
    start();

    ///////////////////////////

    function start(){
      getIngredients();
    }

    function insertIngredient(ingredient){
      if(ingredient.length > 0){
        var new_ingredient = {
          'name': ingredient
        };
        postIngredient(angular.toJson(new_ingredient));
      }
    }

    function getIngredients(){
      $resource("http://localhost:3000/ingredients/").query().$promise.then(function(ingredients){
        $scope.ingredients = ingredients;
      });
    }

    function postIngredient(ingredient){
      $resource("http://localhost:3000/ingredients/").save(ingredient).$promise.then(function(ingredient){
        $scope.ingredients.push(ingredient);
        ctrl.newIngredient = null;
      }, function(error){
        // console.log(error);
      });
    }

    function deleteIngredient(ingredient){
      var route = "http://localhost:3000/ingredients/" + ingredient.id;
      $resource(route).remove().$promise.then(function(){
        console.log("deveria ter deletado");
      }, function(error){
        // console.log(error);
      });
    }

  }

}
