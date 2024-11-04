import 'package:flutter_audio_query/flutter_audio_query.dart';
import 'package:permission_handler/permission_handler.dart';

Future<void> requestStoragePermission() async {
  if (await Permission.storage.request().isGranted) {
    // Access music files
    final FlutterAudioQuery audioQuery = FlutterAudioQuery();
    List<SongInfo> songs = await audioQuery.getSongs();
    // Handle retrieved song list
  }
}
