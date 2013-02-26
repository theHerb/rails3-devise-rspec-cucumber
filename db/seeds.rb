puts 'DEFAULT USERS'
user = User.find_or_create_by_email :name => ENV['ADMIN_NAME'].dup, :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup
puts 'user: ' << user.name

user2 = User.find_or_create_by_email :name => 'Second User', :email => 'user2@example.com', :password => 'imagipraw', :password_confirmation => 'imagipraw'
puts 'user: ' << user2.name