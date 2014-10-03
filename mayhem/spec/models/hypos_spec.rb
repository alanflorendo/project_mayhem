require 'rails_helper'

describe Hypo do
  it {should validate_presence_of(:title)}
  # it {should validate_presence_of(:url)}
end