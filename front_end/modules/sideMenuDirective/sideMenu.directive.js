angular.module("Cheffice")
  .directive("sideMenu", [directive]);

function directive(){
  return{
    restrict: 'E',
    templateUrl: 'modules/sideMenuDirective/sideMenu.directive.html',
    controller: ['$scope', controller],
    controllerAs: 'sideMenuCtrl'
  }

  function controller($scope){
    var ctrl = this;
    //public methods
    ctrl.searchRecipes = searchRecipes;

    ////////////

    function searchRecipes(){
      // console.log($scope.ingredients);
    }
  }

}
