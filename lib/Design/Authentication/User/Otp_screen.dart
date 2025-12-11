// ignore_for_file: file_names

import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  static const int _totalSeconds = 120;
  int _secondsRemaining = _totalSeconds;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    _secondsRemaining = _totalSeconds;
    _timer?.cancel();

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_secondsRemaining == 0) {
        timer.cancel();
      } else {
        setState(() {
          _secondsRemaining--;
        });
      }
    });
  }

  String get timerText {
    final minutes = (_secondsRemaining ~/ 60).toString().padLeft(2, '0');
    final seconds = (_secondsRemaining % 60).toString().padLeft(2, '0');
    return "$minutes:$seconds";
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Container(height: 1, color: Colors.grey.shade300),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('assets/Otp.png', width: 300, height: 224),
                SizedBox(height: 2),
                Text(
                  "Please Enter OTP",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                      children: [
                        const TextSpan(
                          text:
                              "Please check your phone, OTP has been sent to ",
                        ),
                        TextSpan(
                          text: "9724697876",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color(0xFF407BFF),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        TextSpan(
                          text:
                              ".If you do not receive the number , please try again and make sure that you provide the correct number",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Pinput(
                  length: 4,
                  onCompleted: (pin) {
                    debugPrint("OTP: $pin");
                  },
                  defaultPinTheme: PinTheme(
                    width: 60,
                    height: 60,
                    textStyle: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                Text(
                  timerText,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xFF407BFF),
                  ),
                ),

                const SizedBox(height: 20),

                SizedBox(
                  width: 350,
                  height: 44,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF407BFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Verify",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        letterSpacing: 0.15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                      children: [
                        const TextSpan(text: "If code not receive, click "),
                        TextSpan(
                          text: "Resend OTP",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: _secondsRemaining == 0
                                  ? const Color(0xFF407BFF)
                                  : Colors.grey, // disabled color
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              if (_secondsRemaining == 0) {
                                startTimer();
                                debugPrint('Resend OTP');
                              }
                            },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
