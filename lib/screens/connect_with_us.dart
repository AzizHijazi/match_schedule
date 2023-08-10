import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConnectWithUs extends StatefulWidget {
  const ConnectWithUs({super.key});

  @override
  State<ConnectWithUs> createState() => _ConnectWithUsState();
}

class _ConnectWithUsState extends State<ConnectWithUs> {
  late TextEditingController _nameTextController;
  late TextEditingController _emailTextController;
  late TextEditingController _messageTextController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _nameTextController = TextEditingController();
    _emailTextController = TextEditingController();
    _messageTextController = TextEditingController();

  }

  @override
  void dispose() {
    // TODO: implement dispose
    _nameTextController.dispose();
    _emailTextController.dispose();
    _messageTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Connect with us'),
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
            Column(
              children: [
                TextField(
                  keyboardType: TextInputType.name,
                  controller: _nameTextController,
                  textAlignVertical: TextAlignVertical.center,
                  textCapitalization: TextCapitalization.none,
                  textInputAction: TextInputAction.done,
                  cursorColor: Color(0xFF1D267D),
                  style: GoogleFonts.poppins(),
                  decoration: InputDecoration(
                      hintText: 'Name',
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 20,
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Color(0xFF1D267D),
                          width: 2,
                        ),
                      ),

                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFF1D267D),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Color(0xFF1D267D),
                      )
                  ),
                ),
                const SizedBox(height: 25,),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: _emailTextController,
                  textAlignVertical: TextAlignVertical.center,
                  textCapitalization: TextCapitalization.none,
                  textInputAction: TextInputAction.done,
                  cursorColor: Color(0xFF1D267D),
                  style: GoogleFonts.poppins(),
                  decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 20,
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Color(0xFF1D267D),
                          width: 2,
                        ),
                      ),

                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFF1D267D),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: const Icon(
                        Icons.email,
                        color: Color(0xFF1D267D),
                      )
                  ),
                ),
                const SizedBox(height: 25,),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: _messageTextController,
                  textAlignVertical: TextAlignVertical.center,
                  textCapitalization: TextCapitalization.none,
                  textInputAction: TextInputAction.done,
                  style: GoogleFonts.poppins(),
                  cursorColor: Color(0xFF1D267D),
                  maxLength: 250,
                  minLines: 1,
                  maxLines: 8,

                  decoration: InputDecoration(
                      hintText: 'Message',
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 20,
                      ),

                      contentPadding: const EdgeInsets.symmetric(vertical: 50),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Color(0xFF1D267D),
                          width: 2,
                        ),
                      ),

                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFF1D267D),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: const Icon(
                        Icons.message,
                        color: Color(0xFF1D267D),
                      )
                  ),
                ),

                const SizedBox(height: 20,),

                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Send',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 45),
                    backgroundColor: Color(0xFF1D267D),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 10,
                  ),
                ),
              ],
            ),
          ],
        )
      ),
    );
  }

  void _performSend() {

  }

  // bool _checkData() {
  //
  // }

  void _SendMessage() async {

  }

}
