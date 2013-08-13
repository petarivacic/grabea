require 'spec_helper'

describe "Admin pages" do
  subject {page}

  describe "signup page"
  	before { visit signup_page}

  	it {should have_content('Sign up')}
  	it { should have_title(full_title('Sign up'))} 
  end
end
