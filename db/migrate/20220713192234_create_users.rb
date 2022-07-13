class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users, comment: 'User' do |t|
      t.with_options index: { unique: true } do
        string  :name,
                comment: 'User name'
        string  :email,
                comment: 'User email'
      end
      t.boolean :active,
                default: true,
                comment: 'User status: active/disactive'
      t.timestamps
    end
  end
end