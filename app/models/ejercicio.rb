# == Schema Information
#
# Table name: ejercicios
#
#  id               :integer          not null, primary key
#  aprobado         :boolean
#  contenido_id     :integer
#  bandera          :boolean
#  comentario       :text
#  molde_id         :integer
#  enunciado        :text
#  imagen           :string
#  resp_correcta    :string
#  w1               :text
#  w2               :text
#  w3               :text
#  w4               :text
#  op1              :text
#  op2              :text
#  op3              :text
#  op4              :text
#  op5              :text
#  hint             :text
#  dificultad       :integer
#  habilidad        :string
#  last_pre_ex_id   :integer
#  creador_id       :integer
#  aprobador_id     :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  solucion         :text
#  sub_contenido_id :integer
#

class Ejercicio < ApplicationRecord
    belongs_to :last_pre_ex, :class_name => "PreEx"
    belongs_to :contenido, :class_name => "Contentido"
    belongs_to :molde
    belongs_to :creador
    belongs_to :aprobador, :required => false
end
