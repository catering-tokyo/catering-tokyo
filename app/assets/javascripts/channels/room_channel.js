
$(function() {
  var app;
  app = App.cable.subscriptions.create({
    channel: 'RoomChannel',
    room_id: $('#room').data('room')
  }, {
    connected: function(data) {},
    disconnected: function(data) {},
    received: function(data) {
      console.log($('.messages').data('user'))
      console.log($('.orochi').data('shop_image'))
      if ($('.messages').data('user') == "user") {
        if (data['user_message'] == "user"){
<<<<<<< HEAD
          $('.messages').append(data['data']  + 'あなた' + '</div>' + '<div class="user_comments"><p>' + data['data'] + '</p></div>');
=======
          $('.messages').append('<div class="user_name">あなた</div>' + '<div class="user_comments"><p>' + data["data"] + '</p></div>');
>>>>>>> develop
        } else {
          $('.messages').append( $('.orochi').data("name") + '<div class="comments"><p>'+ data['data'] + '</p></div>');
        }
      } else {
        if (data['user_message'] == "shop"){
          $('.messages').append('<div class="user_name">あなた</div>' + '<div class="users_comments"><p>' + data["data"] + '</p></div>');
        } else {
          $('.messages').append( $('.orochi').data("name") + '<div class="shops_comments"><p>' + data['data'] + '</p></div>');
        }
      }
    }
  });


  $(document).on('keypress', '.post', function(e) {
    if (e.keyCode === 13) {
      app.perform('speak', {
        data: $('.post').val(),
        current_user_id: $('#room').data('user'),
        user_message: "user"
      });
      $('.post').val('');
    }
  });



// $(function() {
//   var app;
//   app = App.cable.subscriptions.create({
//     channel: 'RoomChannel',
//     room_id: $('#room').data('room')
//   }, {
//     connected: function(data) {},
//     disconnected: function(data) {},
//     received: function(data) {
//       if ($('#room').data('shop') === data['current_shop_id']) {
//         $('#messages').append('<p style="text-align: right">' + data['data'] + '</p>');
//       } else {
//         $('#messages').append('<p style="text-align: left">' + data['data'] + '</p>');
//       }
//     }
//   });


  $(document).on('keypress', '.shop_post', function(e) {
    if (e.keyCode === 13) {
      app.perform('talk', {
        data: $('.shop_post').val(),
        current_shop_id: $('#room').data('shop'),
        user_message: "shop"
      });
      $('.shop_post').val('');
    }
  });
});
