if User.count == 0
  u = User.new({:email => "james+pure_dash@rubify.com", :username => "superadmin", :password => "password", :password_confirmation => "password"})
  u.is_super_admin = true
  u.save
end