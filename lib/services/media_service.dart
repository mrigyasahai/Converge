// ignore_for_file: empty_constructor_bodies, no_leading_underscores_for_local_identifiers

import 'package:file_picker/file_picker.dart';

class MediaService {
  MediaService() {}

  Future<PlatformFile?> pickImageFromLibrary() async {
    FilePickerResult? _result =
        await FilePicker.platform.pickFiles(type: FileType.image);

    if (_result != null) {
      return _result.files[0];
    }
    return null;
  }
}
