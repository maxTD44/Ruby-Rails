// // JSON from the server
// var xhttp: = new XMLHttpRequest();
// xhttp.onreadystatechange = function(){
//   var domElement = document.getElementById('recipe_preview');
//
//   if (xhttp.readyState == 4 && xhttp.status == 200) {
//     var response = JSON.parse(xhttp.responseText);
//     domElement.innerHTML = response.title;
//   }else{
//   domElement.innerHTML = "No response. The server may be down."
//   };
// };


////////////////////

$(document).ready(function(){
  var domElement = $('#recipe_preview');

  function newRecipe(){
  $.ajax({
    dataType: 'json',
    url: '/recipes/get_random_recipe',
    success: function(data){
        domElement.html("<h1>Featured Recipe: " + data.title + "</h1></br><img src='" + data.image + "'/> <p><a href='/recipes/" + data.id + "'>Check out this recipe</a></p>");
      },
      error: function(){
        domElement.html("Enter the site and be the first to add a recipe!");
      }
    });
  };
    newRecipe();
    setInterval(newRecipe, 5000);
});
