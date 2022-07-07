class ChatModel {
  String? img;
  String? name;
  String? msg;

  ChatModel({this.img, this.name, this.msg});
}

class ChatList {
  static List<ChatModel> chatList = [
    ChatModel(
      img:
          "https://media.ed.edmunds-media.com/gmc/sierra-3500hd/2018/td/2018_gmc_sierra-3500hd_f34_td_411183_1600.jpg",
      name: 'James',
      msg: 'Thank you that you are very helpful!',
    ),
    ChatModel(
      img:
          'https://img.indiaforums.com/article/1040x780/12/5407-kriti-sanon-celebrates-10-million-followers-on-instagram.jpg',
      name: 'Will kenny',
      msg: 'I know...i am tryting the get funds',
    ),
    ChatModel(
      img:
          'https://st1.bollywoodlife.com/wp-content/uploads/2021/07/disha-rahul1-2.jpg',
      name: 'Beth williams',
      msg:
          'I’m looking for tips around capturing the milky way. I have a 6D with a 24-100mm...',
    ),
    ChatModel(
      img:
          'https://img.indiaforums.com/article/1040x780/12/5407-kriti-sanon-celebrates-10-million-followers-on-instagram.jpg',
      name: 'Rev shown',
      msg: 'Wanted to ask if you’re available for a portrait shoot next week.',
    ),
  ];
}
