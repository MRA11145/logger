import 'package:logger/models/log_processor.dart';

class DebugLog extends LogPocessor {
  DebugLog(LogPocessor? nextLogProcessor): super (nextLogProcessor);

  void log(int logLevel, String message) {
    if (logLevel == LogPocessor.DEBUG) {
      print("DEBUG : $message");
    } else {
      super.log(logLevel, message);
    }
  }
}