import 'package:flutter/material.dart';
import 'package:kor_kue_tech/constance.dart';

// class LoginScreen extends StatefulWidget {
//   LoginScreen({Key? key}) : super(key: key);

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   @override
//   Widget build(BuildContext context) {
//     final TextTheme textTheme = Theme.of(context).textTheme;
//     return Container(
//       padding: EdgeInsets.only(
//           top: MediaQuery.of(context).padding.top,
//           bottom: MediaQuery.of(context).padding.bottom,
//           left: defaultPadding,
//           right: defaultPadding),
//       color: Theme.of(context).primaryColor,
//       child: SingleChildScrollView(
//         child: Container(
//           height: MediaQuery.of(context).size.height -
//               MediaQuery.of(context).padding.top -
//               MediaQuery.of(context).padding.bottom,
//           child: Column(
//             children: [
//               Column(
//                 children: [
//                   Center(
//                     child: Image.asset('assets/images/KKFCir_1.png',
//                         fit: BoxFit.scaleDown),
//                   ),
//                   Column(
//                     children: [
//                       TextField(
//                         decoration: InputDecoration(
//                           labelText: 'Email',
//                           labelStyle: textTheme.bodyText1!
//                               .copyWith(color: Colors.white),
//                           enabledBorder: UnderlineInputBorder(
//                             borderSide: BorderSide(color: Colors.white),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   // Column(
//                   //   crossAxisAlignment: CrossAxisAlignment.start,
//                   //   children: [
//                   //     TextField(
//                   //       // onChanged: (_) => _checkText(),
//                   //       // controller: _emailController,
//                   //       style:
//                   //           textTheme.bodyText1!.copyWith(color: Colors.white),
//                   //       decoration: InputDecoration(
//                   //           labelText: 'Email Address',
//                   //           labelStyle: textTheme.bodyText1!
//                   //               .copyWith(color: Colors.white),
//                   //           enabledBorder: const UnderlineInputBorder(
//                   //             borderSide: BorderSide(color: Colors.white),
//                   //           ),
//                   //           focusedBorder: const UnderlineInputBorder(
//                   //               borderSide: BorderSide(color: Colors.white))),
//                   //     ),
//                   //     TextField(
//                   //       // onChanged: (_) => _checkText(),
//                   //       // controller: _passwordController,
//                   //       obscureText: true,
//                   //       style:
//                   //           textTheme.bodyText1!.copyWith(color: Colors.white),
//                   //       decoration: InputDecoration(
//                   //           labelText: 'Password',
//                   //           labelStyle: textTheme.bodyText1!
//                   //               .copyWith(color: Colors.white),
//                   //           enabledBorder: const UnderlineInputBorder(
//                   //             borderSide: BorderSide(color: Colors.white),
//                   //           ),
//                   //           focusedBorder: const UnderlineInputBorder(
//                   //               borderSide: BorderSide(color: Colors.white))),
//                   //     ),
//                   //   ],
//                   // ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/KKFCir_1.png',
                      alignment: Alignment.topRight,
                      scale: 1.5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextField(
                          onChanged: (_) => _checkText(),
                          controller: _emailController,
                          style: textTheme.bodyText1!
                              .copyWith(color: Colors.white),
                          decoration: InputDecoration(
                              labelText: 'Email Address',
                              labelStyle: textTheme.bodyText1!
                                  .copyWith(color: Colors.white),
                              enabledBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white))),
                        ),
                        TextField(
                          onChanged: (_) => _checkText(),
                          controller: _passwordController,
                          obscureText: true,
                          style: textTheme.bodyText1!
                              .copyWith(color: Colors.white),
                          decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle: textTheme.bodyText1!
                                  .copyWith(color: Colors.white),
                              enabledBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white))),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              // gradient: gradientsPrimaryColor,
                              borderRadius: BorderRadius.circular(8)),
                          width: MediaQuery.of(context).size.width,
                          child: Container(
                            decoration: BoxDecoration(
                                color: _isBtnEnable
                                    ? Colors.transparent
                                    : Colors.black.withOpacity(0.6)),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.transparent,
                                  shadowColor: Colors.transparent),
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text(
                                  'LOGIN',
                                  style: textTheme.button!
                                      .copyWith(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'SIGN UP',
                              style: textTheme.bodyText2!
                                  .copyWith(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )));
  }
}
