Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports.
  config.consider_all_requests_local = true

  # Enable/disable caching. By default caching is disabled.
  if Rails.root.join('tmp/caching-dev.txt').exist?
    config.action_controller.perform_caching = true

    config.cache_store = :memory_store
    config.public_file_server.headers = {
      'Cache-Control' => "public, max-age=#{2.days.seconds.to_i}"
    }
  else
    config.action_controller.perform_caching = false

    config.cache_store = :null_store
  end

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  config.action_dispatch.best_standards_support = :builtin

  config.active_support.deprecation = :notify
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.perform_deliveries = false
  config.action_mailer.raise_delivery_errors = true

  config.action_mailer.default :charset => "utf-8"


  config.action_mailer.default_url_options = { :host => 'localhost:3000' }
  config.active_support.deprecation = :log

 config.action_mailer.smtp_settings ={
 :enable_starttls_auto => true,
 :address            => 'smtp.gmail.com',
 :port               => 587,
 :tls                => true,
 :domain             => 'gmail.com',
 :authentication     => :plain,
 :user_name          => 'nguyentrungkien10t3',
 :password           => 'kienkien92'
 }
end
