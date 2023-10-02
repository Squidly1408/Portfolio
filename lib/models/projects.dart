// project model
class Projects {
  final String title;
  final String description;
  final List<String> mentors;
  final List<Resources> resources;

  Projects(
    this.title,
    this.description,
    this.mentors,
    this.resources,
  );
}

// resources model
class Resources {
  final String text;
  final String link;

  Resources(
    this.text,
    this.link,
  );
}
