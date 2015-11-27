ActiveAdmin.register User do
  #一覧表示
   index do
      column :id
      column :last_name
      column :first_name
      column :email
   end
 #右のサイドバーの数を減らす
   FILTER_COLUMNS = %w(id last_name first_name email)
   FILTER_COLUMNS.each do |col|
       filter col.to_sym
   end

  permit_params :email,:first_name,:last_name
end
