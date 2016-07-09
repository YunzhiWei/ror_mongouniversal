class Job
  include Mongoid::Document
  field :job_title, type: String
  field :job_salary, type: String
  field :job_datetime, type: String
  field :job_location, type: String
  field :source_url, type: String
  field :company_name, type: String
  field :company_address, type: String
  field :company_industry, type: String
  field :company_property, type: String
  field :company_scale, type: String
  field :company_description, type: String
end
