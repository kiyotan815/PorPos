# == Schema Information
#
# Table name: portfolios
#
#  id          :bigint(8)        not null, primary key
#  title       :string(255)
#  description :text(65535)
#  url         :text(65535)
#  repository  :text(65535)
#  user_id     :bigint(8)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryBot.define do
  factory :portfolio do
    title { "MyString" }
    description { "MyText" }
    url { "MyText" }
    repository { "MyText" }
    references { "" }
  end
end
