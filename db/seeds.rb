
User.create!([
  {name: "frodo", email: "frodo@shire.com", password: "foobar"}
])

Post.create!([
  {title: "first", body: "First post by President Frank Underwood", user_id: 3},
  {title: "Lorem ipsum", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ac congue purus. Donec ac iaculis metus, at mattis lectus. Pellentesque sollicitudin, erat a rhoncus malesuada, felis sem sagittis tortor, nec blandit lorem erat quis magna. Quisque eu dolor varius, mollis urna egestas, scelerisque erat. Aliquam erat volutpat. Aliquam tristique est ut leo posuere, quis viverra dolor tempus. Cras sit amet vehicula nibh. Maecenas in fermentum est. Cras ac posuere turpis. Ut ut pellentesque libero. Donec cursus in magna vel tempor. Duis urna erat, commodo blandit massa ut, commodo fermentum nisi.\r\n\r\n", user_id: 1},
  {title: "The Ring", body: "Nunc scelerisque congue enim, vel malesuada urna scelerisque at. Etiam egestas elit diam, et ullamcorper urna vulputate vitae. Praesent vel tempus lectus. Ut ac malesuada est. Aenean nec mauris mauris. Nulla rutrum tristique felis id dapibus. Phasellus nec dui ut justo hendrerit iaculis. Aliquam erat volutpat. Integer sit amet rutrum nibh, rutrum pretium odio. Duis leo lectus, efficitur vel ligula luctus, volutpat euismod lectus. Duis sit amet lobortis velit, a ornare dui. Fusce commodo egestas nisi, aliquet gravida risus auctor eu. Duis et magna risus.\r\n\r\n", user_id: 5}
])