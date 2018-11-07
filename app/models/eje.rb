# == Schema Information
#
# Table name: ejes
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  nombre     :text
#

class Eje < ApplicationRecord
    has_many :contentidos
end
