// models
import 'project.dart';

// project type data model
class ProjectType {
  final String title;
  final String img;
  final int amount;
  final List<Project> projects;

  ProjectType(
    this.title,
    this.img,
    this.amount,
    this.projects,
  );
}
