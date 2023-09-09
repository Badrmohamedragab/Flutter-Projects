class ItemModel {
  final String? image;
  final String jpName;
  final String enName;
  final String sound;
  const ItemModel(
      {required this.sound,
      this.image,
      required this.jpName,
      required this.enName});
}
