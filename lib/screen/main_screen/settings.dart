import 'package:flutter/material.dart';
import 'package:patient_app/widget/widget.dart';
class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                AppBarHomeScreen(title: "Settings"),
                SettingsCard(icon: Icons.person, name: "Account"),
                SettingsCard(icon: Icons.hexagon, name: "App"),
                SettingsCard(icon: Icons.lock_rounded, name: "Password Change"),
                SettingsCard(icon: Icons.person_remove, name: "Remove Account"),
                SettingsCard(icon: Icons.logout, name: "Logout"),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
