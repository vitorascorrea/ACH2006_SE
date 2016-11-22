angular.module("Cheffice")
  .directive("sideMenu", [directive]);

function directive(){
  return{
    restrict: 'E',
    templateUrl: 'modules/sideMenuDirective/sideMenu.directive.html',
    controller: ['$scope', '$http', controller],
    controllerAs: 'sideMenuCtrl'
  }

  function controller($scope, $http){
    var ctrl = this;
    //public methods
    ctrl.searchRecipes = searchRecipes;

    ////////////

    function searchRecipes(){
      var i = 0;
      var ingredients = "";
      for(i = 0; i < $scope.ingredients.length; i++){
        if(i === $scope.ingredients.length - 1){
          ingredients += $scope.ingredients[i].id;
        }else{
          ingredients += $scope.ingredients[i].id + ",";
        }
      }

      $http.get('http://localhost:3000/filter_recipes/'+JSON.stringify(ingredients), {}).then(function(recipes){
        console.log(recipes.data);
        $scope.recipes = recipes.data;
      });
    }
  }

}
