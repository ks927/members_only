
User.create!([
  {name: "odin", email: "odin@project.com", password_digest: "$2a$10$AEKqB.SC9TWXoOOuiy5rcuuL4M47uHc9TudMGzK2/Xny91rU5C8L2", remember_digest: "d40d145fae5409795c466ff0d710304cde2bc8ac"},
  {name: "kyle", email: "kyle@yahoo.com", password_digest: "$2a$10$Hh5Yc0OjWLCnWnnUmX9IAuHZeBqVuV/WK55HCEyqlCq8BnXdx1epK", remember_digest: "6498260bc785e97963fbe3e09ac9afae99f42cd8"},
  {name: "frank", email: "funderwood@potus.com", password_digest: "$2a$10$V1Ugo7YwQYpmDsVgIIFqX.xX0BmUFZupPPhLkuJNzCppWRYvYe.iS", remember_digest: "3729679211df12363b826526d30ff75ff638136d"},
  {name: "frank", email: "funderwood@potus.com", password_digest: "$2a$10$/Jb3jHUiP2OouWckLIw4Be3rimAGT8BVWZPYstC47hC83vfa/yfvy", remember_digest: "0271222b51d2730c89899632497f01ed54f76043"},
  {name: "frodo", email: "frodo@shire.com", password_digest: "$2a$10$W2lSFMvwlR6Tl5sezOSgbuhFSAts5KOSEY6ITpqQIrRTMqtf031xi", remember_digest: "49db26a76542baf2b2409c02fc6638ef55295abc"}
])

Post.create!([
  {title: "first", body: "First post by President Frank Underwood", user_id: 3},
  {title: "Lorem ipsum", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ac congue purus. Donec ac iaculis metus, at mattis lectus. Pellentesque sollicitudin, erat a rhoncus malesuada, felis sem sagittis tortor, nec blandit lorem erat quis magna. Quisque eu dolor varius, mollis urna egestas, scelerisque erat. Aliquam erat volutpat. Aliquam tristique est ut leo posuere, quis viverra dolor tempus. Cras sit amet vehicula nibh. Maecenas in fermentum est. Cras ac posuere turpis. Ut ut pellentesque libero. Donec cursus in magna vel tempor. Duis urna erat, commodo blandit massa ut, commodo fermentum nisi.\r\n\r\n", user_id: 1},
  {title: "The Ring", body: "Nunc scelerisque congue enim, vel malesuada urna scelerisque at. Etiam egestas elit diam, et ullamcorper urna vulputate vitae. Praesent vel tempus lectus. Ut ac malesuada est. Aenean nec mauris mauris. Nulla rutrum tristique felis id dapibus. Phasellus nec dui ut justo hendrerit iaculis. Aliquam erat volutpat. Integer sit amet rutrum nibh, rutrum pretium odio. Duis leo lectus, efficitur vel ligula luctus, volutpat euismod lectus. Duis sit amet lobortis velit, a ornare dui. Fusce commodo egestas nisi, aliquet gravida risus auctor eu. Duis et magna risus.\r\n\r\n", user_id: 5}
])