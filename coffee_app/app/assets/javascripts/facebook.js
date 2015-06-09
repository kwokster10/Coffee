function popupCenter(url, width, height, name) {
  var left = (screen.width/2)-(width/2);
  var top = (screen.height/2)-(height/2);
  return window.open(url, name, "menubar=no,toolbar=no,status=no,width="+width+",height="+height+",toolbar=no,left="+left+",top="+top);
}

$("a.popup").click(function(e) {
  popupCenter($(this).attr("href"), $(this).attr("data-width"), $(this).attr("data-height"), "authPopup");
  e.stopPropagation(); return false;
});


// jQuery(function() {
//   $('body').prepend('<div id="fb-root"></div>');
//   return $.ajax({
//     url: window.location.protocol + "//connect.facebook.net/en_US/all.js",
//     dataType: 'script',
//     cache: true
//   });
// });

// window.fbAsyncInit = function() {
//   FB.init({
//     appId: 'BeanFormed', // how can I put rails secret here
//     cookie: true,
//     status: true,
//     xfbml: true,
//     oauth: true
//   });
//   (function(d, s, id){
//     var js, fjs = d.getElementsByTagName(s)[0];
//     if (d.getElementById(id)) {return;}
//     js = d.createElement(s); js.id = id;
//     js.src = "//connect.facebook.net/en_US/sdk.js";
//     fjs.parentNode.insertBefore(js, fjs);
//   }(document, 'script', 'facebook-jssdk'));

//   $('#sign_in').click(function(e) {
//     e.preventDefault();
//     return FB.login(function(response) {
//       if (response.authResponse) {
//         return window.location = '/auth/facebook/callback';
//       }
//     });
//   });
//   return $('#sign_out').click(function(e) {
//     FB.logout(function(response) {
//       if (response.authResponse) {
//         return FB.logout();
//       }
//     });
//     return true;
//   });
// };

// <script>
//   window.fbAsyncInit = function() {
//     FB.init({
//       appId      : Rails.application.secrets.facebook_key,
//       xfbml      : true,
//       version    : 'v2.3'
//     });
//   };

//   (function(d, s, id){
//      var js, fjs = d.getElementsByTagName(s)[0];
//      if (d.getElementById(id)) {return;}
//      js = d.createElement(s); js.id = id;
//      js.src = "//connect.facebook.net/en_US/sdk.js";
//      fjs.parentNode.insertBefore(js, fjs);
//    }(document, 'script', 'facebook-jssdk'));
// </script>

  // <!-- put this where I want the likes and share footer -->
  // <div
  //   class="fb-like"
  //   data-share="true"
  //   data-width="450"
  //   data-show-faces="true">
  // </div>


