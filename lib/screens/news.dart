import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      clipBehavior: Clip.antiAlias,
      padding: const EdgeInsets.all(20),
      scrollDirection: Axis.vertical,
      children: [
        ListView.builder(
            itemCount: 10,
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemBuilder: (context, index){
            return SizedBox(
              height: 150,
              child: GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/news_details');
                },
                child: Card(
                  child: Row(
                    children: [
                      SizedBox(
                        height: 110,
                        child: Image.asset('images/logo.png'),
                      ),
                      SizedBox(width: 10,),
                      SizedBox(
                        width: 210,
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
              ),
            );
            }
        )
      ],
    );
  }
}
