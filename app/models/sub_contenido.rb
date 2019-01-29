# == Schema Information
#
# Table name: sub_contenidos
#
#  id           :integer          not null, primary key
#  contenido_id :integer
#  nombre       :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class SubContenido < ApplicationRecord
    
    belongs_to :contenido, :class_name => "Contentido"
    has_many :drafts, :class_name => "PreEx"
    has_many :ejercicios
end
