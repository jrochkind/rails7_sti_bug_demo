require 'sti_preload'

class Vehicle < ApplicationRecord
  # from https://guides.rubyonrails.org/autoloading_and_reloading_constants.html#single-table-inheritance
  include StiPreload
end
