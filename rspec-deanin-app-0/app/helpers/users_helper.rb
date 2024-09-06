module UsersHelper

  def test_user()
    test_user = User.first_or_create(email: "test@test.com", password: "password", password_confirmation: "password")
    test_user
  end

end
