import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WhoAreWe extends StatelessWidget {
  const WhoAreWe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Who are we'),
        backgroundColor: Color(0xFF1D267D),
        elevation: 10,
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8)
        ),
      ),

      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Card(
              elevation: 10,
              child: SizedBox(
                width: 350,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'Sell the player Ousmane Dembele Sell the player Ousmane Dembele Sell the player Ousmane DembeleSell the player Ousmane Dembele Sell the player Ousmane Dembele Sell the player Ousmane Dembele Sell the player Ousmane Dembele ',
                    style: GoogleFonts.tajawal(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
