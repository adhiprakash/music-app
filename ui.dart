class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Music App"),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              // Navigate to profile
            },
          )
        ],
      ),
      body: MusicList(),
    );
  }
}

class MusicList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: songs.length,  // Replace with actual song list length
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(songs[index].title),  // Display song title
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MusicPlayerScreen(song: songs[index]),
              ),
            );
          },
        );
      },
    );
  }
}

class MusicPlayerScreen extends StatefulWidget {
  final SongInfo song;

  MusicPlayerScreen({required this.song});

  @override
  _MusicPlayerScreenState createState() => _MusicPlayerScreenState();
}

class _MusicPlayerScreenState extends State<MusicPlayerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.song.title)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(Icons.play_arrow),
            onPressed: () => playSong(widget.song.uri),
          ),
          IconButton(
            icon: Icon(Icons.pause),
            onPressed: pauseSong,
          ),
        ],
      ),
    );
  }
}
