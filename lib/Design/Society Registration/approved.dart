import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApprovedScreen extends StatefulWidget {
  const ApprovedScreen({super.key});

  @override
  State<ApprovedScreen> createState() => _ApprovedScreenState();
}

class _ApprovedScreenState extends State<ApprovedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Image.asset('assets/homeicon.png'),
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: Text(
          'Approval Request',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Container(height: 1, color: Colors.grey.shade300),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Image.asset('assets/check.png', width: 184, height: 204),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  height: 501,
                  width: 390,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    border: Border.all(width: 1.5, color: Color(0xFF407BFF)),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Image.asset("assets/desc.png", width: 55, height: 55),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Approval Request',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              SizedBox(height: 8),
                              Container(
                                height: 24,
                                width: 75,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(254, 153, 0, 0.15),
                                  borderRadius: BorderRadius.circular(20),
                                  border: BoxBorder.all(
                                    color: Color.fromRGBO(254, 153, 0, 0.15),
                                    style: BorderStyle.solid,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    "PENDING",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Expanded(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 5,
                                vertical: 10,
                              ),
                              child: Text(
                                'You have registered your society successfully. It usually takes 1-2 days, if it is taking longer, send us reminder or raise ticket at support.',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(110, 109, 122, 1),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Divider(
                              color: Color.fromRGBO(64, 123, 255, 1),
                              thickness: 1.5,
                            ),
                            SizedBox(height: 15),
                            buildInfoRow('Society:', 'Shir Mahalaxmi Life'),
                            SizedBox(height: 15),
                            buildInfoRow(
                              'Address:',
                              'Shri Mahalaxmi Life, B/H Avsar Party Plot, Opp. Shukan River View, Hansol Road, Sardarnagar, Ahmedabad - 382475',
                            ),
                            SizedBox(height: 15),
                            buildInfoRow('Name:', 'Jay Dodani'),
                            SizedBox(height: 15),
                            buildInfoRow(
                              'You are::',
                              'Managing committee members of society',
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(18),
                            bottomRight: Radius.circular(18),
                          ),
                         
                          color: Color(0xFF3D73FF),
                        ),
                        child: InkWell(
                          onTap: (){
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Reminder Set '))
                              
                            );
                            
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.mail_outline,
                                color: Colors.white,
                                size: 20,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                "Send us a reminder",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildInfoRow(String title, String value) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 90,
          child: Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.5,
              color: Colors.black,
            ),
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: GoogleFonts.poppins(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.5,
              color: Colors.black,
            ),
          ),
        ),
      ],
    ),
  );
}
