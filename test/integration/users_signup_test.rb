# frozen_string_literal: true

require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  test 'valid signup information' do
    get new_user_registration_path
    assert_difference 'User.count', 1 do
      post user_registration_path, params: { user: { name: 'Example User',
                                                     email: 'user@example.com',
                                                     password: 'password',
                                                     password_confirmation: 'password' } }
    end
    follow_redirect!
    assert_template root_path
    # assert is_logged_in?
  end
end
