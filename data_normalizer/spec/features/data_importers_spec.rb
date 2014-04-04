require 'spec_helper'

describe 'Data Importer Page' do
  describe 'GET /data_importer' do
    it 'should have instructions' do
      visit data_importer_index_path
      expect(page).to have_content 'Data Importer'
    end

    it 'should have an upload form field' do
      visit data_importer_index_path
      expect(page).to have_xpath('//form/input[@type="file"]')
    end
  end

  describe 'POST /data_importer' do
    it 'should have instructions' do
      visit data_importer_index_path
      expect(page).to have_content 'Data Importer'
    end

  end
end
