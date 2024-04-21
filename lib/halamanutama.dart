import 'package:april20/Componenent/customdrawe.dart';
import 'package:april20/Componenent/customnavigation.dart';
import 'package:flutter/material.dart';

class HalamanUtama extends StatefulWidget {
  const HalamanUtama({Key? key}) : super(key: key);

  @override
  State<HalamanUtama> createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: const Text("Gallery"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search_off), 
            onPressed: () {
              
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            CustomDrawerHeader(),
            ListTile(
              leading: Icon(Icons.home),
              title: const Text('Beranda'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.history_outlined),
              title: const Text("Histori"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.playlist_add_check_circle),
              title: const Text('Playlist'),
              onTap: () {},
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: ListView.builder(
        itemCount: 10, 
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              contentPadding: EdgeInsets.all(16),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 400,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/gambar.jpg'), 
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 16), 
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Gambar $index', 
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Deskripsi gambar $index', 
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
              onTap: () {
                
              },
            ),
          );
        },
      ),
    );
  }
}
