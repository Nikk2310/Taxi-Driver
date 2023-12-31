import 'package:flutter/material.dart';

import '../widgets/login_signup_screen_widgets/login_signup_form.dart';

class LoginUI extends StatelessWidget {
  const LoginUI({Key? key}) : super(key: key);

  static const String route = '/login-signup';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.location_on_sharp,
                  size: 100,
                  color: Theme.of(context).primaryColor,
                ),
                const SizedBox(height: 10),
                Text(
                  'Taxi App Driver',
                  style: Theme.of(context).textTheme.headline1,
                ),
                const SizedBox(height: 20),
                const LoginForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
