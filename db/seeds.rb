puts ""

account = Account.new(:email => "pcf@demo.io", :name => "Foo", :surname => "Bar", :password => "admin", :password_confirmation => "admin", :role => "admin")

if account.valid?
  account.save
  puts "================================================================="
  puts "Account has been successfully created, now you can login with:"
  puts "================================================================="
  puts "   email: #{email}"
  puts "   password: #{?* * password.length}"
  puts "================================================================="
else
  puts "Sorry, but something went wrong!"
  puts ""
  account.errors.full_messages.each { |m| puts "   - #{m}" }
end

puts ""
