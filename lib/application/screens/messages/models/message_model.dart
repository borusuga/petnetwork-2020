import 'package:petnetwork/application/screens/messages/models/user_model.dart';

class Message {
  final User sender;
  final String
      time; // Would usually be type DateTime or Firebase Timestamp in production apps
  final String text;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.unread,
  });
}

// YOU - current user
final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageUrl: 'assets/images/steve.jpg',
);

// USERS
final User greg = User(
  id: 1,
  name: 'Человек яйца',
  imageUrl: 'assets/images/EM.jpeg',
);
final User james = User(
  id: 2,
  name: 'Стивен Х',
  imageUrl: 'assets/images/jopa master.PNG',
);
final User john = User(
  id: 3,
  name: 'Стас Барецкий',
  imageUrl: 'assets/images/x_295ea46e.png',
);
final User olivia = User(
  id: 4,
  name: 'Юсуп Джумакулыев',
  imageUrl: 'assets/images/Screenshot_1.png',
);
final User sam = User(
  id: 5,
  name: 'Алишер Моргенштерн',
  imageUrl: 'assets/images/2020-04-29_19.18.08.png',
);
final User sophia = User(
  id: 6,
  name: 'Барак Обама',
  imageUrl: 'assets/images/обэмэ.jpg',
);
final User steven = User(
  id: 7,
  name: 'Дурка',
  imageUrl: 'assets/images/Доктор.jpg',
);

// FAVORITE CONTACTS
List<User> favorites = [sam, steven, olivia, john, greg];

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: james,
    time: '4:55 PM',
    text: 'Жду около входа',
    unread: true,
  ),
  Message(
    sender: olivia,
    time: '4:30 PM',
    text: 'Привет!',
    unread: true,
  ),
  Message(
    sender: john,
    time: '3:30 PM',
    text: 'Кто такой Человек Яйца?',
    unread: false,
  ),
  Message(
    sender: sophia,
    time: '2:30 PM',
    text: 'Дружище, с кем не бывает, принимай...',
    unread: true,
  ),
  Message(
    sender: steven,
    time: '1:30 PM',
    text: 'Го майн я создал',
    unread: false,
  ),
  Message(
    sender: sam,
    time: '12:30 PM',
    text: 'Я - человек',
    unread: false,
  ),
  Message(
    sender: greg,
    time: '11:30 AM',
    text: 'Кто такой Стас Барецкий?',
    unread: true,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: james,
    time: '4:55 PM',
    text: 'Жду около входа',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'Я выхожу',
    unread: true,
  ),
  Message(
    sender: james,
    time: '2:35 PM',
    text: 'Давай в 5, около главного входа в парк',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Привет, да, конечно! Где и во сколько встречаемся?',
    unread: true,
  ),
  Message(
    sender: james,
    time: '2:00 PM',
    text: 'Привет! Я собираюсь на прогулку с Котобоем, пойдёте с нами?',
    unread: true,
  ),
];
