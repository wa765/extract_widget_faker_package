import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('How to Extract Widget & Faker Package '),
        ),
        body: MainPage(),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  var faker = Faker();
  MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
      itemBuilder: (context, index) {
        return ChatTile(
          imageURL: 'https://picsum.photos/id/$index/200/300',
          title: faker.person.name(),
          subtitle: faker.lorem.sentence(),
        );
      },
    );
  }
}

class ChatTile extends StatelessWidget {
  final String imageURL, title, subtitle;
  const ChatTile({
    required this.imageURL,
    required this.title,
    required this.subtitle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageURL),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Text("21 : 17 "),
    );
  }
}
