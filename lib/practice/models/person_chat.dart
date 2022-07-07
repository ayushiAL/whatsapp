class PersonChatModel{
  int? id;
  String? msg;
  PersonChatModel({this.id,this.msg});
}

class PersonChatList{
  static List<PersonChatModel> personChatList=[
    PersonChatModel(id: 1,msg:'Really love your most recent photo. I’ve been trying to capture the same thing for a few months and would love some tips!'),
    PersonChatModel(id: 2,msg:'A fast 50mm like f1.8 would help with the bokeh. I’ve been using primes as they tend to get a bit sharper images.'),
    PersonChatModel(id: 1,msg:'Thank you! That was very helpful!'),
    PersonChatModel(id: 2,msg:'Really love your most recent photo. I’ve been trying to capture the same thing for a few months and would love some tips!'),

  ];
}