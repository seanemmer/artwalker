require 'spec_helper'

describe "Static pages" do
  
  describe "Home page" do

  	it "should have the content 'Welcome'" do
  		visit root_path
  		expect(page).to have_content('Welcome')
    end

    it "should have the title 'Home'" do
      visit root_path
      expect(page).to have_title("Sipper | Home")
    end
  end

  describe "Help page" do
  	it "should have the title 'Help'" do
      visit help_path
      expect(page).to have_title("Sipper | Help")
    end
  end

  describe "About page" do
  	it "should have the title 'About'" do
      visit about_path
      expect(page).to have_title("Sipper | About")
    end
  end

end
