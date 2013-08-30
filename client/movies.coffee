# Declare server Movies collection
@Movies = new Meteor.Collection "movies"

# Bind moviesTemplate to Movies collection
Template.moviesTemplate.movies = ->
  Movies.find()

# Handle movieForm events
Template.movieForm.events =
  submit: (e, tmpl) ->
    # Don't postback
    e.preventDefault()

    # create the new movie
    newMovie =
      title: tmpl.find("#title").value,
      director: tmpl.find("#director").value

    # add the movie to the db
    Movies.insert newMovie
