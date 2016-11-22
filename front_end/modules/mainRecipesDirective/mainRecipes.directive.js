angular.module("Cheffice")
  .directive("mainRecipes", [directive]);

function directive(){
  return{
    restrict: 'E',
    templateUrl: 'modules/mainRecipesDirective/mainRecipes.directive.html',
    controller: ['$scope', '$http', controller],
    controllerAs: 'recipesCtrl'
  }

  function controller($scope, $http){
    var ctrl = this;
    ctrl.setRating = setRating;

    ///////////////////////////

    function setRating(recipe, rate){
      recipe.rating = rate;
      $http.patch('http://localhost:3000/recipes/' + recipe.id, {rating: rate}).then(function(recipe){
        console.log(recipe);
      });
    }

  }

}
