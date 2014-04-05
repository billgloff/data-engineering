require 'spec_helper'

describe 'Data Importer Page' do
  describe 'GET /data_importer' do
    it 'should have instructions' do
      visit data_importer_index_path
      expect(page).to have_content 'Data Importer'
    end

    it 'should have an upload form field' do
      visit data_importer_index_path
      expect(page).to have_xpath('//input[@type="file"]')
    end
  end

  describe 'POST /data_importer' do
    it "should give an error if no file is selected" do
      visit data_importer_index_path
      click_button 'Import'
      expect(page).to have_content 'File missing'
    end

    it 'should be able to submit a tab delimited file' do
      visit data_importer_index_path
      file_path = Rails.root + "spec/fixtures/example_input.tab"
      attach_file('document', file_path)
      click_button 'Import'
      expect(page).to have_content 'Total Amount Gross Revenue'
      expect(page).to have_content '$30.00'
    end

  end
end
