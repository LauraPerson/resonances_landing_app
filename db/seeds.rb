User.destroy_all
Worker.destroy_all
Term.destroy_all


3.times do |n|
  user = User.create!(
    email: "test#{n}@resonances.group",
    password: 'resonances'
    )
  p "Create #{user.id} users"
end

4.times do |n|
  worker = Worker.create!(
    name: "name#{n}@",
    link: "link#{n}",
    job: "job#{n}"
    )
  p "Create #{worker.id} workers"
end

6.times do |n|
  client = Client.create!(
    name: "name#{n}@"
    )
  p "Create #{client.id} clients"
end

terms = Term.create!(
  content: "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Cum, ipsum. Ipsa quasi deserunt voluptate explicabo pariatur mollitia id illo ut totam accusantium vitae beatae debitis"
  )
p "Created terms"
