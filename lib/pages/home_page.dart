import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePageWidget extends StatelessWidget {
  const HomePageWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Lottie Animation
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LottieBuilder.asset("assets/lottie/english.json"),
                const SizedBox(height: 200)
              ],
            ),
          ),
          // Bottom Sheet
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                border: Border(
                  top: BorderSide(color: Colors.grey, width: 1.0),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Action for Login button
                    },
                    style: ElevatedButton.styleFrom(minimumSize: const Size(350,50),
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5), // Change border radius of the button
                    ),
                    side: const BorderSide(color: Colors.black), // Add border to the button
                    backgroundColor: Colors.white,),
                    child: const Text('Login'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Action for Login button
                    },
                      style: ElevatedButton.styleFrom(minimumSize: const Size(350,50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5), // Change border radius of the button
                        ),
                        side: const BorderSide(color: Colors.black), // Add border to the button
                        backgroundColor: Colors.white,),
                    child: Text('Sign up'),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      // Action for Login with Google button
                    },
                    style: ElevatedButton.styleFrom(minimumSize: const Size(350,50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5), // Change border radius of the button
                      ),
                      side: const BorderSide(color: Colors.black), // Add border to the button
                      backgroundColor: Colors.white,),
                    icon: Image.asset('assets/images/google.png', height: 24, width: 24), // Replace with actual Google icon asset
                    label: Text('Login with Google'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
