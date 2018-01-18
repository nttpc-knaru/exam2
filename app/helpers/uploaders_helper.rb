module UploadersHelper
  def uploader_new_or_edit
    if action_name == 'new' || action_name == 'confirm'
      confirm_uploaders_path
    elsif action_name == 'edit'
      uploader_path
    end
  end
end
