import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ABOUT GRC'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 20),

              // Profile picture
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.red, width: 5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: ClipOval(
                  child: Image.network(
                    'https://grc.edu.ph/wp-content/uploads/2020/08/ong.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 25),

              // Name and title
              Text('Vicente N. Ongtenco', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.red)),
              SizedBox(height: 8),
              Text('Chairman', style: TextStyle(fontSize: 18, color: Colors.red, fontWeight: FontWeight.w500)),
              SizedBox(height: 30),

              // About me card
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 3)),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('ABOUT US', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue)),
                    SizedBox(height: 20),
                    Text(
                      'On August 13, 2013, GRC added two tertiary courses; the Bachelor of Elementary Education Major in Special Education under GR.  No. 028 S. 2013 and Bachelor of Secondary Education Major in English, Major in Mathematics, and Major in School Physical Education under GR. No. 029 S. 2013, aiming to produce excellent educators. \n\nIn two years, another two courses were added. Under GR. No. 067 S. 2015, the Bachelor of Science in Entrepreneurship and under GR. No. 068 S. 2015 the Bachelor of Science in Business Administration Major in Marketing Management and Major in Human Resources Management on December 3, 2015. With the success of these courses, on July 11, 2017, GRC added another course, the Bachelor of Science in Accountancy under GR. No. 036 S. 2017, and then the next year another one made it on the courses offered at GRC; the Bachelor of Science in Information Technology under GR. No. 034 S. 2018 on May 4, 2018. With these successful courses and students produced by the institution, GRC was already recognized as an official college in the Philippines.',
                      style: TextStyle(fontSize: 16,  color: Colors.grey[700], height: 1.6, ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}