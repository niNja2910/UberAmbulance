import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hospital Contacts'),
      ),
      body: HospitalPage(),
    );
  }
}

class HospitalPage extends StatelessWidget {
  final List<Contact> contacts = [
    Contact(name: 'Hospital 1', phoneNumber: '123-456-7890'),
    Contact(name: 'Hospital 2', phoneNumber: '987-654-3210'),
    Contact(name: 'Hospital 3', phoneNumber: '987-654-3211'),
    Contact(name: 'Hospital 4', phoneNumber: '987-654-3212'),
    Contact(name: 'Hospital 5', phoneNumber: '987-654-3213'),
    Contact(name: 'Hospital 6', phoneNumber: '987-654-3214'),
    Contact(name: 'Hospital 7', phoneNumber: '987-654-3215'),
    Contact(name: 'Hospital 8', phoneNumber: '987-654-3216'),
    Contact(name: 'Hospital 9', phoneNumber: '987-654-3217'),
    Contact(name: 'Hospital 10', phoneNumber: '987-654-3218'),
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
