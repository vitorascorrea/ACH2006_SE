angular.module("Cheffice")
  .directive("master", [directive]);

function directive(){
  return{
    restrict: 'E',
    templateUrl: 'modules/master/master.directive.html',
    controller: ['$scope', controller],
    controllerAs: 'masterDirectiveCtrl'
  }

  function controller($scope){
  }

}
