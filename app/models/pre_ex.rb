# == Schema Information
#
# Table name: pre_exes
#
#  id               :bigint(8)        not null, primary key
#  contenido_id     :integer
#  molde_id         :integer
#  enunciado        :text
#  imagen           :string
#  resp_correcta    :text
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
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  solucion         :text
#  sub_contenido_id :integer
#

class PreEx < ApplicationRecord
    has_many :ejercicios, :foreign_key => "last_pre_ex_id"
    belongs_to :contenido, :class_name => "Contentido"
    belongs_to :molde
    
end
