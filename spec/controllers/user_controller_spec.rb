require 'spec_helper' 
describe UsersController, :type => :controller do 
  include Devise::TestHelpers

  course = FactoryGirl.create :course
  subject = FactoryGirl.create :subject
  course_subject = FactoryGirl.create :course_subject, course: course, subject: subject
  user = FactoryGirl.create :user
  user_course = FactoryGirl.create :user_course, course: course, user: user, status: 1

  describe "GET #show" do 

    context "user not logged in" do
      it "show sign in page" do
        get :show
        expect(response).to redirect_to new_user_session_path
      end
    end

    let(:do_sign_in) do
      sign_in user
    end

    context "user logged in" do
      context "user does not have any course" do
        it "user sign out" do
          do_sign_in
          get :show
          expect(response).to redirect_to sign_out_path
        end
      end
      context "user have an unfinished course" do
        it "assign course data" do
          user_course.status = 0
          user_course.save
          do_sign_in
          get :show
          expect(assigns[:course]).to eq course
        end
      end
    end

  end

end