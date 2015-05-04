Subject.create!([
  {name: "Sample Subject", length: 3, description: "Sample"}
])
UserSubject.create!([
  {user_id: 1, subject_id: 1, status: 0}
])
User.create!([
  {name: "admin", email: "admin@example.com", password_digest: nil, role: 0, encrypted_password: "$2a$10$rijSXUAc/.h653uAnJ6YAOXT/ch3.mCUlmRQNlfegs8L7HKS0934G", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 16, current_sign_in_at: "2015-05-04 04:03:20", last_sign_in_at: "2015-05-04 03:55:06", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
])
UserCourse.create!([
  {user_id: 1, course_id: 1, status: 0}
])
Course.create!([
  {name: "Sample Course", length: 10, description: "Sample"}
])
