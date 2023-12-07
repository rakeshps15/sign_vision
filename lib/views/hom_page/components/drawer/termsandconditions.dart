import 'package:flutter/material.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.deepPurpleAccent,
          title: const Text('Terms and Conditions'),
        ),
        body: const Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'PLEASE READ THIS DOCUMENT CAREFULLY',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text('''We grant you a limited, non-exclusive license to access and use our platform for your own personal and commercial purposes. This license is only for your use and may not be assigned or sublicensed to anyone else, without the platform’s express written consent. Except as expressly permitted by the platform in writing, you will not try to reproduce the platform (legally that’s known as engaging in activity that would reproduce, redistribute, sell, create derivative works from, decompile, reverse engineer, or disassemble the Platform). You also agree that in exchange for this license You will not engage in any activity that would interfere with or damage or harm the Platform. All rights not expressly granted by the platform are reserved.
               '''),
                  SizedBox(height: 16),
                  Text(
                    'LICENCE TO TUTORS & STUDENTS',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text('''This document sets out the terms for use of the platform.It governs both our Course & Content creators (“Tutors”) and our end-users (“Students”)., When we refer to “You”, we mean both our Tutors and Students or just our Tutors or our Students (don’t worry, we’ll make it clear who we’re talking to, but when in  doubt, we’re talking to you). We are committed transparency, which includes providing a Terms of Use thatis understandable and written in plain language. Because  this document represents our agreement with you about your use of our platform ,please take the time to read this document.
               '''),

                  SizedBox(height: 16),

                  Text(
                    "Error and Corrections",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text('''1.The platform does not guarantee that the Platform or any services offered through the Platform will be error-free or otherwise reliable, nor does the platform guarantee that defects will be corrected or that any offerings through the Platform will always be accessible. The platform may make improvements and/or changes to the Platform and their features and functionality at any time, and will use commercially reasonable efforts to avoid disrupting peak hours, though some downtime may occur. Errors in Content are the responsibility of the Creator who owns the Content.
2.We reserve the right to amend the Platform, and any service or material we provide on the Platform, in our sole discretion without notice. We will not be liable if for any reason all or any part of the Platform is unavailable at any time or for any period. From time to time, we may restrict access to some or all of the Platform to Tutors and Students.
               '''),


                ],
              ),
            ),

          ),
        )
    );
  }
}