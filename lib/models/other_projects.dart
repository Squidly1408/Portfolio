// project data model

class OtherProjects {
  final String title;
  final String description;
  final List<OtherProject> projects;

  OtherProjects(
    this.title,
    this.description,
    this.projects,
  );
}

class OtherProject {
  final String title;
  final String description;
  final String key;

  OtherProject(
    this.title,
    this.description,
    this.key,
  );
}
