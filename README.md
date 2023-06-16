<p align="center">
  <a href="https://cdn.itwcreativeworks.com/assets/itw-creative-works/images/logo/itw-creative-works-brandmark-black-x.svg">
    <img src="https://cdn.itwcreativeworks.com/assets/itw-creative-works/images/logo/itw-creative-works-brandmark-black-x.svg" width="100px">
  </a>
</p>

<p align="center">
  <img src="https://img.shields.io/gem/v/jekyll-truthyfalsy">
  <br>
  <!-- <img src="https://img.shields.io/librariesio/release/npm/jekyll-truthyfalsy.svg"> -->
  <img src="https://img.shields.io/github/repo-size/itw-creative-works/jekyll-truthyfalsy">
  <img src="https://img.shields.io/codeclimate/maintainability-percentage/itw-creative-works/jekyll-truthyfalsy.svg">
  <img src="https://img.shields.io/gem/dt/jekyll-truthyfalsy">
  <!-- <img src="https://img.shields.io/node/v/jekyll-truthyfalsy.svg"> -->
  <img src="https://img.shields.io/website/https/itwcreativeworks.com.svg">
  <img src="https://img.shields.io/github/license/itw-creative-works/jekyll-truthyfalsy.svg">
  <img src="https://img.shields.io/github/contributors/itw-creative-works/jekyll-truthyfalsy.svg">
  <img src="https://img.shields.io/github/last-commit/itw-creative-works/jekyll-truthyfalsy.svg">
  <br>
  <br>
  <a href="https://itwcreativeworks.com">Site</a> | <a href="https://www.npmjs.com/package/jekyll-truthyfalsy">NPM Module</a> | <a href="https://github.com/itw-creative-works/jekyll-truthyfalsy">GitHub Repo</a>
  <br>
  <br>
  Meet <strong>jekyll-truthyfalsy</strong>, the Sherlock Holmes of truthy and falsy values in Liquid.
</p>

## jekyll-truthyfalsy Works in Node AND browser environments
Yes, this module works in both Node and browser environments, including compatibility with [Webpack](https://www.npmjs.com/package/webpack) and [Browserify](https://www.npmjs.com/package/browserify)!

## Features
* Check whether a value is **truthy** or **falsy** in a manner similar to JavaScript
* Exposes a `istruthy` function
* Exposes a `isfalsy` function

# Jekyll::truthyfalsy
Meet `jekyll-truthyfalsy`, the whimsical gem dedicated to turning the grey areas of truthiness and falsiness into black and white. 

It doesn't just settle for mere booleans; oh no, it goes above and beyond, scrutinizing empty strings and null values too! Like a tenacious detective, it leaves no stone unturned, and no value unverified. Banish the verbose 'if' statements and welcome a new era of compact, expressive checks. 

Because life is too short for ambiguity, embrace the certainty that comes with `jekyll-truthyfalsy`. Truthiness and falsiness: not just a philosophical quandary, but a .gem installation away!

## Installation
Install the gem and add to the application's Gemfile by executing:
```shell
bundle add jekyll-truthyfalsy
```

If bundler is not being used to manage dependencies, install the gem by executing:
```shell
gem install jekyll-truthyfalsy
```

## Usage
Now you can use the `istruthy` and `isfalsy` filters in your Jekyll site's templates:

```liquid
{%- assign test_true = true | istruthy -%}
{%- if test_true -%}
  This will print because `true` is truthy
{%- endif -%}

{%- assign test_false = false | istruthy -%}
{%- if test_false -%}
  This will NOT print because `false` is falsy
{%- endif -%}

{%- assign test_string = 'hi' | istruthy -%}
{%- if test_string -%}
  This will print because `'hi'` is truthy
{%- endif -%}

{%- assign test_empty_string = '' | istruthy -%}
{%- if test_empty_string -%}
  This will NOT print because `''` is falsy
{%- endif -%}

{%- assign test_null = null | istruthy -%}
{%- if test_null -%}
  This will NOT print because `null` is falsy
{%- endif -%}

{%- assign test_zero = 0 | istruthy -%}
{%- if test_zero -%}
  This will NOT print because `0` is falsy
{%- endif -%}

{%- assign test_one = 1 | istruthy -%}
{%- if test_one -%}
  This will print because `1` is truthy
{%- endif -%}
```

These examples show how you can use `istruthy` and `isfalsy` to easily check if a variable is "truthy" (not null, not an empty string, and not false) or "falsy" (null, an empty string, or false), respectively.

No more long, confusing, multi-condition `if` statements - just simple, readable code!

## Development
After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

### Building and pushing
Run the tests
```shell
bundle exec rspec
```

Publish the Gem
```shell
gem build jekyll-truthyfalsy.gemspec

gem push jekyll-truthyfalsy-1.0.0.gem
```

## Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/itw-creative-works/jekyll-truthyfalsy.
