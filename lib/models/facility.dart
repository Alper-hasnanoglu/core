class Facilities {
  final int id;

  final String title, state, subtitle, description, image;

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
}

// list of Facilitiess

