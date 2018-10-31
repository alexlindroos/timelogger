import 'dart:io';
import 'dart:core';

void main() {
  stdout.writeln('Type code to start logging');
  String startInput = stdin.readLineSync();
  bool loggingStarted = false;
  DateTime startTime, endTime;

  if (startInput == "code") {
      loggingStarted = true;
      startTime = new DateTime.now();
      stdout.writeln("Logging started! Type 'mate' when you stop");
    } else {
      stdout.writeln("Type 'code' to start logging.");
    }

  String endInput = stdin.readLineSync();

  if (endInput == "mate" && loggingStarted) {
      loggingStarted = false;
      endTime = new DateTime.now();
      var usedTime = getUsedTime(startTime, endTime);
      String usedTimeTrimmed = usedTime.substring(0, 7);
      stdout.writeln("Logging has end. You used $usedTimeTrimmed Thank you for logging the time!");
    } else {
      stdout.writeln("Type 'mate' to end logging.");
    }
}

String getUsedTime(DateTime startTime, DateTime endTime) {
  Duration duration = endTime.difference(startTime);
  String usedTimeString = duration.toString();
  return usedTimeString;
}