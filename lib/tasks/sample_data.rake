require 'faker'

namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    User.create!(:name => "Example User",
                 :email => "example@user.com",
                 :password => "foobar",
                 :password_confirmation => "foobar")
    
    99.times do |n|
      name = Faker::Name.name
      email = "example-#{n+1}@user.com"
      password = "password"
      User.create!( :name => name,
                    :email => email,
                    :password => password,
                    :password_confirmatin => password)
    end
  end
end
