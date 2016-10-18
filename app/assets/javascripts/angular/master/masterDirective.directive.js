angular.module("Cheffice")
  .directive("masterDirective", [directive]);

function directive(){
  return{
    restrict: 'E',
    templateUrl: 'assets/angular/master/masterDirective.directive.html',
    controller: ['$scope', controller],
    controllerAs: 'masterDirectiveCtrl'
  }

  function controller($scope){
  }

}
