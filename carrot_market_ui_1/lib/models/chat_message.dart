class ChatMessage {
  final String sender;
  final String profileImage;
  final String location;
  final String sendDate;
  final String message;
  final String? imageUri;

  ChatMessage(
      {required this.sender,
      required this.profileImage,
      required this.location,
      required this.sendDate,
      required this.message,
      this.imageUri});
}

// 샘플 데이터
List<ChatMessage> chatMessageList = [
  ChatMessage(
      sender: '당근이',
      profileImage:
          'https://cdn.pixabay.com/photo/2017/11/09/21/41/cat-2934720_960_720.jpg',
      location: '진구',
      sendDate: '1일전',
      message: '다양한 물품이 많아요.'),
  ChatMessage(
      sender: '당근이',
      profileImage:
          'https://cdn.pixabay.com/photo/2017/11/09/21/41/cat-2934720_960_720.jpg',
      location: '진구',
      sendDate: '1일전',
      message: '다양한 물품이 많아요.',
      imageUri:
          'https://cdn.pixabay.com/photo/2017/11/09/21/41/cat-2934720_960_720.jpg'),
];
