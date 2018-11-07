ActiveAdmin.register Ejercicio do
  permit_params :aprobado, :contenido_id, :bandera, :comentario, :molde_id, :enunciado, :imagen, :resp_correcta, :w1, :w2, :w3, :w4, :op1, :op2, :op3, :op4, :op5, :hint, :dificultad, :habilidad, :last_pre_ex_id, :creador_id, :aprobador_id

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
