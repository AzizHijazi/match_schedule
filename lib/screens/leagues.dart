import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Leagues extends StatefulWidget {
  const Leagues({super.key});

  @override
  State<Leagues> createState() => _LeaguesState();
}

class _LeaguesState extends State<Leagues> {
  @override
  Widget build(BuildContext context) {
    return  ListView(
      clipBehavior: Clip.antiAlias,
      padding: const EdgeInsets.symmetric(vertical: 20),
      scrollDirection: Axis.vertical,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SearchBar(
            hintText: 'Search',

          ),
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 20,
          padding: const EdgeInsets.all(20),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Column(
                  children: [
                    SizedBox(
                      height: 110,
                      child: Image.asset('images/logo.png'),
                    ),
                    Text(
                      'Name',
                      style: GoogleFonts.tajawal(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
