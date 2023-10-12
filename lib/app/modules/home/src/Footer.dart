// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';

// class Footer extends StatelessWidget {
//   const Footer({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 300.0,
//       color: context.theme.colorScheme.secondary,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 4.0),
//                     child: Text(
//                       'Resources',
//                       style: GoogleFonts.nunito(
//                         color: Colors.black,
//                         fontWeight: FontWeight.w800,
//                         fontSize: 14.0,
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 4.0),
//                     child: Text(
//                       'Home',
//                       style: GoogleFonts.nunito(
//                         color: Colors.black54,
//                         fontWeight: FontWeight.w500,
//                         fontSize: 12.0,
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 4.0),
//                     child: Text(
//                       'Find a Team',
//                       style: GoogleFonts.nunito(
//                         color: Colors.black54,
//                         fontWeight: FontWeight.w500,
//                         fontSize: 12.0,
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 4.0),
//                     child: Text(
//                       'Publish a Project',
//                       style: GoogleFonts.nunito(
//                         color: Colors.black54,
//                         fontWeight: FontWeight.w500,
//                         fontSize: 12.0,
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 4.0),
//                     child: Text(
//                       'About',
//                       style: GoogleFonts.nunito(
//                         color: Colors.black54,
//                         fontWeight: FontWeight.w500,
//                         fontSize: 12.0,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 4.0),
//                     child: Text(
//                       'About',
//                       style: GoogleFonts.nunito(
//                         color: Colors.black,
//                         fontWeight: FontWeight.w800,
//                         fontSize: 14.0,
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 4.0),
//                     child: Text(
//                       'General Info',
//                       style: GoogleFonts.nunito(
//                         color: Colors.black54,
//                         fontWeight: FontWeight.w500,
//                         fontSize: 12.0,
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 4.0),
//                     child: Text(
//                       'Tariffs',
//                       style: GoogleFonts.nunito(
//                         color: Colors.black54,
//                         fontWeight: FontWeight.w500,
//                         fontSize: 12.0,
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 4.0),
//                     child: Text(
//                       'FAQ\'s',
//                       style: GoogleFonts.nunito(
//                         color: Colors.black54,
//                         fontWeight: FontWeight.w500,
//                         fontSize: 12.0,
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 4.0),
//                     child: Text(
//                       'Contacts',
//                       style: GoogleFonts.nunito(
//                         color: Colors.black54,
//                         fontWeight: FontWeight.w500,
//                         fontSize: 12.0,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),

//               //same thing like first is repeated....

//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 4.0),
//                     child: Text(
//                       'Free Tools',
//                       style: GoogleFonts.nunito(
//                         color: Colors.black,
//                         fontWeight: FontWeight.w800,
//                         fontSize: 14.0,
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 4.0),
//                     child: Text(
//                       'Community',
//                       style: GoogleFonts.nunito(
//                         color: Colors.black54,
//                         fontWeight: FontWeight.w500,
//                         fontSize: 12.0,
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 4.0),
//                     child: Text(
//                       'Project Management',
//                       style: GoogleFonts.nunito(
//                         color: Colors.black54,
//                         fontWeight: FontWeight.w500,
//                         fontSize: 12.0,
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 4.0),
//                     child: Text(
//                       'Statistics',
//                       style: GoogleFonts.nunito(
//                         color: Colors.black54,
//                         fontWeight: FontWeight.w500,
//                         fontSize: 12.0,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 4.0),
//                     child: Text(
//                       'Legal',
//                       style: GoogleFonts.nunito(
//                         color: Colors.black,
//                         fontWeight: FontWeight.w800,
//                         fontSize: 14.0,
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 4.0),
//                     child: Text(
//                       'Privacy Policy',
//                       style: GoogleFonts.nunito(
//                         color: Colors.black54,
//                         fontWeight: FontWeight.w500,
//                         fontSize: 12.0,
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 4.0),
//                     child: Text(
//                       'Terms of Use',
//                       style: GoogleFonts.nunito(
//                         color: Colors.black54,
//                         fontWeight: FontWeight.w500,
//                         fontSize: 12.0,
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 4.0),
//                     child: Text(
//                       'Payments',
//                       style: GoogleFonts.nunito(
//                         color: Colors.black54,
//                         fontWeight: FontWeight.w500,
//                         fontSize: 12.0,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//           const SizedBox(
//             height: 40.0,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Icon(
//                 Icons.copyright_rounded,
//                 color: Colors.black54,
//                 size: 15.0,
//               ),
//               Text(
//                 'Copyright © MITSET [2023-2024] All Rights Reserved. ',
//                 style: GoogleFonts.nunito(
//                   color: Colors.black54,
//                   fontWeight: FontWeight.w500,
//                   fontSize: 12.0,
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.theme.colorScheme.background,

// padding: EdgeInsets.symmetric(vertical: 32),
      margin: EdgeInsets.zero,

      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.copyright_rounded,
                  color: Colors.black54,
                  size: 15.0,
                ),
                Text(
                  'Copyright © MITSET [2023-2024] All Rights Reserved. ',
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w500,
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
