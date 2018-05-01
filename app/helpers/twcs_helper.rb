module TwcsHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm'
      confirm_twcs_path
    elsif action_name == 'edit'
      twc_path
    end
  end
end
