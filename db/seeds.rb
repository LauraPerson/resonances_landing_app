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

10.times do |n|
  article = Article.create!(
    title: "name#{n}@",
    subtitle: "aliquid quos harum accusamus dolor repudiandae ut illo fuga animi?",
    content: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque inventore molestias blanditiis ea dolorem quidem voluptatum asperiores, eius obcaecati. Architecto quo similique nulla repudiandae culpa eaque ipsam mollitia eius quos.",
    author: "Author#{n}",
    source_name: "source#{n}",
    source_link: "linksource#{n}",
    publication_date: Date.today
    )
  p "Create #{article.id} Articles"
end

terms = Term.create!(
  content: "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Cum, ipsum. Ipsa quasi deserunt voluptate explicabo pariatur mollitia id illo ut totam accusantium vitae beatae debitis"
  )
p "Created terms"
