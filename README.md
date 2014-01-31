RbPasswordr
===========

A ruby variant of my [Passwordr](https://github.com/aapis/passwordr) project.

## Usage

```ruby
_arg = {
	"base": "whatever", #uses this as a salt, optional
	"length": 32,
}

ruby passwordr.rb _arg["base"] _arg["length"]
```