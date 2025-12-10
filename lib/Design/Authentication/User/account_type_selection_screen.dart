// ignore_for_file: deprecated_member_use

import 'package:flexihome/Design/Authentication/User/login.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountTypeSelectionScreen extends StatefulWidget {
  const AccountTypeSelectionScreen({super.key});

  @override
  State<AccountTypeSelectionScreen> createState() =>
      _AccountTypeSelectionScreenState();
}

class _AccountTypeSelectionScreenState
    extends State<AccountTypeSelectionScreen> {
  String? selectedAccountType;
  @override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.white,
    body: SafeArea(
      child: Column(
        children: [
          Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: ListView(
                  children: [
                    Center(
                      child: Text(
                        'Please Select Your Account Type',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                            
                    const SizedBox(height: 20),
                            
                    AccountTypeCard(
                      imagePath: "assets/avtar1.png",
                      title: "Member",
                      subtitle: "Login as society member",
                      isSelected: selectedAccountType == "member",
                      onTap: () {
                        setState(() {
                          selectedAccountType = "member";
                        });
                      },
                    ),
                            
                    const SizedBox(height: 20),
                            
                    AccountTypeCard(
                      imagePath: "assets/avtar3.png",
                      title: "Secretary/Treasurer",
                      subtitle: "Login as secretary person",
                      isSelected: selectedAccountType == "secretary",
                      onTap: () {
                        setState(() {
                          selectedAccountType = "secretary";
                        });
                      },
                    ),
                            
                    const SizedBox(height: 20),
                            
                    AccountTypeCard(
                      imagePath: "assets/avtar2.png",
                      title: "Security Guard",
                      subtitle: "Login as security guard",
                      isSelected: selectedAccountType == "guard",
                      onTap: () {
                        setState(() {
                          selectedAccountType = "guard";
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
        

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: SizedBox(
              width: 350,
              height: 44,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF407BFF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: selectedAccountType == null
                    ? null
                    : () {
                        if (kDebugMode) {
                          print("Selected: $selectedAccountType");
                        }
                        if (selectedAccountType == "member") {
                          Navigator.pushReplacementNamed(context, '/login');
                        } else if (selectedAccountType == "secretary") {
                          Navigator.pushReplacementNamed(context, '/secretary');
                        } else {
                          Navigator.pushReplacementNamed(
                              context, '/guardLogin');
                        }
                      },
                child: Text(
                  "Register Society",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
 }
class AccountTypeCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final bool isSelected;
  final VoidCallback? onTap;

  const AccountTypeCard({
    super.key,
    required this.imagePath,
    required this.isSelected,
    required this.title,
    required this.subtitle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 200,
        height: 198,
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: isSelected ? Color(0xFF407BFF) : Colors.black,
              ),
              color: isSelected
                  ? Color(0xFF407BFF).withOpacity(0.05)
                  : Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.grey.shade200,
                    child: ClipOval(
                      child: Image.asset(
                        imagePath,
                        width: 100,
                        height: 124,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    title,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),

                  Text(
                    subtitle,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
