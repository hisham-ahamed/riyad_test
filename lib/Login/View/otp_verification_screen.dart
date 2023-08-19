import 'package:flutter/material.dart';
import 'package:get/get.dart';
//authRep import

class OtpVerificationScreen extends StatelessWidget {
  // final OtpController otpController = Get.put(AuthRepository());
  final TextEditingController otpFieldController = TextEditingController();

  void verifyOtp() {
    // otpController.verifyOtp(otpFieldController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OTP Verification'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextFormField(
              controller: otpFieldController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'OTP',
              ),
            ),
            ElevatedButton(
              onPressed: verifyOtp,
              child: Text('Verify OTP'),
            ),
          ],
        ),
      ),
    );
  }
}
