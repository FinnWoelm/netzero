`$(function (){

  $(".info-pane").css("display", "none");
  
  // sharing buttons
  $("#sharing-buttons a").click(function() {
    _paq.push(['trackEvent', 'User', 'Share', $(this).data("platform")]);
  });
  
  // commit action
  /*$(".submit-action").click(function() {
    //$(".submit-action").find("button").first().hide(0);
    //$(".submit-action").find("button").first().prop("disabled", true);
    //  $(".submit-action").find("button").first().html("<i class='fa fa-spinner fa-spin'></i> Loading...");
      //$(".submit-action").find("input.submit-btn").first().click();
  });*/
  
  // close highlight pane
  $(".btn-close").click(function() {
    $(".info-pane:visible").slideUp();
    $(".info-pane:hidden").css("display", "none");
    $(".card.active").removeClass("active");
  });
  
  // show highlight pane
  $(".card").click(function() {
    
    // cancel function if this card is already active
    if($(this).hasClass("active"))
      return;
    
    $card = this;
    
    $isSibling = false;
    
    // determine if new card is sibling of current
    $isSibling = $(this).parent().prevAll(".clearfix:visible").first().nextUntil(".clearfix:visible").find(".active").length == 1 ? true : false;
    
    //console.log($(this).parent().prevAll(".clearfix:visible").first().nextUntil(".clearfix:visible"));
    
    // hide highlight
    if ($isSibling) {
      //$(".info-pane .card-holder").fadeTo(0, 0, function(){replaceContent($(this).parents(".info-pane").first())});
      $(".info-pane .card-holder").fadeTo(0, 0);
      $(".info-pane .card-description-holder").fadeTo(0, 0, function(){replaceContent($(this).parents(".info-pane").first())});
    }
    else
      $(".info-pane:not(.clearfix)").hide(0, function(){replaceContent($(this))});
    
    function replaceContent($info_pane) {
      
      $size = $($info_pane).attr("id").substr("info-pane-".length);
      
      // delete content
      $($info_pane).find(".card-holder").html("");
      $($info_pane).find(".card-description-holder").html("");
      $($info_pane).find(".submit-action").html("");

      // insert new content
      $($card).clone().appendTo($($info_pane).find(".card-holder"));
      $($card).find(".card-description").first().clone().appendTo($($info_pane).find(".card-description-holder"));
      $($card).find(".card-action").first().clone().appendTo($($info_pane).find(".submit-action"));

      // reposition little triangle
      $index = $($card).parent().prevUntil(".clearfix-"+$size).filter(".activity").length;
      $($info_pane).find(".triangle").hide(0);
      $($info_pane).find(".triangle").eq($index).show(0);

      // show highlight
      $($info_pane).prev().insertBefore($($card).parent().prevAll(".clearfix-"+$size).first());
      $($info_pane).insertBefore($($card).parent().prevAll(".clearfix-"+$size).first());

      if ($isSibling) {
        $($info_pane).find(".card-description-holder").fadeTo(200, 1);
        $($info_pane).find(".card-holder").fadeTo(200, 1);
        //$("#highlight .card-description-holder").fadeTo(200, 1);
      }
      else {
        $($info_pane).prev().slideDown();
        $($info_pane).slideDown();
      }
      
                  
      // set this card to active
      $(".card.active").removeClass("active");
      $($card).addClass("active");
      
    };
    
  });
  


});`