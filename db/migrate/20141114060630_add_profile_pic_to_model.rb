class AddProfilePicToModel < ActiveRecord::Migration
  def change
    add_column :users, :profile_pic_url, :string, default: "http://therecordingrevolution.com/wordpress/wp-content/uploads/2014/05/da-vinci-profile.jpg"
  end
end
