# == Schema Information
#
# Table name: ejes
#
#  id         :bigint(8)        not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  nombre     :text
#

class Eje < ApplicationRecord
    has_many :contentidos
    def display_name
        nombre
      end
end
