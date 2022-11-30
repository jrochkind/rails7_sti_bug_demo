# Reproduction for Rails 7/STI/STI preload/autoloading bug

For issue filed at https://github.com/rails/rails/issues/46625

1. ./bin/rails db:reset
2. ./bin/rails runner "Car.create!(title: 'honda')"
3. ./bin/rails runner "Car"

This produces a NameError exception "uninitialized constant Car".

If you want to see the whole backtrace, try:

    ./bin/rails runner ./scripts/reference_car.rb

This would not have happened in a Rails 6.1 app -- maybe it's got something to do with autoloading in changes in Rails 7 maybe?

Same app in Rails 6.1 demonstrating exception is not raised: https://github.com/jrochkind/rails61_sti_bug_non_repro
