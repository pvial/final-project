# == Schema Information
#
# Table name: contentidos
#
#  id         :integer          not null, primary key
#  eje_id     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  nombre     :text
#  final      :integer
#

class Contentido < ApplicationRecord
    has_many :drafts, :class_name => "PreEx", :foreign_key => "contenido_id"
    has_many :ejercicios, :foreign_key => "contenido_id"
    has_many :sub_contenidos, :foreign_key => "contenido_id"
    belongs_to :eje
end
