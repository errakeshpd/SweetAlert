# SweetAlert

## A BEAUTIFUL REPLACEMENT FOR JAVASCRIPT'S "ALERT"

![A success modal](https://raw.github.com/t4t5/sweetalert/master/sweetalert.gif)

[See it in action!](http://t4t5.github.io/sweetalert)

SweetAlert was created by 
[Tristan Edwards](https://twitter.com/t4t5)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sweet_alerts'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sweet_alerts

add below line to application.js

```ruby
  //= require sweetalert.min
```

add below line to application.css

```ruby
  *= require sweetalert
```

## Usage

A basic message

    swal("Here's a message!")

A title with a text under

    swal("Here's a message!", "It's pretty, isn't it?")

A success message!

    swal("Good job!", "You clicked the button!", "success")

A warning message, with a function attached to the "Confirm"-button...

    swal({
    title: "Are you sure?",
    text: "You will not be able to recover this imaginary file!",
    type: "warning",
    showCancelButton: true,
    confirmButtonColor: "#DD6B55",
    confirmButtonText: "Yes, delete it!",
    closeOnConfirm: false
    },
    function(){
    swal("Deleted!", "Your imaginary file has been deleted.", "success");
    });

... and by passing a parameter, you can execute something else for "Cancel".

    swal({
      title: "Are you sure?",
      text: "You will not be able to recover this imaginary file!",
      type: "warning",
      showCancelButton: true,
      confirmButtonColor: "#DD6B55",
      confirmButtonText: "Yes, delete it!",
      cancelButtonText: "No, cancel plx!",
      closeOnConfirm: false,
      closeOnCancel: false
      },
      function(isConfirm){
      if (isConfirm) {
      swal("Deleted!", "Your imaginary file has been deleted.", "success");
      } else {
      swal("Cancelled", "Your imaginary file is safe :)", "error");
      }
    });

A message with a custom icon

    swal({
      title: "Sweet!",
      text: "Here's a custom image.",
      imageUrl: "images/thumbs-up.jpg"
    });

An HTML message

    swal({
      title: "HTML <small>Title</small>!",
      text: "A custom <span style="color:#F8BB86">html<span> message.",
      html: true
    });

A message with auto close timer

    swal({
      title: "Auto close alert!",
      text: "I will close in 2 seconds.",
      timer: 2000,
      showConfirmButton: false
    });
A replacement for the "prompt" function

    swal({
      title: "An input!",
      text: "Write something interesting:",
      type: "input",
      showCancelButton: true,
      closeOnConfirm: false,
      animation: "slide-from-top",
      inputPlaceholder: "Write something"
    },
    function(inputValue){
      if (inputValue === false) return false;

      if (inputValue === "") {
      swal.showInputError("You need to write something!");
      return false
      }

      swal("Nice!", "You wrote: " + inputValue, "success");
    });

With a loader (for AJAX request for example)

    swal({
      title: "Ajax request example",
      text: "Submit to run ajax request",
      type: "info",
      showCancelButton: true,
      closeOnConfirm: false,
      showLoaderOnConfirm: true,
    },
    function(){
      setTimeout(function(){
      swal("Ajax request finished!");
      }, 2000);
    });
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/sweet_alert. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
