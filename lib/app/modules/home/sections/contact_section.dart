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
              horizontal: context.width * 0.1, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                  Align(

              alignment: Alignment.center,
               child: Column(

                 children: [
                         Text(
                                      "CONTACT US",
                                      style: GoogleFonts.oswald(


                                        textStyle: context.textTheme.displayMedium
                                          ?.copyWith(
                                              color: context
                                                  .theme.colorScheme.primary)
                                      ),
                                    ),

                                    SizedBox(height: 16,),
                   Padding(
                     padding:  EdgeInsets.symmetric(horizontal:context.width*0.2),
                     child: Text(
                                              "We'd love to hear from you! Whether you have a project in mind, a question about our services, or just want to say hello, don't hesitate to reach out. Our team is ready to assist you. "
                                                 ,
                   
                                                
                                              style: GoogleFonts.lato(
                                
                                               textStyle: context.textTheme.titleLarge
                                                  ?.copyWith(
                   
                                                  
                                                      color: context
                                                          .theme.colorScheme.secondary), 
                                              ),
                                              textAlign:
                                             TextAlign.center,
                                            ),
                   ),


                                          SizedBox(height: 32,)

                               

                 ],
               ),
             ),

               
              ResponsiveRowColumn(
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
                              prefixIcon: Icon(Icons.email),

                              labelText: "email",

                              border: OutlineInputBorder(), filled: false),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter email';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              labelText: "subject",

                              prefixIcon: Icon(Icons.person),
                              border: OutlineInputBorder(),
                              filled: false),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter subject';
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
                                  const SnackBar(content: Text('Sent Successfully')),
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
                    
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text(
                                'Get in Touch ',
                                style: GoogleFonts.lato(
                                  textStyle:context.textTheme.bodyMedium?.copyWith( color:context.theme.colorScheme.primary)
                              
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text(
                                "Have a specific inquiry or project in mind? Use the contact form below, and we'll get back to you promptly.[Contact Form] Note: Include fields for Name, Email, Subject, and Message, as well as a 'Submit' button. ",
                                   style: GoogleFonts.lato(

                              
                                ),
                              ),
                            ),
SizedBox(height: 16,),
    Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text(
                                "Support",
                                style: GoogleFonts.lato(
                                  textStyle:context.textTheme.bodyMedium?.copyWith( color:context.theme.colorScheme.primary)
                              
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text(
                                "For technical support or assistance with our services, please contact our support team at [Support Email Address].  ",
                                   style: GoogleFonts.lato(

                              
                                ),
                              ),
                            ),

                          //

SizedBox(height: 16,),

                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text(
                                "Feedback",
                                style: GoogleFonts.lato(
                                  textStyle:context.textTheme.bodyMedium?.copyWith( color:context.theme.colorScheme.primary)
                              
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text(
                                "We value your feedback. If you have any suggestions or comments about our website or services, please share them with us at [Feedback Email Address]. ",
                                   style: GoogleFonts.lato(

                              
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                   
                    ResponsiveRowColumnItem(
                    rowFlex: 1,
                  
                    rowFit: FlexFit.tight,
                    
                    child: Container(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                         Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text(
                                'Contact information',
                                style: GoogleFonts.lato(
                                  textStyle:context.textTheme.bodyMedium?.copyWith( color:context.theme.colorScheme.primary)
                              
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text(
                                '(H#CB-2288, Kashmir Lane, Rawalpindi) ',
                                   style: GoogleFonts.lato(
                              
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text(
                                '+ 923315373679,',
                                style: GoogleFonts.lato(
                              
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text(
                                ' services@mitset.tech',
                               style: GoogleFonts.lato(
                              
                                ),
                              ),
                            ),

SizedBox(height: 16,),

                                 Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text(
                                'Partner with Us ',
                                style: GoogleFonts.lato(
                                  textStyle:context.textTheme.bodyMedium?.copyWith( color:context.theme.colorScheme.primary)
                              
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text(
                                "If you're interested in exploring partnership opportunities with MITSET, please email our partnerships team at [Partnerships Email Address]. ",
                                   style: GoogleFonts.lato(
                              
                                ),
                              ),
                            ),
                         //
SizedBox(height: 16,),

                               Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text(
                                'Terms of Service ',
                                style: GoogleFonts.lato(
                                  textStyle:context.textTheme.bodyMedium?.copyWith( color:context.theme.colorScheme.primary)
                              
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text(
                                "By using our website and services, you agree to our [Terms of Service]. ",
                                   style: GoogleFonts.lato(
                              
                                ),
                              ),
                            ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                   
                    ResponsiveRowColumnItem(
                    rowFlex: 1,
                    rowFit: FlexFit.tight,
                    
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text(
                                'Buisness Hours',
                                style: GoogleFonts.lato(
                                  textStyle:context.textTheme.bodyMedium?.copyWith( color:context.theme.colorScheme.primary)
                              
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text(
                                "Our team is available during the following hours:  ⚫Monday - Friday: 9:00 AM - 6:00 PM (Your Time Zone)  ⚫Saturday - Sunday: Closed ",
                                   style: GoogleFonts.lato(
                              
                                ),
                              ),
                            ),


SizedBox(height: 16,),

             Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text(
                                'Career Inquiries ',
                                style: GoogleFonts.lato(
                                  textStyle:context.textTheme.bodyMedium?.copyWith( color:context.theme.colorScheme.primary)
                              
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text(
                                "Are you passionate about software development and looking for career opportunities at MITSET? Visit our [Careers Page] to view open positions and submit your application. ",
                                   style: GoogleFonts.lato(
                              
                                ),
                              ),
                            ),


                            //

SizedBox(height: 16,),

                                 Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text(
                                'Privacy Policy  ',
                                style: GoogleFonts.lato(
                                  textStyle:context.textTheme.bodyMedium?.copyWith( color:context.theme.colorScheme.primary)
                              
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text(
                                "We take your privacy seriously. To learn more about how we handle your data, please review our [Privacy Policy]. ",
                                   style: GoogleFonts.lato(
                              
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                
               
               
               
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
