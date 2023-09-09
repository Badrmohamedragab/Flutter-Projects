class Message {
  final String text;
  final String id;
  Message(this.text, this.id);
  factory Message.fromJason(jasonData) {
    return Message(jasonData['Text'], jasonData['id']);
  }
}
