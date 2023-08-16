import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hospital Contacts'),
      ),
      body: ContactList(),
    );
  }
}

class ContactList extends StatelessWidget {
  final List<Contact> contacts = [
    Contact(name: 'Ambulance 1', phoneNumber: '123-456-7890'),
    Contact(name: 'Ambulance 2', phoneNumber: '123-456-7891'),
    Contact(name: 'Ambulance 3', phoneNumber: '123-456-7892'),
    Contact(name: 'Ambulance 4', phoneNumber: '123-456-7893'),
    Contact(name: 'Ambulance 5', phoneNumber: '123-456-7894'),
    Contact(name: 'Ambulance 6', phoneNumber: '123-456-7895'),
    Contact(name: 'Ambulance 7', phoneNumber: '123-456-7896'),
    Contact(name: 'Ambulance 8', phoneNumber: '123-456-7897'),
    Contact(name: 'Ambulance 9', phoneNumber: '123-456-7899'),
    Contact(name: 'Ambulance 10', phoneNumber: '123-456-7900'),
    
    // Add more contacts here
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: contacts.length,
      itemBuilder: (context, index) {
        return ContactCard(contact: contacts[index]);
      },
    );
  }
}

class Contact {
  final String name;
  final String phoneNumber;

  Contact({required this.name, required this.phoneNumber});
}

class ContactCard extends StatelessWidget {
  final Contact contact;

  ContactCard({required this.contact});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ListTile(
        leading: Icon(Icons.person),
        title: Text(contact.name),
        subtitle: Text(contact.phoneNumber),
      ),
    );
  }
}
