import 'dart:async';

class HelperFunction {
  static countdownTimer({required double timeInSeconds}) {
    double countdown = timeInSeconds;
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (timeInSeconds > 0) countdown = countdown - 1;
    });
    final minutes = (countdown ~/ 60).toString().padLeft(2, '0');
    final seconds = (countdown % 60).toString().padLeft(2, '0');
    return {};
  }

  static removeApiErrorString() {}
  static String decodeText({required String text}) {
    return Uri.decodeComponent(text);
  }
}
  // class CountdownTimer {
  //   const CountdownTimer({this.minutes, this.seconds, this.timeLeft});
  //   final double timeInSeconds, minutes, seconds;
  // }
