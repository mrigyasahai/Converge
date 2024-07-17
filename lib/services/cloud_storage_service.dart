// ignore_for_file: unused_import, constant_identifier_names, empty_constructor_bodies, unused_field

import 'dart:io';

//Packages
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:file_picker/file_picker.dart';

const String USER_COLLECTION = "Users";

class ClousStorageService {
  final FirebaseStorage _storage = FirebaseStorage.instance;
  ClousStorageService() {}
}
