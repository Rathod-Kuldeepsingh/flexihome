import 'package:flexihome/Design/Society%20Registration/Society_otp.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterSocietyScreen extends StatefulWidget {
  const RegisterSocietyScreen({super.key});

  @override
  State<RegisterSocietyScreen> createState() => _RegisterSocietyScreenState();
}

class _RegisterSocietyScreenState extends State<RegisterSocietyScreen> {
  final _societyFormKey = GlobalKey<FormState>();
  final _adminFormKey = GlobalKey<FormState>();

  int _currentStep = 0;
  bool isChecked = false;
  String? _youAre;

  final Color primary = const Color(0xFF407BFF);
  final Color grey = const Color(0xFFE0E0E0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black87),
          onPressed: () => Navigator.pushNamed(context, '/select'),
        ),
        title: Text(
          'Register Society',
          style: GoogleFonts.poppins(
            color: Colors.black87,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: false,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 16.0,
            ),
            child: _buildStepIndicator(),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: _getStepWidget(),
              ),
            ),

            SizedBox(height: 20),

            if (_currentStep != 2)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: SizedBox(
                  width: 350,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF407BFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: () {
                      if (_currentStep == 0) {
                        if (_societyFormKey.currentState!.validate()) {
                          setState(() => _currentStep = 1);
                        }
                      } else if (_currentStep == 1) {
                        if (!_adminFormKey.currentState!.validate()) return;
                
                        if (!isChecked) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Please accept Terms & Conditions'),
                            ),
                          );
                          return;
                        }
                
                        setState(() => _currentStep = 2); // ✅ OTP screen
                      }
                    },
                
                    child: Text(
                      _currentStep == 0 ? 'Add Society' : 'Continue',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
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

  Widget _getStepWidget() {
    switch (_currentStep) {
      case 0:
        return _buildSocietyForm();
      case 1:
        return _buildAdminForm();
      case 2:
        return SocietyOtp();
      default:
        return const SizedBox();
    }
  }

  // ---------- STEP INDICATOR ----------

  Widget _buildStepIndicator() {
    return Row(
      children: [
        _buildStepCircle(step: 0),
        _buildStepLine(0, 1),
        _buildStepCircle(step: 1),
        _buildStepLine(1, 2),
        _buildStepCircle(step: 2),
      ],
    );
  }

  Widget _buildStepLine(int from, int to) {
    final bool active = _currentStep >= to;
    return Expanded(
      child: Container(
        height: 2,
        margin: const EdgeInsets.symmetric(horizontal: 4),
        color: active ? primary : grey,
      ),
    );
  }

  Widget _buildStepCircle({required int step}) {
    final bool isCurrent = _currentStep == step;
    final bool isCompleted = _currentStep > step;

    // 3 different looks similar to your design:
    // completed = solid blue with check
    // current   = blue outline + white fill
    // future    = grey outline
    Color borderColor;
    Color fillColor;
    Widget? innerChild;

    if (isCompleted) {
      borderColor = primary;
      fillColor = primary;
      innerChild = const Icon(Icons.check, size: 14, color: Colors.white);
    } else if (isCurrent) {
      borderColor = primary;
      fillColor = Colors.white;
      innerChild = Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(shape: BoxShape.circle, color: primary),
      );
    } else {
      borderColor = grey;
      fillColor = Colors.white;
      innerChild = Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(shape: BoxShape.circle, color: grey),
      );
    }

    return Container(
      width: 26,
      height: 26,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: fillColor,
        border: Border.all(color: borderColor, width: 2),
      ),
      child: Center(child: innerChild),
    );
  }

  // for society form

  Widget _buildSocietyForm() {
    return Form(
      key: _societyFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _field('Society Name ', 'Enter your society name'),
          _field('Address ', 'Enter your society address'),
          _field('Street Address ', 'Enter nearby landmark'),
          _field('City ', 'Enter city'),
          _field(
            'Postal Code ',
            'Enter postal code',
            keyboard: TextInputType.number,
          ),
          _field('State ', 'Enter state'),
          _field('Country / Region ', 'Enter country / region'),
          _field(
            'Number of units ',
            'Total flats/bungalows in the society',
            keyboard: TextInputType.number,
          ),
        ],
      ),
    );
  }

  // for admin form

  Widget _buildAdminForm() {
    return Form(
      key: _adminFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _field('Admin Name ', "Society's in-charge name"),
          _buildYouAreDropdown(),
          _field('Contact Info ', "In-charge's contact person"),
          _field(
            'Email ',
            "In-charge's email ID",
            keyboard: TextInputType.emailAddress,
          ),
          const SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Checkbox(
                  value: isChecked,
                  activeColor: const Color(0xFF407BFF),
                  onChanged: (value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: RichText(
                    text: TextSpan(
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                      children: [
                        const TextSpan(text: "I agree and accept the "),
                        TextSpan(
                          text: "Terms and Conditions",
                          style: GoogleFonts.poppins(
                            color: const Color(0xFF407BFF),
                            fontWeight: FontWeight.w500,
                          ),
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        ),
                        const TextSpan(text: " & "),
                        TextSpan(
                          text: "Privacy Policy",
                          style: GoogleFonts.poppins(
                            color: const Color(0xFF407BFF),
                            fontWeight: FontWeight.w500,
                          ),
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // for Textfield

  Widget _field(
    String label,
    String hint, {
    TextInputType keyboard = TextInputType.text,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: TextFormField(
        keyboardType: keyboard,
        validator: (value) {
          if (value == null || value.trim().isEmpty) {
            return 'This field is required';
          }
          if (label == 'Email' && !value.contains('@')) {
            return 'Enter a valid email';
          }
          return null;
        },
        decoration: InputDecoration(
          labelText: label,
          hintText: hint,
          alignLabelWithHint: true,
          labelStyle: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
          hintStyle: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 14,
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(color: primary, width: 1.4),
          ),
        ),
      ),
    );
  }

  Widget _buildYouAreDropdown() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: DropdownButtonFormField<String>(
        borderRadius: BorderRadius.circular(10),
        dropdownColor: Colors.white,
        value: _youAre,
        isExpanded: true,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please select one option';
          }
          return null;
        },
        decoration: InputDecoration(
          labelText: 'You are (optional)',
          labelStyle: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 14,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(color: Colors.grey),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(color: Color(0xFF407BFF), width: 1.4),
          ),
        ),
        hint: Text(
          'Select who you are',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        ),
        items: const [
          DropdownMenuItem(
            value: 'Managing committee members',
            child: Text('Managing committee members'),
          ),
          DropdownMenuItem(
            value: 'Owner / Resident in the society',
            child: Text('Owner / Resident in the society'),
          ),
          DropdownMenuItem(
            value: 'Managing service provider of the society',
            child: Text('Managing service provider of the society'),
          ),
          DropdownMenuItem(
            value: 'Property developer / Builder of the society',
            child: Text('Property developer / Builder of the society'),
          ),
          DropdownMenuItem(value: 'Other', child: Text('Other')),
        ],
        onChanged: (value) {
          setState(() {
            _youAre = value;
          });
        },
      ),
    );
  }
}
