import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../models/model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () => context.go('/addContactPage')),
      body: Container(
          alignment: Alignment.center,
          child: (contact.isEmpty)
              ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/open-cardboard-box.png",
                  height: 200),
              const SizedBox(height: 20),
              const Text(
                "You have not contacts yet",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
              : ListView.builder(
            itemCount: contact.length,
            itemBuilder: (context, i) {
              return ListTile(
                onTap: ()=> context.go('/'),
             //     {Navigator.of(context).pushNamed("detailpage", arguments: contact[i]);},
                leading: CircleAvatar(
                  radius: 26,
                  backgroundImage: (contact[i].image != null)
                      ? FileImage(contact[i].image!)
                  : (contact[i].image = null)
                  //(contact[i].image = null)

                  //Text("${contact[i].firstname!.trim()} ${contact[i].lastname!.trim()}") as String?)

                  //contact[i].firstname.trim()
                  //? (child: Text(${contact[i].firstname}.initails}))
                ),
                title: Text(
                    "${contact[i].firstname} ${contact[i].lastname}"),
                subtitle: Text("+20 ${contact[i].phone}"),
                // trailing: Row(
                //   children: [
                //     ElevatedButton(
                //
                //       onPressed: () {  },
                //       child: Text(" Delete ") ,
                //     ),
                //     ElevatedButton(
                //
                //       onPressed: () {  },
                //       child: Text(" Edit ") ,
                //     ),
                //   ],
                // ),

              );
            },
          )),
    );
  }
}
