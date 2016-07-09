json.array!(@jobs) do |job|
  json.extract! job, :id, :job_title, :job_salary, :job_datetime, :job_location, :source_url, :company_name, :company_address, :company_industry, :company_property, :company_scale, :company_description
  json.url job_url(job, format: :json)
end
