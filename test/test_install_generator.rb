require 'test_helper'
require 'rails/generators/test_case'
require 'generators/devise_security/install_generator'

class TestInstallGenerator < Rails::Generators::TestCase
  tests DeviseSecurity::Generators::InstallGenerator
  destination File.expand_path('../tmp', __FILE__)
  setup :prepare_destination

  test 'Assert all files are properly created' do
    run_generator
    assert_file 'config/initializers/devise_security.rb'
    assert_file 'config/locales/devise.security_extension.en.yml'
    assert_file 'config/locales/devise.security_extension.de.yml'
  end
end
