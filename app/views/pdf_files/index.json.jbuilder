json.array!(@pdf_files) do |pdf_file|
  json.extract! pdf_file, :title, :pdf
  json.url pdf_file_url(pdf_file, format: :json)
end
