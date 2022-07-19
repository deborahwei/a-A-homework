console.log("Hello from the JavaScript console!");

// Your AJAX request here

// Add another console log here, outside your AJAX request

$.ajax({
    url: 'http://api.openweathermap.org/data/2.5/weather?q=new%20york,US&appid=bcb83c4b54aee8418983c2aff3073b3b',
    type: 'GET',
    data: {
      widget: {
        name: 'The Best Widget',
        maker: 'The Widget King'
      }
    },
    success(data) {
      console.log(data);
      // `create` action should `render json: @widget`
      // this gives the client access to the `id` attribute issued by
      // the server.
    },
    error() {
      console.log('Error');
    }
  });

  console.log('hi')
  
