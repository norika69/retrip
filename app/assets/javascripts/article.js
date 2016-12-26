$(function() {
  $(".newSet").on("click", function() {
    $(".menulist").toggleClass("active");
    $(".slide_box").next().slideToggle("1000");
  });
});
