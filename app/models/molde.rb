# == Schema Information
#
# Table name: moldes
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Molde < ApplicationRecord
    has_many :ejercicios
    has_many :drafts, :class_name => "PreEx"
end
