import 'package:flutter/material.dart';
import 'package:kor_kue_tech/constance.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _isBtnEnable = false;

  void _checkText() {
    setState(() {});
    if (_emailController.text.isNotEmpty &&
        _passwordController.text.isNotEmpty) {
      _isBtnEnable = true;
    } else {
      _isBtnEnable = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top,
            bottom: MediaQuery.of(context).padding.bottom,
            left: defaultPadding,
            right: defaultPadding),
        color: Theme.of(context).backgroundColor,
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height -
                MediaQuery.of(context).padding.top -
                MediaQuery.of(context).padding.bottom,
            // height: MediaQuery.of(context).size.height -
            //     MediaQuery.of(context).size.height * 0.2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/KKFCir_1.png',
                  alignment: Alignment.topRight,
                  scale: 1.2,
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        // height: MediaQuery.of(context).size.height * 0.3,
                        width: MediaQuery.of(context).size.width,
                        color: Color.fromRGBO(255, 255, 255, 0.8),
                        child: Column(
                          //input column
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // Container(
                            //   decoration: const BoxDecoration(
                            //     color: Colors.green,
                            //     borderRadius: BorderRadius.only(
                            //       topLeft: Radius.circular(40.0),
                            //       topRight: Radius.circular(40.0),
                            //     ),
                            //   ),
                            // ),
                            Text(
                              "Kor Kue App Name",
                              style: textTheme.headline3,
                            ),
                            TextField(
                              onChanged: (_) => _checkText(),
                              controller: _emailController,
                              style: textTheme.bodyText1!
                                  .copyWith(color: Colors.black),
                              decoration: InputDecoration(
                                labelText: 'Email Address',
                                labelStyle: textTheme.bodyText1!
                                    .copyWith(color: surfaceColor),
                                enabledBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: primaryColor),
                                ),
                                focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: primaryColor),
                                ),
                              ),
                            ),
                            TextField(
                              onChanged: (_) => _checkText(),
                              controller: _passwordController,
                              obscureText: true,
                              style: textTheme.bodyText1!
                                  .copyWith(color: Colors.black),
                              decoration: InputDecoration(
                                labelText: 'Password',
                                labelStyle: textTheme.bodyText1!
                                    .copyWith(color: surfaceColor),
                                enabledBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: primaryColor),
                                ),
                                focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: primaryColor),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                top: 30.0,
                                // bottom: 50.0,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              width: MediaQuery.of(context).size.width - 100,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: _isBtnEnable
                                        ? primaryColor
                                        : primaryColor.withOpacity(0.6)),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.transparent,
                                      shadowColor: Colors.transparent),
                                  onPressed: () {},
                                  child: Padding(
                                    padding: EdgeInsets.all(15.0),
                                    child: Text(
                                      'LOGIN',
                                      style: textTheme.button!
                                          .copyWith(color: surfaceColor),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width - 100,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'SIGN UP',
                                  style: textTheme.button!
                                      .copyWith(color: surfaceColor),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OpenPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.white;
    Rect rect = Rect.fromLTRB(0, 0, size.width, size.height);
    RRect rRect = RRect.fromRectAndRadius(rect, Radius.circular(18));
    canvas.drawRRect(rRect, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
