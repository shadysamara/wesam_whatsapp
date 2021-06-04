class CallsModel {
  String name;
  String avatarUrl;
  String callTime;
  String type;
  String callType;

  CallsModel(
      {this.name, this.avatarUrl, this.callTime, this.type, this.callType});
}

List<CallsModel> dummyCallData = [
  new CallsModel(
      name: "Hammam",
      avatarUrl: "https://randomuser.me/api/portraits/men/1.jpg",
      callTime: "Just Now",
      type: 'incoming',
      callType: 'video'),
  new CallsModel(
      name: "Anwar",
      avatarUrl: "https://randomuser.me/api/portraits/men/2.jpg",
      callTime: "20 minutes ago",
      type: 'outgoing',
      callType: 'audio'),
  new CallsModel(
      name: "Hani",
      avatarUrl: "https://randomuser.me/api/portraits/men/3.jpg",
      callTime: "25 minutes ago",
      type: 'incoming',
      callType: 'video'),
  new CallsModel(
      name: "Jaber",
      avatarUrl: "https://randomuser.me/api/portraits/men/4.jpg",
      callTime: "30 minutes ago",
      type: 'outgoing',
      callType: 'audio'),
  new CallsModel(
      name: "Ali Awad",
      avatarUrl: "https://randomuser.me/api/portraits/men/5.jpg",
      callTime: "40 minutes ago",
      type: 'incoming',
      callType: 'video'),
  new CallsModel(
      name: "Abdelkareem",
      avatarUrl: "https://randomuser.me/api/portraits/women/6.jpg",
      callTime: "55 minutes ago",
      type: 'outgoing',
      callType: 'audio'),
  new CallsModel(
      name: "HUSSAM",
      avatarUrl: "https://randomuser.me/api/portraits/women/7.jpg",
      callTime: "1 hour ago",
      type: 'incoming',
      callType: 'video')
];
