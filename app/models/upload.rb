# == Schema Information
#
# Table name: uploads
#
#  id         :bigint(8)        not null, primary key
#  url        :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Upload < ApplicationRecord
end
