
var rowWidth = 960;
var margin = 6;

$( document ).ready(function() {
  $('.photoset__row').each(function(i, el){

    let ratios = [];
    $(el).find('img').each(function(i, image){
      ratios.push( imageRatio( image ) );
    });

    let dimensions = calculateDimensions( ratios );
    $(el).find('img').each(function(i, image){
      image.width = dimensions[i].width;
      image.height = dimensions[i].height;
      $(image).css("margin", `${ margin }px`);
      $(image).show();
    });

    $( '.swipebox' ).swipebox();

  });
});

function imageRatio( image ){
  let ratio = ( image.width / image.height );
  return ratio;
}


function calculateDimensions( ratios ){
  let dimensions = [];
  let rowWidthWithoutMargin = rowWidth - ( ratios.length * margin  * 2 );
  let ratiosSum = ratios.reduce(function(a, b) {
    return a + b;
  });
  ratios.forEach(ratio => {
    let height = rowWidthWithoutMargin / ratiosSum;
    let width = ratio * height;
    let dimension = { width: width, height: height };
    dimensions.push( dimension );
  });
  return dimensions;
}
