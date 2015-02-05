require 'spec_helper'

describe Camper do

  it {should have_many(:needs)}
  it {should belong_to(:trip)}
  it {should have_many(:equipment).through(:needs)}

end
