import 'package:logger/models/debug_log_processor.dart';
import 'package:logger/models/error_log_processor.dart';
import 'package:logger/models/info_log_processor.dart';
import 'package:logger/models/log_processor.dart';

void main() {
  LogPocessor logProcessor = InfoLogProcessor(ErrorLogProcessor(DebugLog(null)));
  logProcessor.log(LogPocessor.DEBUG, "Debug Test");
  logProcessor.log(LogPocessor.ERROR, "Error Test");
  logProcessor.log(LogPocessor.INFO, "INFO Test");
}