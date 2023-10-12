// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';

// class ContactSection extends StatelessWidget {
//   const ContactSection({super.key});

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

// Create a Form widget.
import 'package:code_symmetry/app/modules/home/src/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ContactSection extends StatefulWidget {
  const ContactSection({super.key});

  @override
  ContactSectionState createState() {
    return ContactSectionState();
  }
}

class ContactSectionState extends State<ContactSection> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Card(
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        margin: EdgeInsets.zero,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: context.width * 0.2, vertical: 100),
          child: ResponsiveRowColumn(
            layout: ResponsiveWidget.isLargeScreen(context)
                ? ResponsiveRowColumnType.ROW
                : ResponsiveRowColumnType.COLUMN,
            rowCrossAxisAlignment: CrossAxisAlignment.start,
            rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
            rowSpacing: 40,
            children: [
              ResponsiveRowColumnItem(
                rowFlex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), filled: false),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(),
                          filled: false),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.phone),
                          border: OutlineInputBorder(),
                          filled: false),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), filled: false),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      maxLines: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Processing Data')),
                            );
                          }
                        },
                        child: const Text('Submit'),
                      ),
                    ),
                  ],
                ),
              ),
              ResponsiveRowColumnItem(
                rowFlex: 1,
                rowFit: FlexFit.tight,
                
                child: Container(
                  color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Text(
                          'Free Tools',
                          style: GoogleFonts.nunito(
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Text(
                          'Community',
                          style: GoogleFonts.nunito(
                            color: Colors.black54,
                            fontWeight: FontWeight.w500,
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Text(
                          'Project Management',
                          style: GoogleFonts.nunito(
                            color: Colors.black54,
                            fontWeight: FontWeight.w500,
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Text(
                          'Statistics',
                          style: GoogleFonts.nunito(
                            color: Colors.black54,
                            fontWeight: FontWeight.w500,
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
