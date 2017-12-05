![enter image description here](http://cdn.dota2.com/apps/dota2/images/heroes/nevermore_vert.jpg?v=4225446)


[![N|Solid](http://greenmelon.com.br/images/logo-loveinflat.png)](http://www.greenmelon.com.br)

# NeverLost Path For Rails

Don't get lost! Use NeverLost in your project and do a simple breadcrumb.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'neverlost'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install neverlost

In your project:

In your controller call the method, you can also pass an array with elements you dont want to show:

```ruby
Neverlost::path request.path , [] : default out put.
Neverlost::path request.path , [0] : this will ignore first segment of url.
Neverlost::path request.path , [0,2] : this will ignore first and 4th segment for crumb
Neverlost::path request.path , [0,2] , false : all breadcrumbs links are disabled.
Neverlost::path request.path , [0,2] , true : all breadcrumbs links are allowed.
Neverlost::path request.path , [0,2] , true , '>>' : delimiter now seems >> , you can also pass a html code, like: fa fa-arrow-right.
```

## Examples
![enter image description here](http://www.greenmelon.com.br/arquivos_green/gem1.png) 

```html
Neverlost::path request.path , []
```

----------

![enter image description here](http://www.greenmelon.com.br/arquivos_green/gem2.png) 
```html
Neverlost::path request.path , [0,2] , false , '<i class="fa fa-arrow-up" aria-hidden="true" style="color:green"></i>'
```
----------

![enter image description here](http://www.greenmelon.com.br/arquivos_green/gem3.png) 

```html
Neverlost::path request.path , [0,2] , false , <i class="fa fa-arrow-down" aria-hidden="true" style="color:red"></i>
```
## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).