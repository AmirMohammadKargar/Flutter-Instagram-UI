import 'package:Instagram/Features/Login/presentation/widgets/facebook_login.dart';
import 'package:Instagram/Features/Login/presentation/widgets/footer.dart';
import 'package:Instagram/Features/Login/presentation/widgets/no_account_button.dart';
import 'package:Instagram/Features/Login/presentation/widgets/or_divider.dart';
import 'package:Instagram/core/widgets/big_blue_button.dart';
import 'package:Instagram/core/widgets/custom_textfield.dart';
import 'package:Instagram/core/widgets/text_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              SizedBox(
                height: size.height * 0.15,
              ),
              Center(
                child: Image(
                  image: AssetImage(
                    "assets/images/Logo.png",
                  ),
                  width: size.width * 0.4,
                ),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                child: CustomTextField(
                  size: size,
                  text: "Email",
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                child: CustomTextField(
                  size: size,
                  text: "Password",
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: CustomTextButton(
                    color: Colors.blue,
                    text: "Forget password?",
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                child: BigBlueButton(
                  size: size,
                  text: "Log in",
                ),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              FacebookLogin(size: size),
              SizedBox(
                height: size.height * 0.04,
              ),
              OrDivider(size: size),
              SizedBox(
                height: size.height * 0.05,
              ),
              NoAccountButton(),
              SizedBox(
                height: size.height * 0.13,
              ),
              Divider(),
              Footer()
            ],
          ),
        ),
      ),
    );
  }
}
