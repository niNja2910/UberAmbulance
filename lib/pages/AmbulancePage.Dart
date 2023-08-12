import 'package:flutter/material.dart';

class AmbulancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: ContactList(),
    );
  }
}

class ContactList extends StatelessWidget {
  final List<Contact> contacts = [
    Contact(name: 'John Doe', phoneNumber: '123-456-7890'),
    Contact(name: 'Jane Smith', phoneNumber: '987-654-3210'),
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
