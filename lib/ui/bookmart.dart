import 'package:april20/ui/Responsif.dart';
import 'package:flutter/material.dart';

class Bookmark extends StatefulWidget {
  const Bookmark({Key? key}) : super(key: key);

  @override
  State<Bookmark> createState() => _BookmarkState();
}

class _BookmarkState extends State<Bookmark> {
  int _selectedResolutionIndex = 0;
  final List<String> _resolutions = ['144p', '360p', '720p', '1080p'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bookmark',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            ToggleButtons(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black,
              selectedColor: Colors.white,
              fillColor: Colors.black,
              selectedBorderColor: Colors.black,
              children: _resolutions.map((resolution) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10.0),
                  child: Text(resolution, style: TextStyle(fontSize: 16)),
                );
              }).toList(),
              isSelected: List.generate(_resolutions.length,
                  (index) => index == _selectedResolutionIndex),
              onPressed: (int index) {
                setState(() {
                  _selectedResolutionIndex = index;
                });
              },
            ),
            SizedBox(height: 20),
            Text(
              'Deskripsi video:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Container(
              height: 200, // Sesuaikan tinggi gambar sesuai kebutuhan
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(
                      'assets/gambar.jpg'), // Ganti dengan path gambar sesuai kebutuhan
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
               Navigator.pop(context); 
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailScreen()), 
                ); 
              },
              child: Text(
                'Tonton Video',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
