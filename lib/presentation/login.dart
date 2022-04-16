import 'package:drop_me_off/presentation/map_screen.dart';
import 'package:drop_me_off/presentation/signup.dart';
import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.mail),
                  hintText: "Email",
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10.0),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  hintText: "Password",
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const MapAndLocation())),
              child: const Text('Log in'),
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(double.maxFinite, 40.0)),
            ),
            const SizedBox(height: 10.0),
            Row(
              children: [
                const Text('Don\'t have an account?'),
                const SizedBox(width: 10.0),
                GestureDetector(
                  onTap: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => const SignUp())),
                  child: Text(
                    'Sign up',
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
