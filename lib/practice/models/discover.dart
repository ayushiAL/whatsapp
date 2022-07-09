class DiscoverModel {
  String? photo;
  String? image;
  String? name;
  String? uname;

  DiscoverModel({this.photo, this.image, this.name, this.uname});
}

class DiscoverList {
  static List<DiscoverModel> discoverList = [
    DiscoverModel(
        photo:
            "https://images.unsplash.com/photo-1625558185597-a44138cce398?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8bmF0dXJhbCUyMGJhY2tncm91bmR8ZW58MHx8MHx8&w=1000&q=80",
        image:
            "https://cdn.pixabay.com/photo/2019/03/15/09/49/girl-4056684_960_720.jpg",
        name: "Ridhwan Nordin",
        uname: "@ridzjcob"),
    DiscoverModel(
        photo:
            "https://editzstock.com/wp-content/uploads/2022/04/Natural-Background-819x1024.jpg",
        image:
            'https://cdn.pixabay.com/photo/2020/12/15/16/25/clock-5834193__340.jpg',
        name: "Clem Onojeghuo",
        uname: "@clemono2"),
    DiscoverModel(
        photo:
            "https://w0.peakpx.com/wallpaper/818/855/HD-wallpaper-natural-background-background-natural-background.jpg",
        image:
            'https://cdn.pixabay.com/photo/2020/09/18/19/31/laptop-5582775_960_720.jpg',
        name: "Jon Tyson",
        uname: "@jontyson"),
    DiscoverModel(
        photo: "https://s3.envato.com/files/275886125/DSC_4047.jpg",
        image:
            'https://media.istockphoto.com/photos/woman-kayaking-in-fjord-in-norway-picture-id1059380230?b=1&k=6&m=1059380230&s=170667a&w=0&h=kA_A_XrhZJjw2bo5jIJ7089-VktFK0h0I4OWDqaac0c=',
        name: "Simon Zhu",
        uname: "@smnzhu"),
  ];
}
