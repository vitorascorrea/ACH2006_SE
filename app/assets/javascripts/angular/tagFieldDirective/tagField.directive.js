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
    ctrl.api = $resource("/ingredients/");
    ctrl.insertIngredient = insertIngredient;

    //initialization
    start();

    ///////////////////////////

    function start(){
      ctrl.ingredients = ctrl.api.query();
    }

    function insertIngredient(ingredient){
      if(ingredient.length > 0){
        var new_ingredient = {id: 22, name: ingredient};
        ctrl.ingredients.push(new_ingredient);
        ctrl.newIngredient = "";
      }
    }
  }

}
