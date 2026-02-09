/**
 Q3 Create a class Movie with attributes title and rating. In main(), create a list of 4 movies. Print
only the movies with a rating above 7.
 */

void main() {
  Movie movie1 = Movie('X', 9);
  Movie movie2 = Movie('Y', 7);
  Movie movie3 = Movie('Z', 5);
  Movie movie4 = Movie('N', 8.5);
  List<Movie> movies = [movie1, movie2 , movie3 , movie4];
  for(var movie in movies){
    if(movie.rating! > 7){
      print('The movie ${movie.title} has rating above 7');
    }
  }
}

class Movie {
  String? title;
  double? rating;
  Movie(this.title, this.rating) {}
}
