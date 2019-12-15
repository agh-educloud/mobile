library mobile.globals;

import 'package:mobile/screens/chat/widget/message.dart';
import 'package:mobile/services/chat/chat.dart';
import 'package:random_string/random_string.dart' as random;

import 'generated/quiz.pb.dart';

String user = random.randomString(5);
String uuid = random.randomString(10);
String serverAddress = "192.168.43.114";

String mainClass = "EMPTY";
String subClass = "EMPTY";

final chatClient = Client();
var chatStreamInitialized = false;

Question question;
var wasAnswerCorrect = true;
var context;

final List<ChatMessageOnScreen> messages = <ChatMessageOnScreen>[];
var registeredSetState = () => null;
