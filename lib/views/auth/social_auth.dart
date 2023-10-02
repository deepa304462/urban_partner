// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:urban_partner/presentation/sign_up_page/sign_up.dart';
// import 'package:urban_partner/shared/ui_constant.dart';
//
// import '../../shared/ui_navigation.dart';
//
// class SocialAuthView extends StatefulWidget {
//   const SocialAuthView({super.key});
//
//   @override
//   State<SocialAuthView> createState() => _SocialAuthViewState();
// }
//
// class _SocialAuthViewState extends State<SocialAuthView> {
//   TextEditingController phoneCtrl = TextEditingController();
//   bool isSElectedBtn_1 = false;
//   bool isSElectedBtn_2 = false;
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.transparent,
//           foregroundColor: MyConstant.black,
//           automaticallyImplyLeading: true,
//           elevation: 0,
//           leading: IconButton(
//             icon: SvgPicture.asset(
//               "assets/svg/arrow_back.svg",
//             ),
//             onPressed: () {},
//           ),
//           actions: [
//             InkWell(
//               onTap: () {
//                 NavByMe.push(context,  SignUpScreen());
//               },
//               child: const Padding(
//                 padding: EdgeInsets.all(MyConstant.defaultPadding),
//                 child: Text(
//                   "Quick Booking",
//                   style: TextStyle(
//                     color: MyConstant.buttonDarkColor,
//                     fontWeight: FontWeight.w800,
//                     fontStyle: FontStyle.italic,
//                     fontSize: 16,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//         // bottomNavigationBar: _bottomNavBar(context),
//         body: Padding(
//           padding:
//           const EdgeInsets.symmetric(horizontal: MyConstant.defaultPadding),
//           child: SingleChildScrollView(
//             child: Container(
//               margin: const EdgeInsets.symmetric(horizontal: 5),
//               child: Column(
//                 children: [
//                   Align(
//                     child: Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(32.0),
//                         image: const DecorationImage(
//                           image: AssetImage(
//                             "assets/logo_base.png",
//                           ),
//                         ),
//                         color: Colors.black,
//                       ),
//                       height: 185,
//                       width: 235,
//                     ),
//                   ),
//                   const SizedBox(
//                     height: MyConstant.defaultPadding * 2,
//                   ),
//                   Text(
//                     "Let's you in",
//                     textScaleFactor: 2.0,
//                     style: TextStyle(
//                       fontFamily: MyConstant.textStyleMulish,
//                       color: MyConstant.blue179,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 20,
//                     ),
//                   ),
//                   const SizedBox(
//                     height: MyConstant.defaultPadding * 2,
//                   ),
//                   // **********************************************************
//                   // UiCountryCodeRow(ctrl: phoneCtrl),
//                   const SizedBox(
//                     height: MyConstant.defaultPadding * 2.8,
//                   ),
//                   MaterialButton(
//                     minWidth: double.infinity,
//                     height: 60,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(30),
//                     ),
//                     color: MyConstant.blue179,
//                     onPressed: () {
//                       // NavByMe.push(context, const OTPView());
//                     },
//                     child: Text(
//                       "Log IN/Sign UP",
//                       style: TextStyle(
//                         fontFamily: MyConstant.textStyleMulish,
//                         fontSize: 20,
//                         color: MyConstant.white255,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 30),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Checkbox(
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(3),
//                         ),
//                         activeColor: MyConstant.blue179,
//                         value: isSElectedBtn_1,
//                         onChanged: (value) {
//                           isSElectedBtn_1 = value!;
//                           setState(() {});
//                         },
//                       ),
//                       RichText(
//                         text: TextSpan(
//                           text: "I agree with",
//                           style: TextStyle(
//                             fontFamily: MyConstant.textStylePoppins,
//                             fontSize: 11,
//                             color: MyConstant.black,
//                             fontWeight: FontWeight.w400,
//                           ),
//                           children: [
//                             TextSpan(
//                               text: "\tterms & condition",
//                               style: TextStyle(
//                                 fontFamily: MyConstant.textStylePoppins,
//                                 fontSize: 12,
//                                 color: MyConstant.blue179,
//                                 fontWeight: FontWeight.w400,
//                               ),
//                             )
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                   const SizedBox(height: 40),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       SizedBox(
//                         height: 20,
//                         width: 20,
//                         child: Checkbox(
//                           activeColor: MyConstant.blue179,
//                           value: isSElectedBtn_2,
//                           onChanged: (value) {
//                             setState(() {
//                               isSElectedBtn_2 = value!;
//                             });
//                           },
//                         ),
//                       ),
//                       const SizedBox(width: 10),
//                       Container(
//                         width: 223,
//                         alignment: Alignment.centerLeft,
//                         child: Text(
//                           "Want to connect with us on whatsapp",
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             fontFamily: MyConstant.textStylePoppins,
//                             fontSize: 16,
//                             fontWeight: FontWeight.w400,
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//
//
//                   const SizedBox(height: 100),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   signUpView({BuildContext? context}) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text(
//           "Did not have an account?",
//           style: TextStyle(
//             fontFamily: MyConstant.textStyleMulish,
//             color: Colors.black,
//             fontWeight: FontWeight.w900,
//             fontSize: 16.91,
//           ),
//         ),
//         const SizedBox(
//           width: 4.0,
//         ),
//         GestureDetector(
//           onTap: () {
//             NavByMe.push(context!, SignUpScreen());
//           },
//           child: const Text(
//             '\tSignUp',
//             style: TextStyle(
//               color: MyConstant.blue179,
//               fontWeight: FontWeight.w700,
//               fontSize: 16.91,
//             ),
//           ),
//         )
//       ],
//     );
//   }
//
//   _authContainer(String imgSrc, String text) {
//     return Container(
//       height: 60,
//       width: double.infinity,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(MyConstant.defaultPadding),
//         border: Border.all(color: MyConstant.grey.withAlpha(40)),
//       ),
//       child: Row(
//         children: [
//           const SizedBox(width: MyConstant.defaultPadding),
//           SizedBox(
//             height: 50,
//             width: 50,
//             child: Image.asset(imgSrc),
//           ),
//           const SizedBox(width: MyConstant.defaultPadding),
//           Text(
//             text,
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               fontFamily: MyConstant.textStyleMulish,
//               fontSize: 16,
//               fontWeight: FontWeight.w900,
//               color: MyConstant.black29,
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
