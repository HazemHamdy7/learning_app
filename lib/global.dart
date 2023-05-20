import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'common/services/storage_services.dart';

class Global {
  static late StorageService storageService;

  @override
  static Future init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    storageService = await StorageService().init();
  }
}
