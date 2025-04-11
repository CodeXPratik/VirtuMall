import 'package:flutter/material.dart';
import 'package:virtumall/views/pages/user_signin/create_account.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween, // Space elements apart
            children: [
              Text(
                'Augment Your Shopping Experience, Virtually & Beyond.',

                style: TextStyle(fontFamily: 'GeneralSans',
                fontWeight: FontWeight.w600,
                fontSize: 46),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                width: double.infinity,
                height: 54,
                child: FilledButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const CreateAccount()),
                    );
                  },
                  child: const Text('Get Started'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
