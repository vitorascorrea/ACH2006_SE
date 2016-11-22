angular.module("Cheffice")
  .directive("tagField", [directive]);

function directive(){
  return{
    restrict: 'E',
    templateUrl: 'modules/tagFieldDirective/tagField.directive.html',
    controller: ['$scope', '$resource', controller],
    controllerAs: 'tagFieldCtrl'
  }

  function controller($scope, $resource){
    var ctrl = this;
    //var initialization
    ctrl.insertIngredient = insertIngredient;
    ctrl.deleteIngredient = deleteIngredient;

    //initialization
    start();

    ///////////////////////////

    function start(){
      getIngredients();
    }

    function insertIngredient(ingredient){
      if(ingredient.length > 0){
        var new_ingredient = {
          'name': ingredient
        };
        postIngredient(angular.toJson(new_ingredient));
      }
    }

    function getIngredients(){
      $resource("http://localhost:3000/ingredients/").query().$promise.then(function(ingredients){
        $scope.ingredients = [];
        for(var i = 0; i < 5; i++){
          var a = Math.floor(Math.random()*ingredients.length);
          if($scope.ingredients.indexOf(ingredients[a]) === -1){
            $scope.ingredients.push(ingredients[a]);
          }
        }
      });
    }

    function postIngredient(ingredient){
      $resource("http://localhost:3000/ingredients/").save(ingredient).$promise.then(function(ingredient){
        $scope.ingredients.push(ingredient);
        ctrl.newIngredient = null;
      }, function(error){
        // console.log(error);
      });
    }

    function deleteIngredient(ingredient){
      // var route = "http://localhost:3000/ingredients/" + ingredient.id;
      // $resource(route).remove().$promise.then(function(){
      //   console.log("deveria ter deletado");
      // }, function(error){
      //   // console.log(error);
      // });
    }

  }

}
