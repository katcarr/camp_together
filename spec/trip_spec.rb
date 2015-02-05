require('spec_helper')

describe Trip do

  it{ should belong_to(:user)}
  it{ should have_many(:needs)}
  it{ should have_many(:campers)}
  it{ should have_many(:equipments).through(:needs)}

end
