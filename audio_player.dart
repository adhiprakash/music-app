import 'package:audioplayers/audioplayers.dart';

AudioPlayer audioPlayer = AudioPlayer();

Future<void> playSong(String uri) async {
  await audioPlayer.play(uri, isLocal: true);
}

Future<void> pauseSong() async {
  await audioPlayer.pause();
}

Future<void> stopSong() async {
  await audioPlayer.stop();
}
