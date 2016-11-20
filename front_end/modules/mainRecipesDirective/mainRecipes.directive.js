angular.module("Cheffice")
  .directive("mainRecipes", [directive]);

function directive(){
  return{
    restrict: 'E',
    templateUrl: 'modules/mainRecipesDirective/mainRecipes.directive.html',
    controller: ['$scope', controller],
    controllerAs: 'recipesCtrl'
  }

  function controller($scope){
    var ctrl = this;

    ///////////////////////////

  }

}
