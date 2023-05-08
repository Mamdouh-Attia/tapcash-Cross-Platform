import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:orange_hackathon_flutter/controllers/authentication_controller.dart';
import 'package:orange_hackathon_flutter/views/screens/create_new_pin_screen.dart';
import 'package:orange_hackathon_flutter/views/widgets/default_button.dart';
import 'package:provider/provider.dart';



// ignore: must_be_immutable
class ForgotPinScreen extends StatelessWidget {
  var emailController = TextEditingController();

  ForgotPinScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double screenHeight = size.height;
  
    return Consumer<AuthenticationProvider>(builder:(context,value,child)=>Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 75,
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
              height: 48.5,
            ),
            Image.asset(
              "assets/images/password-reset.png",
              height: 45,
              width: 51,
            ),
            const SizedBox(
              height: 20.5,
            ),
            const Text(
              "Forgot PIN?",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  fontFamily: 'poppins'),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "We will send you reset instructions",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                  fontFamily: 'poppins',
                  color: HexColor("#5E5E5E")),
            ),
            Text(
              "Enter your E-mail",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                  fontFamily: 'poppins',
                  color: HexColor("#5E5E5E")),
            ),
            const SizedBox(
              height: 16,
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
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 14.4, bottom: 14.4, left: 16),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    onTap: () {
                      value.emailForgotPinlabelVisibleUnvisible();
                    },
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText:
                            value.isEmailForgotPinLabelVisible ? 'Youremaail@gmail.com' : null,
                        labelStyle: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: HexColor("#939094"))),
                  ),
                ),
              ),
            ),
            SizedBox(height: .39 * screenHeight),
            Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: SizedBox(
                  height: 48,
                  width: double.infinity,
                  child: DefaultButton(
                      onSubmitted: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  CreateNewPinScreen()));
                      },
                      color: HexColor("#333E96"),
                      text: "Send instructions",
                      textColor: HexColor("#F7F7F7")),
                )),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    ));
  }
}