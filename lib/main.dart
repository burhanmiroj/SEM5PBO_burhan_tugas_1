import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

// Define a Song class to hold song details
class Song {
  final String songTitle;
  final String band;

  Song({required this.songTitle, required this.band});
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Song> songs = [
      Song(songTitle: 'Gunslinger', band: 'Avenged Sevenfold'),
      Song(songTitle: 'So Far Away', band: 'Avenged Sevenfold'),
      Song(songTitle: 'UP & UP', band: 'Coldplay'),
      Song(songTitle: 'Story of My Life', band: 'One Direction'),
      Song(songTitle: 'Seize The Day', band: 'Avenged Sevenfold'),
      Song(songTitle: 'Best Song Ever', band: 'One Direction'),
      Song(songTitle: 'One Thing', band: 'One Direction'),
      Song(songTitle: 'Paradise', band: 'Coldplay'),
      Song(songTitle: 'Danger Line', band: 'Avenged Sevenfold'),
      Song(songTitle: 'Buried Alive', band: 'Avenged Sevenfold'),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0), // Add horizontal padding
          child: Row(
            children: const [
              Text(
                'Daftar musik favorit Lintang',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white // Change this value to adjust the text size
                ),
              ),
              Spacer(),           // Spacer to create flexible space between the text and the logo
              FlutterLogo(size: 30), // Flutter logo
            ],
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: songs.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(songs[index].songTitle), // Display the song title
              subtitle: Text(
                songs[index].band, // Display the band name
                style: const TextStyle(fontSize: 12), // Adjust text size
              ),
            ),
          );
        },
      ),
    );
  }
}
