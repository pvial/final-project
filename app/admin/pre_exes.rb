ActiveAdmin.register PreEx do
  permit_params :contenido_id, :molde_id, :enunciado, :imagen, :resp_correcta, :w1, :w2, :w3, :w4, :op1, :op2, :op3, :op4, :op5, :hint, :dificultad, :habilidad

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
