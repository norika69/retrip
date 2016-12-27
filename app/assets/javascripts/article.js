$(function() {
  $(".newSet").on("click", function() {
    $(".menulist").toggleClass("active");
    $(".slide_box").next().slideToggle("1000");
  });
});
$(function() {
  $(".headerSearchInput").on("click", function() {
    $(".searchList").toggleClass("active");
    $(".search-box").next().slideToggle('1000');
  });
});
