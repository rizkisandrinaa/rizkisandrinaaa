import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WidgetDemo(),
    );
  }
}
class WidgetDemo extends StatelessWidget {
  const WidgetDemo({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Galeri Foto'),
      ),
      body: const Column(
        children: [
          BottomImage(),
          // ElevatedButton
          // Row
          SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Jalan di Barcelona',
                style: TextStyle(fontSize: 24),),
            ],
          ),
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),

          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.place,
                color: Colors.red,
              ),
              Text('Lokasi Barcelona, Spanyol'),
            ],
          ),
          // Image
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.calendar_month,
                color: Colors.blue,
              ),
              Text('Publikasi: 13 Agustus 2013'),
            ],
          ),
          TopContainer(),
        ],
      ),
    );
  }
}
class BottomImage extends StatelessWidget {
  const BottomImage({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Image.network('https://picsum.photos/id/88/300/200',
        width: double.infinity,
        height: 500,
        fit: BoxFit.cover,
      ),
    );
  }
}
class TopContainer extends StatelessWidget {
  const TopContainer({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      color: Colors.white,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            Text(
          'Deskripsi:',
          style: TextStyle(
            fontSize: 24,
            color: Colors.black, // Atur warna sesuai keinginan
          ),
          textAlign: TextAlign.start,
        ),

        SizedBox(height: 8), // Spasi antara deskripsi dan teks utama
        Text(
          'Sebuah persimpangan jalan di Barcelona, Spanyol. Foto ini menampilkan berbagai kendaraan yang bergerak dalam arah yang berbeda, menciptakan pemandangan yang sibuk dan energik',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        ],
      ),
    ),
    );
  }
}