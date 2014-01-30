janet = User.create(name: "Janet Pierce", email: 'janet@mac.com')
fred = User.create(name: "Fred Thomas", email: 'fred@gmail.com')
mia = User.create(name: "Mia Niles", email: 'mniles@gmail.com')

janet.articles << Article.create(title: "Fun with Sharks", body: "Sharks are a group of fish characterized by a cartilaginous skeleton, five to seven gill slits on the sides of the head, and pectoral fins that are not fused to the head. Modern sharks are classified within the clade Selachimorpha (or Selachii), and are the sister group to the rays. However, the term 'shark' has also been used for extinct members of the subclass Elasmobranchii outside the Selachimorpha, such as Cladoselache and Xenacanthus. Under this broader definition, the earliest known sharks date from more than 420 million years ago.")
fred.articles << Article.create(title: "Mongoose on the Loose", body: "A mongoose is a small carnivoran member of 33[2] living species in southern Eurasia and mainland Africa of the family Herpestidae.[1] Four additional species from Madagascar in the subfamily Galidiinae, which were previously classified in this family, are also referred to as 'mongooses' or 'mongoose-like'.")
mia.articles << Article.create(title: "In the cloud", body: "In meteorology, a cloud is a visible mass of liquid droplets or frozen crystals made of water or various chemicals suspended in the atmosphere above the surface of a planetary body.[1] These suspended particles are also known as aerosols and are studied in the cloud physics branch of meteorology.")


shark = janet.articles.first
mongoose = janet.articles.first
cloud = mia.articles.first

shark.comments << Comment.create(body: "Sharks are scary. Seriously.")
mongoose.comments << Comment.create(body: "Watch out!")
cloud.comments << Comment.create(body: "Very little substance to this subject...")