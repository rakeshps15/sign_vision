class Items {
  final String img;
  final String title;
  final String subTitle;

  Items({
    required this.img,
    required this.title,
    required this.subTitle,
  });
}

List<Items> listOfItems = [
  Items(
    img: "asset/intro/in1.png",
    title: "Learning Sign Language is\n an invaluable Skill",
    subTitle: "",
  ),
  Items(
    img: "asset/intro/in2.png",
    title: "It allows you to communicate with people who have difficulty communicating verbally",
    subTitle: "",
  ),
  Items(
    img: "asset/intro/in3.png",
    title:"It is the only mode of communication for such people to convey their messages",
    subTitle: "",
  ),
  Items(
    img: "asset/intro/in4.png",
    title:"Sign Language teach you to be a better listener",
    subTitle: "",
  ),
  Items(
    img: "asset/intro/in5.png",
    title:"This app helps to learn, Understand and communicate the sign language",
    subTitle: "",
  ),
];
