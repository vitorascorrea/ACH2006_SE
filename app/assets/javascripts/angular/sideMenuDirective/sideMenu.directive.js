angular.module("Cheffice")
  .directive("sideMenu", [directive]);

function directive(){
  return{
    restrict: 'E',
    templateUrl: 'assets/angular/sideMenuDirective/sideMenu.directive.html',
    controller: ['$scope', controller],
    controllerAs: 'sideMenuCtrl'
  }

  function controller($scope){

  }

}
