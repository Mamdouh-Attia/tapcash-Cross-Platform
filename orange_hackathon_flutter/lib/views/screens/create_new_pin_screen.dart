import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:orange_hackathon_flutter/methods/show_default_bottom_sheet.dart';
import 'package:orange_hackathon_flutter/views/screens/forgot_pin_screen.dart';
import 'package:orange_hackathon_flutter/views/screens/login_screen.dart';
import 'package:orange_hackathon_flutter/views/screens/on_boarding_screen.dart';
import 'package:orange_hackathon_flutter/views/widgets/default_button.dart';
import 'package:orange_hackathon_flutter/views/widgets/default_text_field.dart';

// ignore: must_be_immutable
class CreateNewPinScreen extends StatefulWidget {
  const CreateNewPinScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return CreateNewPin();
  }
}

class CreateNewPin extends State<CreateNewPinScreen> {
  var pin1Controller = TextEditingController();
  var pin2Controller = TextEditingController();
  bool isLabelVisible1 = true;
  bool isLabelVisible2 = true;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double screenHeight = size.height;
    final double screenWidth = size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back)),
                ],
              ),
            ),
            const SizedBox(
              height: 44,
            ),
            const Center(
              child: Text(
                "Create a new PIN",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    fontFamily: 'poppins'),
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 36),
              child: Text(
                "New PIN",
                style: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: HexColor("#939094")),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Container(
                height: 48,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: HexColor("#EFEFEF"),
                ),
                child: TextFormField(
                  maxLength: 4,
                  obscureText: true,
                  obscuringCharacter: '•',
                  controller: pin1Controller,
                  keyboardType: TextInputType.number,
                  onTap: () {},
                  decoration: InputDecoration(
                      counterText: '',
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      border: InputBorder.none,
                      labelStyle: TextStyle(
                          fontFamily: 'poppins',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: HexColor("#939094"))),
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 36),
              child: Text(
                "Confirm PIN",
                style: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: HexColor("#939094")),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Container(
                height: 48,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: HexColor("#EFEFEF"),
                ),
                child: TextFormField(
                  maxLength: 4,
                  obscureText: true,
                  obscuringCharacter: '•',
                  controller: pin2Controller,
                  keyboardType: TextInputType.number,
                  onTap: () {},
                  decoration: InputDecoration(
                      counterText: '',
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      border: InputBorder.none,
                      labelStyle: TextStyle(
                          fontFamily: 'poppins',
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: HexColor("#939094"))),
                ),
              ),
            ),
            SizedBox(
              height: 0.33 * screenHeight,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: Container(
                  height: 48,
                  width: double.infinity,
                  child: DefaultButton(
                      onSubmitted: () {
                        showDefaultBottomSheet(
                            context,
                            'Your PIN has been reset successfully',
                            'Tap below to Login',
                            'Login', () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                        });
                      },
                      color: HexColor("#333E96"),
                      text: "Reset PIN",
                      textColor: HexColor("#F7F7F7")),
                )),
          ],
        ),
      ),
    );
  }
}