import 'package:flutter/material.dart';

class ProjectPage extends StatelessWidget {
  final List projects = [
    Project(title: 'COA', description: 'The Bachelor of Science in Accountancy (BSA) is a four-year program which provides general accounting education to learners who wish to pursue a professional career as accountants, particularly as public accountants for the civil service.', icon: Icons.cloud, color: Colors.blue),
    Project(title: 'CBA', description: 'The Bachelor of Science in Business Administration Major in Marketing Management is a four-year program designed to produce graduates with values.', icon: Icons.check_box, color: Colors.green),
    Project(title: 'COE', description: 'GRC- College of Education offers Bachelor of Secondary Education (BSEd) and Bachelor of Elementary Education (BEEd). Each is a four-year program that prepares future educators in the pedagogical field.', icon: Icons.book, color: Colors.orange),
    Project(title: 'CCS', description: 'The BS Information Technology program includes the study of the utilization of both hardware and software technologies involving planning, installing, customizing, operating, managing and administering; and maintaining information technology infrastructure that provides computing solutions to address the needs of an organization.', icon: Icons.computer, color: Colors.black),
    Project(title: 'COES', description: 'The Bachelor of Science in Entrepreneurship is a four-year program that prepares its graduates with knowledge and skills necessary in establishing and running their own businesses.', icon: Icons.light, color: Colors.blue),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Projects'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: projects.length,
        itemBuilder: (context, index) {
          return _buildProjectCard(projects[index]);
        },
      ),
    );
  }

  Widget _buildProjectCard(Project project) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.0),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: [
              // Project icon
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: project.color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(project.icon, size: 30, color: project.color),
              ),
              SizedBox(width: 16),

              // Project details
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(project.title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87)),
                    SizedBox(height: 4),
                    Text(project.description, style: TextStyle(fontSize: 14, color: Colors.grey[600])),
                  ],
                ),
              ),

              // Arrow icon
              Icon(Icons.arrow_forward_ios, color: Colors.grey[400], size: 16),
            ],
          ),
        ),
      ),
    );
  }
}

// Project data model
class Project {
  final String title;
  final String description;
  final IconData icon;
  final Color color;

  Project({
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
  });
}