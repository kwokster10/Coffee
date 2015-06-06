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

  $('#sign_in').click(function(e) {
    e.preventDefault();
    return FB.login(function(response) {
      if (response.authResponse) {
        return window.location = '/auth/facebook/callback';
      }
    });
  });
  return $('#sign_out').click(function(e) {
    FB.getLoginStatus(function(response) {
      if (response.authResponse) {
        return FB.logout();
      }
    });
    return true;
  });
};



