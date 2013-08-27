// Declare server Movies collection
Movies = new Meteor.Collection("movies");

// Bind moviesTemplate to Movies collection
Template.moviesTemplate.movies = function () {
    return Movies.find();
};

// Handle movieForm events
Template.movieForm.events = {
    'submit': function (e, tmpl) {
        // Don't postback
        e.preventDefault();

        // create the new movie
        var newMovie = {
            title: tmpl.find("#title").value,
            director: tmpl.find("#director").value
        };

        // add the movie to the db
        Movies.insert(newMovie);
    }
};
