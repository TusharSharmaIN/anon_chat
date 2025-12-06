enum Flavor { dev, prod }

class Config {
  Flavor appFlavor = Flavor.prod;
  Duration httpSendTimeout = const Duration(milliseconds: 600000);
  Duration httpConnectTimeout = const Duration(milliseconds: 600000);
  Duration httpReceiveTimeout = const Duration(milliseconds: 600000);

  String get env {
    switch (appFlavor) {
      case Flavor.dev:
        return 'dev';
      case Flavor.prod:
        return 'prod';
    }
  }

  String get appName {
    final base = 'Anon Chat';
    switch (appFlavor) {
      case Flavor.dev:
        return '$base Dev';
      case Flavor.prod:
        return base;
    }
  }

  String get baseUrl {
    switch (appFlavor) {
      case Flavor.dev:
      case Flavor.prod:
        return 'https://api.themoviedb.org/3/';
    }
  }

  // String get tmdbAuthToken {
  //   switch (appFlavor) {
  //     case Flavor.dev:
  //     case Flavor.prod:
  //       return dotenv.env['TMDB_AUTH_TOKEN'] ?? '';
  //   }
  // }
}
