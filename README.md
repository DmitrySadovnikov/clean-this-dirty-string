# clean-this-dirty-string
## Your strings'll be clean
## example
```ruby
  string = "Привет，\t“Махмед»！\nКак дела?😘"

  CleanThisDirtyString.clean!(string)
  # => 'Привет, "Махмед"! Как дела?'
```
## test
```ruby
ruby ./test/clean_this_dirty_string_test.rb
```

## most popular chars
```ruby
cat ./most_popular_chars.txt
```
