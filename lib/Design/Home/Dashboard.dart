import 'package:flexihome/Design/Profile/Userprofile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Center(child: Text("Dashboard", style: TextStyle(fontSize: 22))),
    Center(child: Text("Notice", style: TextStyle(fontSize: 22))),
    Center(child: Text("Community", style: TextStyle(fontSize: 22))),
    Center(child: Text("Service", style: TextStyle(fontSize: 22))),
    Center(child: Text("Society", style: TextStyle(fontSize: 22))),
  ];

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
        title: Text(
          "Jay Dodani",
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Container(height: 1, color: Colors.grey.shade300),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none),
            iconSize: 28,
            color: Color.fromRGBO(110, 109, 122, 1),
            onPressed: () {},
          ),

          const SizedBox(width: 10),

          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Userprofile()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: SizedBox(
                width: 35,
                height: 35,
                child: CircleAvatar(
                  radius: 22,
                  backgroundColor: const Color(0xFFE4ECFF),
                  child: Text(
                    "J",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 18,
                        color: Color(0xFF256EEE),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6)],
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          backgroundColor: Colors.white,
          onTap: _onTap,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xff407BFF),
          unselectedItemColor: Color.fromRGBO(110, 109, 122, 1),
          selectedLabelStyle: GoogleFonts.poppins(
            textStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
          ),
          unselectedLabelStyle: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontSize: 12,
              color: Color(0xFF6E6D7A),
              fontWeight: FontWeight.w400,
            ),
          ),

          items: [
            BottomNavigationBarItem(
              icon: Image.asset('assets/home.png', width: 25, height: 25),
              activeIcon: Image.asset(
                'assets/home1.png',
                width: 25,
                height: 25,
                color: Color(0xFF256EEE),
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/notice.png', width: 25, height: 25),
              label: "Notice",
              activeIcon: Image.asset(
                'assets/notice.png',
                width: 25,
                height: 25,
                color: Color(0xFF256EEE),
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/community.png', width: 25, height: 25),
              activeIcon: Image.asset(
                'assets/comunity1.png',
                width: 25,
                height: 25,
                color: Color(0xFF256EEE),
              ),
              label: "Community",
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/setting.png', width: 25, height: 25),
              activeIcon: Image.asset(
                'assets/setting.png',
                width: 25,
                height: 25,
                color: Color(0xFF256EEE),
              ),
              label: "Service",
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/sco.png', width: 25, height: 25),
              activeIcon: Image.asset(
                'assets/soc1.png',
                width: 25,
                height: 25,
                color: Color(0xFF256EEE),
              ),
              label: "Society",
            ),
          ],
        ),
      ),
    );
  }
}
