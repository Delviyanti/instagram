import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Clone',
      debugShowCheckedModeBanner: false, // Tambahkan baris ini
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black, // Latar belakang utama hitam
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white, // Warna teks dan ikon di app bar
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white, // Ikon terpilih berwarna putih
          unselectedItemColor: Colors.white.withOpacity(0.7), // Ikon tidak terpilih
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instagram'),
        actions: [
          IconButton(
            icon: const Icon(Icons.message),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          _buildStoriesSection(),
          _buildPostCard(),      // Postingan pertama
          _buildPostCard2(),     // Postingan kedua
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library),
            label: 'Reels',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: 0,
        onTap: (index) {
          // Handle navigation
        },
      ),
    );
  }

  Widget _buildStoriesSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            5,
            (index) => Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Column(
                children: [
                  Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/suga.jpeg'), // Ganti dengan gambar lokal Anda
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'user$index',
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPostCard() {
    return Card(
      color: Colors.black, // Latar belakang kartu hitam
      margin: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/jimin.jpeg'), // Gambar profil
                ),
                const SizedBox(width: 8),
                const Text(
                  'username',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.more_vert, color: Colors.white),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          // Gambar postingan menggunakan AssetImage
          Image.asset(
            'assets/enhypen.jpeg', // Ganti dengan path gambar postingan lokal Anda
            height: 300,
            width: double.infinity, // Atur lebar mengisi card
            fit: BoxFit.cover, // Atur cara mengisi gambar agar memenuhi ukuran
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.favorite_border, color: Colors.white),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.chat_bubble_outline, color: Colors.white),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.send, color: Colors.white),
                  onPressed: () {},
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.bookmark_border, color: Colors.white),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'disukai oleh otong dan 1 lainnya',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  'deskripsi postingan anda ta selengkapnya komen',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPostCard2() { // Fungsi baru untuk postingan kedua
    return Card(
      color: Colors.black, // Latar belakang kartu hitam
      margin: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/h2h.jpeg'), // Gambar profil postingan 2
                ),
                const SizedBox(width: 8),
                const Text(
                  'username2',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.more_vert, color: Colors.white),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          // Gambar postingan 2 menggunakan AssetImage
          Image.asset(
            'assets/cermen.jpeg', // Path gambar postingan lokal 2
            height: 300,
            width: double.infinity, // Atur lebar mengisi card
            fit: BoxFit.cover, // Atur cara mengisi gambar agar memenuhi ukuran
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.favorite_border, color: Colors.white),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.chat_bubble_outline, color: Colors.white),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.send, color: Colors.white),
                  onPressed: () {},
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.bookmark_border, color: Colors.white),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'disukai oleh user1 dan 2 lainnya',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  'deskripsi postinga anda ta selengkapnya komen',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}