import 'package:flutter/material.dart';

class ListTileSettings extends StatefulWidget {

  final String Route;
  final String Title;

  const ListTileSettings({super.key,required this.Route,required this.Title});

  @override
  State<ListTileSettings> createState() => _ListTileSettingsState();
}

class _ListTileSettingsState extends State<ListTileSettings> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.pushNamed(context, widget.Route);
      },
      onLongPress: () {},
      title: Text(
        widget.Title,
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      tileColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),

      trailing: const Icon(
        Icons.keyboard_arrow_right,
        color: Colors.black,
        size: 25,
      ),
    );
  }
}
