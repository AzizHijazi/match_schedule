import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsDetails extends StatefulWidget {
  const NewsDetails({super.key});

  @override
  State<NewsDetails> createState() => _NewsDetailsState();
}

class _NewsDetailsState extends State<NewsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News Details'),
        backgroundColor: const Color(0xFF1D267D),
        elevation: 10,
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8)
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 250,
                        child: Image.asset('images/image.webp'),
                      ),
                      SizedBox(
                        width: 350,
                        child: Text(
                          'Sell the player Ousmane Dembele',
                          style: GoogleFonts.tajawal(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      SizedBox(
                        width: 350,
                        child: Text(
                          'Sell the player Ousmane Dembele',
                          style: GoogleFonts.tajawal(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
