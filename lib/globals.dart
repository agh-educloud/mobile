library mobile.globals;

import 'package:mobile/services/chat/chat.dart';
import 'package:random_string/random_string.dart' as random;

String user = random.randomString(5);
String uuid = random.randomString(10);
String serverAddress = "192.168.1.28";

String mainClass = "EMPTY";
String subClass = "EMPTY";

final chatClient = Client();
var chatStreamInitialized = false;
