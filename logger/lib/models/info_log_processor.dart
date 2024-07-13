import 'package:logger/models/log_processor.dart';

class InfoLogProcessor extends LogPocessor{
  InfoLogProcessor(LogPocessor nextLogProcessor) : super(nextLogProcessor);

  void log(int logLevel, String message) {
    if (logLevel == LogPocessor.INFO) {
      print("INFO :" + message);
    } else {
      super.log(logLevel, message);
    }
  }

}