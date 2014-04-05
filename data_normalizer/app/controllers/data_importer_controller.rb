class DataImporterController < ApplicationController

  def index; end

  def import
  	if file_params[:document].blank?
  		flash[:error] = "File missing"
  		redirect_to data_importer_index_path
  	else
  		file = params[:document].read
  		import_service = ImportService.new(file)
  		import_service.parse
  		@total_amount_gross = import_service.total_amount_gross
  	end
  end

private

  def file_params
  	params.permit(:document)
  end

end
