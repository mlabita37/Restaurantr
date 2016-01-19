// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
console.log("ready");

$("#open-modal").on('click', function(){
  $('#modal').toggle();
})

$("#close-modal").on('click', function(){
  $('#modal').toggle();
  var $imgUrl = $('#img-url');
  $imgUrl.val('');


})

$("#submit-btn").on('click', function(){
//grab value of input box
  var $imgUrl = $('#img-url');
  //creting image tag src = value of that input box
  var $imgTag = $('<img>').attr('src', $imgUrl.val());
  //clear value of input box
  $imgUrl.val('');
  //close our modal
  $('#modal').toggle();
  //image tag appends to the body
  $('body').append($imgTag);
})
