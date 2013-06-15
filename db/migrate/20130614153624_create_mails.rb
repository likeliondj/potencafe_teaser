class CreateMails < ActiveRecord::Migration
  def change
    create_table :mails do |t|
      t.string    :email, :null => false 

      t.timestamps
    end
  end
end
