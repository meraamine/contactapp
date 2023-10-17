import 'package:flutter/material.dart';


class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {


  @override
  Widget build(BuildContext context) {
    dynamic args = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Contact",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon:const Icon(Icons.arrow_back ,color: Colors.black,),
        ),
        backgroundColor: Colors.white,
        actions: [
          const CircleAvatar(
            radius: 15,
          ),
          IconButton(
            icon: const Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
            onPressed: () {
              setState(() {});
            },
          )
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 80,
                  backgroundImage: (args.image != null)
                      ? FileImage(args.image!)
                      : null,
                ),
                const SizedBox(width: 60),
                IconButton(
                  onPressed: () {
                    setState(() {
                     // contact.remove(args);
                      Navigator.of(context).pushReplacementNamed("/");
                    });

                  },
                  icon: const Icon(Icons.delete),
                ),
                const SizedBox(width: 20),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("editpage",arguments: args);
                  },
                  icon: const Icon(Icons.edit),
                ),
              ],
            ),
            const SizedBox(height: 50),
            Text(
              "${args.firstname} ${args.lastname}",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            )

    ])
      )
    );
  }
}