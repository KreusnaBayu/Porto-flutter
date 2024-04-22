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
        title: Text('Bookmark',style: TextStyle(fontWeight: FontWeight.bold),),
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
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  child: Text(resolution, style: TextStyle(fontSize: 16)),
                );
              }).toList(),
              isSelected: List.generate(_resolutions.length, (index) => index == _selectedResolutionIndex),
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
                  image: AssetImage('assets/gambar.jpg'), // Ganti dengan path gambar sesuai kebutuhan
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  'Ini adalah deskripsi singkat tentang video yang ditandai sebagai bookmark. Deskripsi ini memberikan informasi tambahan kepada pengguna tentang konten video yang ditonton.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Tambahkan logika untuk menonton video disini
              },
              child: Text('Tonton Video',),
            ),
          ],
        ),
      ),
    );
  }
}
