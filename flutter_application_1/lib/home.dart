import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String username;

  HomePage({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Meal Cathegories',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 156, 99, 35),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            MenuCard(
              title: 'Beef',
              description:
                  'Beef is the culinary name for meat from cattle, particularly skeletal muscle. Humans have been eating beef since prehistoric times.[1] Beef is a source of high-quality protein and essential nutrients.[2]',
              icon: Icons.newspaper,
              backgroundColor: Colors.blue.shade50,
              titleColor: Colors.blue.shade900,
              descriptionColor: Colors.black54,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DetailPage(
                      title: 'Beef',
                      content: 'This is the News page.',
                    ),
                  ),
                );
              },
            ),
            MenuCard(
              title: 'Beef',
              description:
                  'Beef is the culinary name for meat from cattle, particularly skeletal muscle. Humans have been eating beef since prehistoric times.[1] Beef is a source of high-quality protein and essential nutrients.[2]',
              icon: Icons.article,
              backgroundColor: Colors.orange.shade50,
              titleColor: Colors.orange.shade900,
              descriptionColor: Colors.black54,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DetailPage(
                      title: 'Chicken',
                      content:
                          'Chicken is a type of domesticated fowl, a subspecies of the red junglefowl. It is one of the most common and widespread domestic animals, with a total population of more than 19 billion as of 2011.[1] Humans commonly keep chickens as a source of food (consuming both their meat and eggs) and, more rarely, as pets.',
                    ),
                  ),
                );
              },
            ),
            MenuCard(
              title: 'Dessert',
              description:
                  'Dessert is a course that concludes a meal. The course usually consists of sweet foods, such as confections dishes or fruit, and possibly a beverage such as dessert wine or liqueur, however in the United States it may include coffee, cheeses, nuts, or other savory items regarded as a separate course elsewhere.',
              icon: Icons.report,
              backgroundColor: Colors.green.shade50,
              titleColor: Colors.green.shade900,
              descriptionColor: Colors.black54,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DetailPage(
                      title: 'Report',
                      content: 'This is the Report page.',
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final Color backgroundColor;
  final Color titleColor;
  final Color descriptionColor;
  final VoidCallback onTap;

  MenuCard({
    required this.title,
    required this.description,
    required this.icon,
    required this.backgroundColor,
    required this.titleColor,
    required this.descriptionColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: backgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Icon(
                icon,
                size: 40,
                color: titleColor,
              ),
              title: Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  color: titleColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                description,
                style: TextStyle(
                  fontSize: 14,
                  color: descriptionColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final String title;
  final String content;

  DetailPage({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 67, 91, 119),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            content,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.black87,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
