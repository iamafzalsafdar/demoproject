class AddPostImageToPost < ActiveRecord::Migration[6.1]
    def change
      add_column :postimage,:string
  end
end
