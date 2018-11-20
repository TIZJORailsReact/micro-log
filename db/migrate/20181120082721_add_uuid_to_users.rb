class AddUuidToUsers < ActiveRecord::Migration[5.2]
  def change
    enable_extension 'uuid-ossp' # => http://theworkaround.com/2015/06/12/using-uuids-in-rails.html#postgresql
    add_column :users, :uuid, :uuid, default: "uuid_generate_v4()", null: false
  end
end
