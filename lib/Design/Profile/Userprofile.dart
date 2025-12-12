import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Userprofile extends StatefulWidget {
  const Userprofile({super.key});

  @override
  State<Userprofile> createState() => _UserprofileState();
}

class _UserprofileState extends State<Userprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(239, 243, 255, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(239, 243, 255, 1),
        elevation: 0,
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              buildcontainer(context),
              SizedBox(height: 10),
              myAccountTile(context),
              householdSection(context),
              security(context),
              purchase(context),
              manageflate(context),
              generalsetting(context),
              moresetting(context),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Mbee ©2024. All rights reserved.",
                      style: GoogleFonts.poppins(
                        fontSize: 11,
                        color: Color.fromRGBO(112, 112, 112, 1),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      'v0.0.1',
                      style: GoogleFonts.poppins(
                        fontSize: 11,
                        color: Color.fromRGBO(112, 112, 112, 1),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildcontainer(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        shape: BoxShape.rectangle,
        border: BorderDirectional(
          top: BorderSide(
            width: 1,
            style: BorderStyle.solid,
            color: Colors.grey.shade400,
          ),
          end: BorderSide(
            width: 1,
            style: BorderStyle.solid,
            color: Colors.grey.shade400,
          ),
          start: BorderSide(
            width: 1,
            style: BorderStyle.solid,
            color: Colors.grey.shade400,
          ),
          bottom: BorderSide.none,
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                SizedBox(
                  width: 73,
                  height: 73,
                  child: CircleAvatar(
                    backgroundColor: Color.fromRGBO(220, 232, 255, 1),
                    child: Text("J"),
                  ),
                ),
                SizedBox(width: 10),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Jay Dodani",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Container(
                        // let the container size adapt
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        height: 30,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(252, 71, 63, 0.1),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Color.fromRGBO(254, 153, 0, 0.15),
                            style: BorderStyle.solid,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "My Flexi Home  ",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color.fromRGBO(110, 109, 122, 1),
                                ),
                              ),
                            ),
                            Text(
                              "384 833",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            Icon(
                              Icons.info_outline,
                              color: Color.fromRGBO(64, 123, 255, 1),
                              size: 18,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10),

                Image.asset('assets/scan.png', width: 30, height: 30),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(255, 249, 243, 1),
                  Color.fromRGBO(255, 229, 207, 1),
                ],
              ),
              border: Border.all(color: Colors.orange.shade200, width: 1.5),
            ),
            child: Row(
              children: [
                Image.asset('assets/diamond.png', width: 40, height: 40),
                SizedBox(width: 12),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      showFloatingSnackBar(context);
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Discover Flexi Home Premium",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(64, 123, 255, 1),
                            ),
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Unlock Advanced Features & Benefits!",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                  color: Color.fromRGBO(64, 123, 255, 1),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget myAccountTile(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: InkWell(
      onTap: () {
        showFloatingSnackBar(context);
      },
      child: Container(
        height: 64,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8)],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  SizedBox(
                    width: 36,
                    height: 36,
                    child: CircleAvatar(
                      backgroundColor: Color.fromRGBO(243, 244, 248, 1),
                      child: Icon(
                        Icons.person,
                        size: 18,
                        color: Color.fromRGBO(145, 151, 167, 1),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "My Account",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      showFloatingSnackBar(context);
                    },
                    child: Icon(
                      size: 20,
                      Icons.arrow_forward_ios,
                      color: Color.fromRGBO(145, 151, 167, 1),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

void showFloatingSnackBar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        'Coming Soon!',
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
      behavior: SnackBarBehavior.floating, // FLOATING SNACKBAR
      margin: EdgeInsets.only(bottom: 80, left: 20, right: 20), // POSITION
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      backgroundColor: Colors.black87,
      duration: Duration(milliseconds: 1100),
    ),
  );
}

Widget householdCard(
  String title,
  String subtitle,
  IconData icon,
  Color bg,
  Color ic,
  Color tx,
) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Colors.grey.shade300),
    ),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                overflow: TextOverflow.clip,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 4),
              Text(
                subtitle,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: tx,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 8),
        SizedBox(
          width: 34,
          height: 34,
          child: CircleAvatar(
            backgroundColor: bg,
            child: Icon(icon, color: ic, size: 20),
          ),
        ),
      ],
    ),
  );
}

Widget householdSection(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              children: [
                Text(
                  "Household",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(110, 109, 122, 1),
                    ),
                  ),
                ),
                Spacer(),
                Text(
                  "Manage",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(64, 123, 255, 1),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showFloatingSnackBar(context);
                  },
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                    color: Color.fromRGBO(64, 123, 255, 1),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 16),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 2.4,
              physics: NeverScrollableScrollPhysics(),
              children: [
                householdCard(
                  "Family",
                  "2 member",
                  Icons.group,
                  Color.fromRGBO(2, 184, 157, 0.1),
                  Color.fromRGBO(2, 184, 157, 1),
                  Color.fromRGBO(110, 109, 122, 1),
                ),
                householdCard(
                  "Daily Help",
                  "Chandra, Raju, +3",
                  Icons.engineering,
                  Color.fromRGBO(138, 6, 6, 0.1),
                  Color.fromRGBO(138, 6, 6, 1),
                  Color.fromRGBO(110, 109, 122, 1),
                ),
                householdCard(
                  "Vehicles",
                  "GJ21AB7878, +2",
                  Icons.directions_car,
                  Color.fromRGBO(252, 71, 63, 0.1),
                  Color.fromRGBO(64, 123, 255, 1),
                  Color.fromRGBO(110, 109, 122, 1),
                ),
                InkWell(
                  onTap: () {
                    showFloatingSnackBar(context);
                  },
                  child: householdCard(
                    "Pets",
                    "+ Add",
                    Icons.pets_outlined,
                    Color.fromRGBO(254, 153, 0, 0.1),
                    Color.fromRGBO(254, 153, 0, 1),
                    Color.fromRGBO(64, 123, 255, 1),
                  ),
                ),
              ],
            ),
          ),

          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "My Address",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            showFloatingSnackBar(context);
                          },
                          child: Row(
                            children: [
                              Text(
                                "Share",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(64, 123, 255, 1),
                                  ),
                                ),
                              ),
                              SizedBox(width: 6),
                              Image.asset(
                                'assets/share.png',
                                color: Color.fromRGBO(64, 123, 255, 1),
                                width: 16,
                                height: 16,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    RichText(
                      text: TextSpan(
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                        children: [
                          TextSpan(
                            text: "Block A 22, ",
                            style: TextStyle(color: Colors.blue),
                          ),
                          TextSpan(
                            text:
                                "Shree Mahalaxmi Life Co. Ho. So. Ltd, C-53 Mahalaxmi Life, Indira Bridge, Sardarnagar - 382475",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 12),
        ],
      ),
    ),
  );
}

Widget security(BuildContext context) {
  List<Map<String, dynamic>> fruits = [
    {"name": "Notification Preferences", "icon": 'assets/notification.png'},
    {"name": "Security Alert List", "icon": 'assets/shield.png'},
  ];

  return Padding(
    padding: const EdgeInsets.all(10),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            child: Text(
              "Security & Notification",
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(110, 109, 122, 1),
              ),
            ),
          ),

          // Notification Tile (unchanged)
          Padding(
            padding: const EdgeInsets.all(10),
            child: InkWell(
              borderRadius: BorderRadius.circular(6),
              onTap: () => showFloatingSnackBar(context),
              child: Container(
                height: 52,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(252, 71, 63, 0.1),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Not Getting Notification?",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Text(
                        "Test Now",
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(64, 123, 255, 1),
                        ),
                      ),
                      SizedBox(width: 6),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: Color.fromRGBO(64, 123, 255, 1),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: fruits.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: Color.fromRGBO(243, 244, 248, 1),
                  child: Image.asset(
                    color: Color.fromRGBO(64, 123, 255, 1),
                    fruits[index]["icon"],
                    width: 24,
                    height: 24,
                  ),
                ),
                title: Text(
                  fruits[index]["name"],
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Color.fromRGBO(64, 123, 255, 1),
                ),
                onTap: () => showFloatingSnackBar(context),
              );
            },
          ),
          SizedBox(height: 12),
        ],
      ),
    ),
  );
}

Widget purchase(BuildContext context) {
  final List<Map<String, String>> items = [
    {"name": "My Orders", "icon": "assets/shield.png"},
    {"name": "My Plans", "icon": "assets/dia.png"},
  ];

  return Padding(
    padding: const EdgeInsets.all(10),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            child: Text(
              "Purchases",
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(110, 109, 122, 1),
              ),
            ),
          ),

          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: items.length,
            separatorBuilder: (_, __) =>
                Container(height: 1, color: Colors.grey.shade300),
            itemBuilder: (context, index) {
              final item = items[index];
              final bool isLast = index == items.length - 1;

              return ListTile(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                leading: CircleAvatar(
                  radius: 22,
                  backgroundColor: Color.fromRGBO(243, 244, 248, 1),
                  child: Image.asset(
                    item["icon"]!,
                    width: 20,
                    height: 20,
                    color: Color.fromRGBO(64, 123, 255, 1),
                  ),
                ),
                title: Text(
                  item["name"]!,
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                trailing: isLast
                    ? Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(110, 109, 122, 0.1),
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(
                            color: Color.fromRGBO(110, 109, 122, 1),
                            width: 1.2,
                          ),
                        ),
                        child: Text(
                          "Free",
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(110, 109, 122, 1),
                          ),
                        ),
                      )
                    : Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                        color: Color.fromRGBO(64, 123, 255, 1),
                      ),

                onTap: () {
                  if (isLast) {
                    showFloatingSnackBar(context);
                  } else {
                    showFloatingSnackBar(context);
                  }
                },
              );
            },
          ),
          SizedBox(height: 12),
        ],
      ),
    ),
  );
}

Widget manageflate(BuildContext context) {
  List<Map<String, dynamic>> fruits = [
    {
      "name": "Block A 22,Savvy Studioz Near Godrej Garden City",
      "icon": 'assets/home.png',
      "iconname": "Active",
      "color": Color.fromRGBO(2, 184, 157, 1),
      "bg": Color.fromRGBO(2, 184, 157, 0.1),
    },
    {
      "name": "Block B 22,Savvy Studioz Near Godrej Garden City",
      "icon": 'assets/home.png',
      "iconname": "Rent",
      "color": Color.fromRGBO(254, 153, 0, 1),
      "bg": Color.fromRGBO(254, 153, 0, 0.1),
    },
  ];

  return Padding(
    padding: const EdgeInsets.all(10),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            child: Text(
              "Maange Flats",
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(110, 109, 122, 1),
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: fruits.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: Color.fromRGBO(243, 244, 248, 1),
                  child: Image.asset(
                    color: Color.fromRGBO(64, 123, 255, 1),
                    fruits[index]["icon"],
                    width: 24,
                    height: 24,
                  ),
                ),
                title: Text(
                  fruits[index]["name"],
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                trailing: Container(
                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                  decoration: BoxDecoration(
                    color: fruits[index]['bg'],
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(
                      color: fruits[index]['color'],
                      width: 1.2,
                    ),
                  ),
                  child: Text(
                    fruits[index]['iconname'],
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: fruits[index]['color'],
                    ),
                  ),
                ),
                onTap: () => showFloatingSnackBar(context),
              );
            },
          ),
          TextButton(
            onPressed: () {
              showFloatingSnackBar(context);
            },
            child: Text(
              "+ Add Flat/villa",
              style: GoogleFonts.poppins(
                fontSize: 15,
                color: Color.fromRGBO(64, 123, 255, 1),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 12),
        ],
      ),
    ),
  );
}

Widget generalsetting(BuildContext context) {
  final List<Map<String, String>> items = [
    {"name": "Language Settings", "icon": "assets/internet.png"},
    {"name": "Support & Feedback", "icon": "assets/live-chat.png"},
    {"name": "Account Information", "icon": "assets/user.png"},
    {"name": "Refer a friend about Flexi Home", "icon": "assets/exchange.png"},
  ];

  return Padding(
    padding: const EdgeInsets.all(10),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            child: Text(
              "General Settings",
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(110, 109, 122, 1),
              ),
            ),
          ),

          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: items.length,
            separatorBuilder: (_, __) =>
                Container(height: 1, color: Colors.grey.shade300),
            itemBuilder: (context, index) {
              final item = items[index];
              return ListTile(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                leading: CircleAvatar(
                  radius: 22,
                  backgroundColor: Color.fromRGBO(243, 244, 248, 1),
                  child: Image.asset(
                    item["icon"]!,
                    width: 20,
                    height: 20,
                    color: Color.fromRGBO(64, 123, 255, 1),
                  ),
                ),
                title: Text(
                  item["name"]!,
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                  color: Color.fromRGBO(64, 123, 255, 1),
                ),
                onTap: () {
                  showFloatingSnackBar(context);
                },
              );
            },
          ),
          SizedBox(height: 12),
        ],
      ),
    ),
  );
}

Widget moresetting(BuildContext context) {
  final List<Map<String, String>> items = [
    {"name": "FAQs", "icon": "assets/circle.png"},
    {"name": "Contact Us", "icon": "assets/call.png"},
    {"name": "About & Legal", "icon": "assets/inventory.png"},
    {"name": "Term & Condition", "icon": "assets/action.png"},
    {"name": "Logout", "icon": "assets/exit.png"},
  ];

  return Padding(
    padding: const EdgeInsets.all(10),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            child: Text(
              "More",
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(110, 109, 122, 1),
              ),
            ),
          ),

          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: items.length,
            separatorBuilder: (_, __) =>
                Container(height: 1, color: Colors.grey.shade300),
            itemBuilder: (context, index) {
              final item = items[index];
              return ListTile(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                leading: CircleAvatar(
                  radius: 22,
                  backgroundColor: Color.fromRGBO(243, 244, 248, 1),
                  child: Image.asset(
                    item["icon"]!,
                    width: 20,
                    height: 20,
                    color: Color.fromRGBO(64, 123, 255, 1),
                  ),
                ),
                title: Text(
                  item["name"]!,
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                  color: Color.fromRGBO(64, 123, 255, 1),
                ),
                onTap: () {
                  showFloatingSnackBar(context);
                },
              );
            },
          ),
          SizedBox(height: 12),
        ],
      ),
    ),
  );
}
