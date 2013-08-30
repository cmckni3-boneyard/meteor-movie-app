# Declare server Movies collection
@Movies = new Meteor.Collection "movies"

# Seed the movie database with a few movies
Meteor.startup ->
  if @Movies.find().count() == 0
    @Movies.insert
      title: "Star Wars"
      director: "Lucas"
    @Movies.insert
      title: "Memento"
      director: "Nolan"
    @Movies.insert
      title: "King Kong"
      director: "Jackson"