import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Notifications'),
        backgroundColor: Color(0xFF1D267D),
        elevation: 10,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)
        ),
      ),

      body: ListView(
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
                        )
                      ],
                    ),
                  ),
                );
              }
          )
        ],
      ),
    );
  }
}
