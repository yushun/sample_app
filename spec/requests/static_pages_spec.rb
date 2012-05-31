require 'spec_helper'

describe "StaticPages" do
  
  let(:base_title) { "Ruby on Rails Tutorial Sample App" }
  
  describe "Home page" do

    it "should have the h1 'Sample App'" do
      visit root_path
      page.should have_selector('h1', :text => 'Sample App')
    end

    it "should have the title" do
      visit root_path
      page.should have_selector('title', :text => "#{base_title}")
    end
    
    it 'should not have title "Home"' do
      visit root_path
      page.should_not have_selector("title", :text => "| Home")
    end
  end
  
  describe 'Help page' do
  
    it 'should have the content "Help"' do
      visit help_path
      page.should have_content 'Help'
    end
    
    it "should have the right title" do
      visit help_path
      page.should have_selector('title',
                                 :text => "#{base_title} | Help")
    end
  end
  
  describe 'About page' do
  
    it 'it shoud have a content "About Us"' do
      visit about_path
      page.should have_content 'About Us'
    end
    
    it "should have the right title" do
      visit about_path
      page.should have_selector('title',
                                 :text => "#{base_title} | About Us")
    end
  end
  
  describe 'Content page' do
    it 'should have right title' do
      visit content_path
      page.should have_selector("title", 
                                 :text => "#{base_title} | Content")
    end
  end
end
