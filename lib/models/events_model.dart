class EventsModel{
  final int? id;
  final String? name;
  final String? image;
  final String? status;
  final int? peopleInterested;
  final int? peopleGoing;
  final String? date;

  EventsModel({
    required this.id,
    required this.name,
    required this.image,
    required this.status,
    required this.date,
    required this.peopleInterested,
    required this.peopleGoing,
  });

}