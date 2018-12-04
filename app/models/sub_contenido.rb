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
end
