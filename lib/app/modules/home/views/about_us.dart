
import 'dart:math';

import 'package:code_symmetry/app/modules/home/src/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({super.key});

  @override
 AboutUsPageState createState() {
    return AboutUsPageState();
  }
}

class AboutUsPageState extends State<AboutUsPage> {

  List<Map<String, dynamic>> contentList = [
  {
    'title': 'Innovation',
    'value': 'We embrace creativity and innovation to solve complex challenges and deliver exceptional results.'
  },
  {
    'title': 'Excellence',
    'value': 'We are driven by a relentless pursuit of excellence, setting high standards for ourselves and our work.'
  },
  {
    'title': 'Collaboration',
    'value': 'Collaboration is at the heart of our approach. We work closely with clients to understand their unique needs and goals.'
  },
  {
    'title': 'Integrity',
    'value': 'We conduct business with the utmost integrity, transparency, and honesty.'
  },
  {
    'title': 'Client-Centric',
    'value': 'Your success is our success. We are committed to delivering value and exceeding expectations.'
  }
];


List<Map<String, dynamic>> whyChoseList = [
  {
    'title': 'Expertise',
    'value': 'Our team comprises seasoned experts who excel in various domains of software development. We bring a wealth of experience to every project.'
  },
  {
    'title': 'Cross-Platform Prowess',
    'value': 'We specialize in Flutter development, allowing us to create cross-platform solutions that save time and resources while maintaining quality.'
  },
  {
    'title': 'User-Centric Design',
    'value': 'Our user-centric approach ensures that every product we build is not just functional but also delightful to use.'
  },
  {
    'title': 'Scalability',
    'value': "Whether you're a startup with a bold vision or an established enterprise, our solutions are designed to grow with you."
  },
  {
    'title': 'Innovation',
    'value': 'We thrive on challenges and love exploring new technologies to stay ahead of the curve.'
  }
];
  

  @override
  Widget build(BuildContext context) {
    return Card(

      color: context.theme.colorScheme.shadow,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      margin: EdgeInsets.zero,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: context.width * 0.1, vertical: 150),
        child: Stack(
          children: [

                 Transform(
                                    transform: Matrix4.rotationZ(pi / 8)
                                      ..translate(-180.0, 120.0),
                                    child: Container(
                                      height: 400.0,
                                      width: context.width * 0.3,
                                      decoration: BoxDecoration(
                                        color: context.theme.colorScheme.secondaryContainer,
                                        borderRadius:
                                            BorderRadius.circular(300.0),
                                      ),
                                    ),
                                  ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               
                 
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
                      child:      Column(

                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                                Text(
                                             "ABOUT US",
                                             style: GoogleFonts.oswald(


                                               textStyle: context.textTheme.displayMedium
                                                 ?.copyWith(
                                                     color: context
                                                         .theme.colorScheme.primary)
                                             ),
                                           ),

                                           SizedBox(height: 16,),
                          Text(
                                                   "Welcome to MITSET – Your Digital Innovation Partner At MITSET, we believe in the transformative power of technology. Our journey began with a passion for pushing the boundaries of what's possible in the world of software development. Today, we stand as a dynamic force at the intersection of innovation and excellence, delivering cutting-edge solutions that empower businesses and individuals."
                                                      ,
                          
                                                     
                                                   style: GoogleFonts.lato(
                                     
                                                    textStyle: context.textTheme.bodyLarge
                                                       ?.copyWith(
                          
                                                       
                                                           color: context
                                                               .theme.colorScheme.secondary), 
                                                   ),
                                                   textAlign:
                                                  TextAlign.start,
                                                 ),


                                                 SizedBox(height: 32,)

                                      

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
                                  'OUR STORY ',
                                  style: GoogleFonts.lato(
                                    textStyle:context.textTheme.bodyMedium?.copyWith( color:context.theme.colorScheme.primary)
                                
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 4.0),
                                child: Text(
                                  "Founded by a team of visionary technologists, MITSET emerged with a singular mission: to harness the full potential of emerging technologies and create software solutions that inspire, innovate, and elevate. Since our inception, we've remained steadfast in our commitment to turning ideas into reality. ",
                                     style: GoogleFonts.lato(

                                
                                  ),
                                ),
                              ),

SizedBox(height: 16,),

     Padding(
                                padding: const EdgeInsets.symmetric(vertical: 4.0),
                                child: Text(
                                  'Join Us on This Journey  ',
                                  style: GoogleFonts.lato(
                                    textStyle:context.textTheme.bodyMedium?.copyWith( color:context.theme.colorScheme.primary)
                                
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 4.0),
                                child: Text(
                                  "At MITSET, we're not just a development company; we're your partners in innovation. Join us on this exciting journey of pushing boundaries, breaking barriers, and transforming ideas into exceptional software. Let's innovate together. Reach out to us today and discover what's possible with MITSET. . ",
                                     style: GoogleFonts.lato(

                                
                                  ),
                                ),
                              ),
                            //

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
                                  'OUR MISSION',
                                  style: GoogleFonts.lato(
                                    textStyle:context.textTheme.bodyMedium?.copyWith( color:context.theme.colorScheme.primary)
                                
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 4.0),
                                child: Text(
                                "Our mission is to be at the forefront of the digital revolution, shaping the future with innovative software solutions. We're dedicated to helping our clients achieve their goals and stay ahead in an ever-evolving tech landscape. "
                                    , style: GoogleFonts.lato(
                                
                                  ),
                                ),
                              ),
                         SizedBox(height: 16,),
                          Column(children: this.whyChoseList.map((e) => Padding(
                                padding: const EdgeInsets.symmetric(vertical: 4.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                    CircleAvatar(radius: 4,),
                                    SizedBox(width: 4,),

                                        Text(
                                          e["title"],
                                             style: GoogleFonts.lato(

                                              textStyle: context.textTheme.bodySmall?.copyWith(color: context.theme.colorScheme.tertiary)
                                        
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 5,),

                                     Text(
                                      e["value"],
                                         style: GoogleFonts.lato(
                                                                     
                                      ),
                                                                     ),
                                  ],
                                ),
                              ), ).toList(),)



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
                                  'OUR VALUE',
                                  style: GoogleFonts.lato(
                                    textStyle:context.textTheme.bodyMedium?.copyWith( color:context.theme.colorScheme.primary)
                                
                                  ),
                                ),
                              ),
                          Column(children: this.contentList.map((e) => Padding(
                                padding: const EdgeInsets.symmetric(vertical: 4.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                    CircleAvatar(radius: 4,),
                                    SizedBox(width: 4,),

                                        Text(
                                          e["title"],
                                             style: GoogleFonts.lato(

                                              textStyle: context.textTheme.bodySmall?.copyWith(color: context.theme.colorScheme.tertiary)
                                        
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 5,),

                                     Text(
                                      e["value"],
                                         style: GoogleFonts.lato(
                                                                     
                                      ),
                                                                     ),
                                  ],
                                ),
                              ), ).toList(),)
                             
,



                            ],
                          ),
                        ),
                      ),
                    ),
                  
                 
                 
                 
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
