class ApiPath {
  const ApiPath._internal();

  static String _apiKey = '3d276ea945542ee4540d92a76eb666dc';

  factory ApiPath() {
    return _singleton;
  }

  static final ApiPath _singleton = ApiPath._internal();

  static String popularMoviesPath() =>
      'https://api.themoviedb.org/3/movie/popular?api_key=$_apiKey';

  static String imagePath(String path) => 'https://image.tmdb.org/t/p/w500/$path';
}
