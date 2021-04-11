require "test_helper"

class User < ActiveSupport::TestCase
  def test_user_should_be_not_be_valid_without_name
    @user.name = ''
    assert_not @user.valid?
    assert_equal ["Name can't be blank"], @user.errors.full_messages
  end
  
  def test_name_should_be_of_valid_length
    @user.name = 'a' * 50
    assert @user.invalid?
  end

  def test_user_should_be_not_be_valid_and_saved_without_email
    @user.email = ''
    assert_not @user.valid?
  
    @user.save
    assert_equal ["Email can't be blank", 'Email is invalid'],
                  @user.errors.full_messages
  end
end 
