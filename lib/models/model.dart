

import 'dart:io';

class Contact
{
  String? firstname;
  String? lastname;
  String? phone;
  String? email;
  File? image;

  Contact({required this.email,required this.firstname,required this.image,required this.lastname,required this.phone});
}
