require 'rails_helper'

describe Task do
  it {should validate_prescence_of :name }
end

end
