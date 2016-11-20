angular.module("Cheffice")
  .directive("recipeThumbnail", [directive]);

function directive(){
  return{
    restrict: 'E',
    scope: {
      name: '@'
    },
    templateUrl: 'modules/recipeThumbnailDirective/recipeThumbnail.directive.html',
    controller: ['$scope', controller],
    controllerAs: 'recipesCtrl'
  }

  function controller($scope){
    var ctrl = this;


    ///////////////////////////

  }

}
