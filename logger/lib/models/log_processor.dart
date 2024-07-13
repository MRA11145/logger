abstract class LogPocessor {
  static int INFO = 1;
  static int DEBUG = 1;
  static int ERROR = 1;

  late LogPocessor? nextLoggerProcessor;

  LogPocessor(LogPocessor? loggerProcessor) {
    nextLoggerProcessor = loggerProcessor;
  }

  void log(int level, String message) {
    if (nextLoggerProcessor != null) {
      nextLoggerProcessor?.log(level, message);
    }
  }

}