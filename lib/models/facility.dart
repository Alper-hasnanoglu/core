class Facilities {
  final int id;

  final String title, subtitle, description, image;
  final bool state;

  const Facilities({
    required this.id,
    required this.state,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.image,
  });

  @override
  String toString() => 'Facilities(id: $id, image: $image)';

  factory Facilities.fromJson(Map<String, dynamic> json) {
    return Facilities(
      id: json['id'],
      state: json['isAvailable'],
      title: json['facilityType'],
      subtitle: json['name'],
      description: json['instruments'][0]['name'],
      image: json['photos'][0],
    );
  }
}
/**
 {capacity: 10, facilityType: MEETING_ROOM, id: 1, instruments: [{name: Conference Table, quantity: 1},
  {name: Office Chair, quantity: 10}, {name: Projector, quantity: 1}],
  isAvailable: true, name: Meeting Room 1, photos: [https://www.coalesse.com/wp-content/uploads/2019/05/16-0041815.gif]}, 
 
 */
