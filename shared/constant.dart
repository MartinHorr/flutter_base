class Constant {
  // API
  static const HTTPServerEnvType httpServerEnvType = HTTPServerEnvType.dev;

  // General
  static const String baseUrl = 'Your Project base url';
  static const int otpTimerDuration = 60;

  static APIEnvironment apiEnvironment = const APIEnvironment();
}

enum HTTPServerEnvType { test, dev, production }

class APIEnvironment {
  const APIEnvironment();

  String get baseURL {
    switch (Constant.httpServerEnvType) {
      // Mock API
      case HTTPServerEnvType.test:
        return "";
      case HTTPServerEnvType.dev:
        return "";
      case HTTPServerEnvType.production:
        return "";
    }
  }
}
