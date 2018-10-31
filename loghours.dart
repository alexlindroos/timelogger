import 'dart:io';
import 'dart:core';

String startInput, endInput;
bool loggingStarted = false;
DateTime startTime, endTime;

void main() {

  while (startInput != "code") {
    stdout.writeln("Type 'code' to start logging.");
    startInput = stdin.readLineSync();
  }

  if (startInput == "code") {
      loggingStarted = true;
      startTime = new DateTime.now();
      stdout.writeln("Logging started! Type 'mate' when you stop");
      endLogging();
    }
}

String getUsedTime(DateTime startTime, DateTime endTime) {
  Duration duration = endTime.difference(startTime);
  String usedTimeString = duration.toString();
  return usedTimeString;
}

void endLogging() {

  while (endInput != "mate") {
    stdout.writeln("Type 'mate' to end logging.");
    endInput = stdin.readLineSync();
  }

  if (endInput == "mate" && loggingStarted) {
    loggingStarted = false;
    endTime = new DateTime.now();
    var usedTime = getUsedTime(startTime, endTime);
    String usedTimeTrimmed = usedTime.substring(0, 7);
    stdout.writeln("Logging has end. You used $usedTimeTrimmed Thank you for logging the time!");
  }
}