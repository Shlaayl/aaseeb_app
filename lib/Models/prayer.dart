class Prayer {
  String time;
  String title;
  bool selected = false;
  String status = "upcoming"; // now, upcoming, final

  Prayer(this.time, this.title, this.selected);

  Map<String, dynamic> toJson() => {
        'time': time,
        'title': title,
        'selected': selected,
        'status': status,
      };

  factory Prayer.fromJson(Map<String, dynamic> value) {
    return Prayer(value["time"],value["title"],value["selected"]);
  }

}