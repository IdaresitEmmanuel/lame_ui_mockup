import 'package:flutter/material.dart';

class AccountSettings extends StatefulWidget {
  const AccountSettings({Key? key}) : super(key: key);

  @override
  State<AccountSettings> createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircleAvatar(
                radius: 40,
                child: Icon(Icons.person),
              ),
            ],
          ),
          const SizedBox(height: 20.0),
          const Text("David Joshua"),
          const Text("david@mail.com"),
          const SizedBox(height: 30.0),
          const ListTile(
            leading: Icon(Icons.edit),
            title: Text("Edit profile"),
          ),
          const ListTile(
            leading: Icon(Icons.money),
            title: Text("Add payment method"),
          ),
          const ListTile(
            leading: Icon(Icons.location_on),
            title: Text("Location"),
          ),
          const ListTile(
            leading: Icon(Icons.history),
            title: Text("Payment history"),
          ),
          const ListTile(
            leading: Icon(Icons.delete),
            title: Text("Delete account"),
          ),
          const ListTile(
            leading: Icon(Icons.logout),
            title: Text("Log out"),
          )
        ],
      )),
    );
  }
}
