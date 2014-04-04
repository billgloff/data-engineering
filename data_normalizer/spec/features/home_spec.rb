require 'spec_helper'

describe 'Home Page' do
  describe 'GET /' do
    it 'should have a welcome message' do
      visit root_path
      expect(page).to have_content 'Welcome'
    end

    it 'should have a link to import a document' do
      visit root_path
      expect(page).to have_selector(:link_or_button, 'Import Document')
    end

    it 'should have a link to import a document' do
      visit root_path
      click_link 'Import Document'
      expect(page).to have_content 'Browse and select a tab delimited file'
    end
  end
end
