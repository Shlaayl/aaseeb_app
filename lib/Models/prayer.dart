class Prayer {
  DateTime? time;
  String title;
  bool selected = false;
  String status = "upcoming"; // now, upcoming, final

  Prayer({this.time,required this.title,required this.selected});


}