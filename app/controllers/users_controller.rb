class UsersController < ApplicationController
  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to user_path, notice: 'プロフィールを編集しました！'
    else
      render 'edit'
    end
  end

  def show
    @user = current_user
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
      redirect_to new_user_path, notice: 'ユーザを削除しました'
  end

  private

  def user_params
    params.require(:user).permit(:email, :icon, :keep_team_id)
  end
end
