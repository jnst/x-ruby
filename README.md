# x-ruby

## Ruby

```sh
$ brew install rbenv
$ rbenv install 2.6.1
$ rbenv global 2.6.1
$ ruby --version
ruby 2.6.1p33 (2019-01-30 revision 66950) [x86_64-darwin18]
```

## Bundler

### How to start

```sh
$ bundle --version
Bundler version 1.17.2
$ bundle init
$ bundle add rspec  # up-to-you
```

### Setup

```sh
$ bundle install --path vendor/bundle
```

## Run

```sh
$ bundle exec rspec code_spec.rb

Finished in 0.00477 seconds (files took 0.13535 seconds to load)
1 example, 0 failures
```
