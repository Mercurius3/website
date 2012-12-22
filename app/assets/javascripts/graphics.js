jQuery(function() {
	if($("html").hasClass("ie6")) {
	  var paper = new Raphael(document.getElementById("horizon"), "1024",500);
	}
	if(!$("html").hasClass("ie6")) {
	  var paper = new Raphael(document.getElementById("horizon"), "100%",500);
	}
  var horizon = paper.path("M0,0 L0,500 C1200,180 2000,260 2400,340 L2400,0 Z");
  horizon.attr({
    fill: "white",
    stroke: "none"
  });
  paper.setViewBox(0,0,2400,300);
  $("svg").attr("preserveAspectRatio", "xMidYMax");
 
  var brand_paper = new Raphael(document.getElementById("logo"),"25%",150);
  brand_paper.setViewBox(0,0,700,100);
  var logo = brand_paper.set();
  var one = brand_paper.path("m 0,0 c -65.376,13.597 -135.888,8.081 -202.565,-17.506 -1.464,2.744 -2.928,5.474 -4.394,8.189 C -142.298,27.58 -71.043,55.784 6.099,72.305 4.054,48.186 2.021,24.084 0,0");
  var two = brand_paper.path("m 0,0 c -44.147,50.876 -102.963,86.058 -167.571,102.234 2.898,26.234 5.815,52.492 8.751,78.775 77.864,14.778 161.47,17.566 248.076,3.983 C 59.173,123.176 29.423,61.511 0,0");
  var three = brand_paper.path("m 0,0 c 0,-21.164 -17.148,-38.313 -38.311,-38.313 -21.161,0 -38.31,17.149 -38.31,38.313 0,21.158 17.149,38.313 38.31,38.313 C -17.148,38.313 0,21.158 0,0");
  var four = brand_paper.path("m 0,0 c -4.854,-6.468 -12.65,-8.813 -17.406,-5.234 -4.764,3.566 -4.683,11.713 0.171,18.172 4.853,6.466 12.642,8.815 17.406,5.236 C 4.926,14.601 4.852,6.466 0,0");
  var five = brand_paper.path("m 0,0 c -46.288,1.464 -93.834,-14.903 -131.358,-50.282 -4.602,4.187 -9.205,8.375 -13.806,12.562 38.361,48.019 93.152,75.165 150.35,80.258 L 0,0 z");
  var six = brand_paper.path("m 0,0 c -30.128,38.97 -73.814,61.394 -119.783,66.092 2.75,14.74 5.5,29.48 8.249,44.22 C -54.012,111.385 4.642,90.295 50.404,45.864 33.603,30.576 16.801,15.288 0,0");
  logo.push(
    one,
    two,
    three,
    four,
    five,
    six
  );
  logo.attr({stroke:"none"});
  one.transform("r180s-1,1T400,100").attr({fill:"#a55298"});
  two.transform("r180s-1,1T582,66").attr({fill:"#e97438"});
  three.transform("r180s-1,1T485,210").attr({fill:"#373535"});
  four.transform("r180s-1,1T455,190").attr({fill:"#ffffff"});
  five.transform("r180s-1,1T440,150").attr({fill:"#373535"});
  six.transform("r180s-1,1T570,99").attr({fill:"#373535"});

	// Make logo text fit to its div
  $('#logo').fitText(7);
  $('#tagline').fitText(2.5);

});