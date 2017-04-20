namespace :db do
  desc 'Protect against running task in production'
  task :protect do
    fail 'Refusing to run in production environment' if Rails.env == 'production'
  end

  task :drop => :protect
  task 'schema:load' => :protect
end