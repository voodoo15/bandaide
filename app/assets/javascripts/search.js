$(document).on('ready' function(){
$("#genre").on('change'function(f){
  f.preventDefault();
  var action = $('#genre option:selected').data('id');
  var genre = $('#genre option:selected').data('name');

  console.log(action + " "+ genre );
});

$("#position").on('change'function(f){

f.preventDefault();
var action = $('#position option:selected').data('id');
var genre = $('#position  option:selected').data('name');

console.log(action + " "+ genre );
  marker.visable === false;
});
});
