import 'package:drop_me_off/presentation/account_settings.dart';
import 'package:flutter/material.dart';

class MapAndLocation extends StatefulWidget {
  const MapAndLocation({Key? key}) : super(key: key);

  @override
  State<MapAndLocation> createState() => _MapAndLocationState();
}

class _MapAndLocationState extends State<MapAndLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          height: double.maxFinite,
          width: double.maxFinite,
          child: Image.asset(
            'assets/images/map.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              color: Colors.white,
              height: 240.0,
              width: double.maxFinite,
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  const Text("Hello, David"),
                  const SizedBox(height: 10),
                  const Divider(),
                  const SizedBox(height: 10),
                  Container(
                    color: Colors.grey.withOpacity(0.2),
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: const TextField(
                      decoration: InputDecoration(
                          hintText: "where to ?", border: InputBorder.none),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                  ),
                  const ListTile(
                    leading: Icon(Icons.holiday_village),
                    title: Text("Work"),
                  ),
                ],
              ),
            )
          ],
        ),
        SafeArea(
          child: Container(
            margin:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: GestureDetector(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const AccountSettings())),
              child: const CircleAvatar(
                child: Icon(Icons.person),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
