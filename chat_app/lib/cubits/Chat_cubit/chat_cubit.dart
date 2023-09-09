import 'package:bloc/bloc.dart';
import 'package:chat_app/models/message.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(ChatInitial());
  CollectionReference Messages =
      FirebaseFirestore.instance.collection('Messages');
  void sendMessage({required String msg, required String email}) {
    Messages.add({
      'Text': msg,
      'createdAt': DateTime.now(),
      'id': email,
    });
  }

  void getMessages() {
    Messages.orderBy('createdAt', descending: true).snapshots().listen((event) {
      List<Message> messages = [];
      for (var doc in event.docs) {
        messages.add(Message.fromJason(doc));
      }
      emit(ChatSuccess(messages: messages));
    });
  }
}
