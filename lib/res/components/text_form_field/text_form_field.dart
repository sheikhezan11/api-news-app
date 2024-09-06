// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '../../../utils/utils.dart';
// import '../../../view_model/controller/login_view_model.dart';
//
// class CustomTextField extends StatelessWidget {
//   final TextEditingController controller;
//   final FocusNode focusNode;
//   final LoginViewModel loginVM;
//   final String snackBarMessage;
//   final String snackBarTitle;
//   final String hintText;
//
//   const CustomTextField({
//     required this.controller,
//     required this.focusNode,
//     required this.loginVM,
//     required this.snackBarMessage,
//     required this.snackBarTitle,
//     required this.hintText,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       controller: controller,
//       focusNode: focusNode,
//       validator: (value) {
//         if (value!.isEmpty) {
//           Utils.snackBar(snackBarMessage, snackBarTitle);
//         }
//       },
//       onFieldSubmitted: (value) {
//         Utils.fieldFocusChange(context, focusNode, loginVM.passwordFocusNode.value);
//       },
//       decoration: InputDecoration(
//         border: OutlineInputBorder(),
//         hintText: hintText,
//       ),
//     );
//   }
// }
