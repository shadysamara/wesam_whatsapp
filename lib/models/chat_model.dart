class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  ChatModel({this.name, this.message, this.time, this.avatarUrl});
}

List<ChatModel> dummyData = [
  new ChatModel(
      name: "Shady Samara",
      message: "Alsalmu alikum",
      time: "15:30 PM",
      avatarUrl: "https://randomuser.me/api/portraits/men/1.jpg"),
  new ChatModel(
      name: "Ali Nuaimi",
      message: "Hi For All",
      time: "17:30 PM",
      avatarUrl: "https://randomuser.me/api/portraits/men/2.jpg"),
  new ChatModel(
      name: "Hammam",
      message: "Give me and take from me",
      time: "5:00 PM",
      avatarUrl: "https://randomuser.me/api/portraits/men/3.jpg"),
  new ChatModel(
      name: "Ahmed",
      message: "I cant do that",
      time: "10:30 PM",
      avatarUrl:
          "https://www.mantruckandbus.com/fileadmin/media/bilder/02_19/219_05_busbusiness_interviewHeader_1485x1254.jpg"),
  new ChatModel(
      name: "Basel Qeshta",
      message: "I am busy now",
      time: "12:30 PM",
      avatarUrl: "https://randomuser.me/api/portraits/men/5.jpg"),
  new ChatModel(
      name: "Omar Shady",
      message: "I Love Alah",
      time: "15:30 PM",
      avatarUrl: "https://randomuser.me/api/portraits/men/6.jpg"),
];
