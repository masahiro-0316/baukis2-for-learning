class CreateStaffMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :staff_members do |t|
      t.string :email, null: false #メールアドレスadoresu 
      t.string :family_name, null: false #姓
      t.string :given_name, null: false #名
      t.string :family_name_kana, null: false #姓（仮名）
      t.string :given_name_kana, null: false #名（仮名）
      t.string :hashed_password #パスワード
      t.date :start_date, null: false #開始日
      t.date :end_date #終了日
      t.boolean :suspended, null: false, default: false #無効化フラグ
      
      t.timestamps
    end

    add_index :staff_members, "LOWER(email)", unique: true
    add_index :staff_members, [ :family_name_kana, :given_name_kana ]

  end
end
