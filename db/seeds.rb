User.destroy_all

3.times do |n|
  user = User.create!(
    email: "test#{n}@resonances.group",
    password: 'resonances'
    )

  p "Create #{user.id} users"
end