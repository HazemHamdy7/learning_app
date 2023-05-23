import 'common/services/storage_services.dart';

class Global {
  static late StorageService storageService;

  static Future init() async {
    // WidgetsFlutterBinding.ensureInitialized();
    // await Firebase.initializeApp();
    storageService = await StorageService().init();
  }
}
