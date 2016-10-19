angular.module("Cheffice")
  .directive("tagField", [directive]);

function directive(){
  return{
    restrict: 'E',
    templateUrl: 'assets/angular/tagFieldDirective/tagField.directive.html',
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
      $resource("/ingredients/").query().$promise.then(function(ingredients){
        $scope.ingredients = ingredients;
      });
    }

    function postIngredient(ingredient){
      $resource("/ingredients/").save(ingredient).$promise.then(function(ingredient){
        $scope.ingredients.push(ingredient);
        ctrl.newIngredient = null;
      }, function(error){
        console.log(error);
      });
    }

    function deleteIngredient(ingredient){
      var route = "/ingredients/" + ingredient.id;
      $resource(route).remove().$promise.then(function(){
      }, function(error){
        console.log(error);
      });
    }

  }

}
