import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  final List<String> imageLinks = [
    'https://grc.edu.ph/wp-content/uploads/2022/11/20220526_141937-min-1024x576.jpg',
    'https://tse4.mm.bing.net/th/id/OIP.-YRSLMznMNoB2G2LGt0B9wHaFj?rs=1&pid=ImgDetMain&o=7&rm=3',
    'https://grc.edu.ph/wp-content/uploads/2023/09/batch23-1024x575.png',
    'https://tse2.mm.bing.net/th/id/OIP.5XbEWWOUsH92aooxHGAfHAHaEK?rs=1&pid=ImgDetMain&o=7&rm=3',
    'https://tse2.mm.bing.net/th/id/OIP.aimSEcHy5gG_fyQElVC28gHaKe?rs=1&pid=ImgDetMain&o=7&rm=3',
    'https://grc.edu.ph/wp-content/uploads/2023/06/355370494_276250315072378_5890359941983759320_n.jpg',
    'https://grc.edu.ph/wp-content/uploads/2023/02/LET-top-8_NEW_B-min-1024x768.jpg',
    'https://grc.edu.ph/wp-content/uploads/2023/03/grc-ccs-min-1.jpg',
    'https://grc.edu.ph/wp-content/uploads/2023/06/cosina-min-1-scaled.jpg',
    'https://tse3.mm.bing.net/th/id/OIP.NJirBja9HzykXooeLkKgagHaDt?rs=1&pid=ImgDetMain&o=7&rm=3',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MY GALLERY'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: 1.0,
          ),
          itemCount: imageLinks.length,
          itemBuilder: (context, index) {
            return _buildGalleryItem(index);
          },
        ),
      ),
    );
  }

  Widget _buildGalleryItem(int index) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.network(
              imageLinks[index],
              fit: BoxFit.cover,
            ),
            // Gradient overlay
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.3),
                  ],
                ),
              ),
            ),
            // Image number
            Positioned(
              bottom: 8,
              right: 8,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  '${index + 1}',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black87),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
