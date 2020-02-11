# == Schema Information
#
# Table name: sub_contenidos
#
#  id           :bigint(8)        not null, primary key
#  contenido_id :integer
#  nombre       :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  id_post      :integer
#  id_pre       :integer
#

class SubContenido < ApplicationRecord
    
    belongs_to :contenido, :class_name => "Contentido"
    has_many :drafts, :class_name => "PreEx"
    has_many :ejercicios

    def display_name
        nombre
      end
end
