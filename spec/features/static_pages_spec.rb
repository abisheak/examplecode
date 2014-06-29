require 'spec_helper'
require 'support/utilities'
describe "Static Pages" do
  let(:base_title) { "Ruby on Rails Tutorial Sample App" }
  subject { page }
  describe "Home page" do
    before { visit root_path }
    it { should have_selector('h1', :text => "Sample App") }
    it { should have_selector('title', :text => full_title('Home')) }
  end
  
  describe "Help page" do
    before { visit help_path }
    it { should have_selector('h1', :text => 'Help') }
    it { should have_selector('title', :text => full_title('Help')) }
  end
  
  describe "About page" do
    before { visit about_path }
    it { should have_selector('h1', :text => 'About') } 
    it { should have_selector('title', :text => full_title('About')) }
  end
  
  describe "Contact Page" do
    before { visit contact_path }
    it { should have_selector('h1', :text => 'Contact Us') }
    it { should have_selector('title', :text => full_title('Contact')) }
  end
end