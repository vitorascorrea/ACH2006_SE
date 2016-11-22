angular.module("Cheffice")
  .directive("recipe", [directive]);

function directive(){
  return{
    restrict: 'E',
    scope: {
      index: '=',
      recipeObj: '='
    },
    templateUrl: 'modules/recipeDirective/recipe.directive.html',
    controller: ['$scope', '$sce', '$http', controller],
    controllerAs: 'recipeCtrl'
  }

  function controller($scope, $sce, $http){
    var ctrl = this;
    ctrl.how_to = $sce.trustAsHtml($scope.recipeObj.how_to);

    ///////////////////////////




  }

}
