require 'spec_helper'

describe Need do

  it {should belong_to(:equipment)}
  it {should belong_to(:trip)}
  it {should belong_to(:camper)}

end
