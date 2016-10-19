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
        console.log(angular.toJson(new_ingredient));
        postIngredient(angular.toJson(new_ingredient));
      }
    }

    function getIngredients(){
      $resource("/ingredients/").query().$promise.then(function(ingredients){
        $scope.ingredients = ingredients;
        console.log(ingredients);
      });
    }

    function postIngredient(ingredient){
      $resource("/ingredients/").save(ingredient).$promise.then(function(ingredient){
        // $scope.ingredients.push(ingredients);
      }, function(error){
        console.log(error);
      });
    }

  }

}
