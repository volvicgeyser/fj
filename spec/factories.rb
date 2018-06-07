FactoryGirl.define do
  factory :favorite do
    job_id 1
    user_id 1
    comment "MyText"
  end
  factory :job do
    location "東京"
    category "Sales"
    term "短期"
    office_location "東京"
    emp_pattern "派遣"
  end
end
