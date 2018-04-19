# Angular Rails XSS

Angular Rails XSS protects from injection via `{{}}`. It patches `CGI.escapeHTML` to handle escaping.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'angular_rails_xss'
```

Then execute:

    $ bundle

Lastly ensure that DOUBLE_L_CURLY_BRACE and DOUBLE_R_CURLY_BRACE are defined on root scope:

```javascript
import angular from 'angular';

angular.module('app', []).run(['$rootScope', ($rootScope) => {
  Object.assign($rootScope, {
    DOUBLE_L_CURLY_BRACE: '{{',
    DOUBLE_R_CURLY_BRACE: '}}',
  });
}]);
```

## Usage

Once the gem is required running `CGI.escapeHTML` is safe. For example:

```ruby
CGI.escapeHTML('{{2+3}}') # {{ $root.DOUBLE_L_CURLY_BRACE }}2+3{{ $root.DOUBLE_R_CURLY_BRACE }}
```

```ruby
CGI.escapeHTML('<script>2+3</script>') # &lt;script&gt;2+3&lt;/script&gt;
```
## Dependencies

Angular Rails XSS is tested with Rails 5.1.6 and Ruby 2.5.1.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
