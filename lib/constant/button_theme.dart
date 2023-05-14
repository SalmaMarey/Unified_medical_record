// import 'package:flutter/material.dart';
// import 'package:graduation_project/constant/theme.dart';
//
// // i can enable dark mode in mob App
// class ChangeThemeButtonWidget extends StatelessWidget {
//   const ChangeThemeButtonWidget({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final themeProvider = Provider.of<ThemeProvider>(context);
//
//     return Switch.adaptive(
//       value: themeProvider.isDarkMode,
//       onChanged: (value) {
//         final provider = Provider.of<ThemeProvider>(context, listen: false);
//         provider.toggleTheme(value);
//       },
//     );
//   }
// }
