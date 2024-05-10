// page list

// item class
import 'package:go_router/go_router.dart';

List<String> pages = [];

addPage(context, link) {
  pages.add(
    link,
  );
  GoRouter.of(context).go(link);
}

backPage(context) {
  if (pages.isEmpty) {
    pages.removeLast();
    GoRouter.of(context).go(pages.last);
  } else {
    GoRouter.of(context).go('/');
  }
}
