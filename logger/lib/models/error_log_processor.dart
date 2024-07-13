import 'package:logger/models/log_processor.dart';

class ErrorLogProcessor extends LogPocessor{
  ErrorLogProcessor(LogPocessor nextLogProcessor) : super (nextLogProcessor);

  void log(int logLevel, String message) {
    if (logLevel == LogPocessor.ERROR) {
      print("ERROR :"+ message);
    } else {
      super.log(logLevel, message);
    }
  }
}