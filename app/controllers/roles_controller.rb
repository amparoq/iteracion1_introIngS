class RolesController < ApplicationController
    def change_role
      # Aquí puedes colocar la lógica necesaria para cambiar el rol de los usuarios
      @users = User.all
    end
  
    def update_role
      user = User.find(params[:user][:id])
      old_role = user.role
      new_role = params[:user][:role]
  
      if old_role != new_role
        user.update(role: new_role)
        flash[:notice] = 'Rol actualizado exitosamente.'
      end
  
      redirect_to change_role_path
    end
  end
  