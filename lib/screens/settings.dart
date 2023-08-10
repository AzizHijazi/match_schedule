import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/list_tile_settings.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          ListTileSettings(Route: '/connect_with_us', Title: 'Connect with us'),
          SizedBox(height: 15,),
          ListTileSettings(Route: '/who_are_we', Title: 'Who are we'),
        ],
      ),
    );
  }
}
