
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  const Profile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                alignment: Alignment.center,
                height: 300,
                color: Colors.red,
                child: Stack(children: [
                  Container(
                    height: 150,
                    color: Colors.white,
                  ),
                  Center(
                    child: CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
                        )),
                  ),
                  Positioned(
                      right: 30,
                      top: 40,
                      child: InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(Icons.arrow_back),
                      )),
                  Positioned(
                      right: 30,
                      top: 40,
                      child: InkWell(
                        onTap: () {
                         // Get.to(CompleteprofileView(isUpdate: true));
                        },
                        child: CircleAvatar(
                          child: Icon(Icons.edit),
                        ),
                      ))
                ])),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Text('Name'),
                SizedBox(height: 10),
                Text("\$ {userController.user.value.name}"),
                Divider(),
                SizedBox(height: 20),
                Text('Email'),
                SizedBox(height: 10),
                Text("\$ {userController.user.value.email}"),
                Divider(),
                SizedBox(height: 20),
                Text('Address'),
                SizedBox(height: 10),
                Text(
                    '  \$ {userController.user.value.street},\${userController.user.value.city}'),
                Divider(),
                SizedBox(height: 20),
                Text('Phone'),
                SizedBox(height: 10),
                Text('\$ {userController.user.value.phone}'),
                SizedBox(height: 20),
                Text('')
              ],
            )
          ],
        ),
      ),
    );
  }
}

// class CustomAlertDialog extends StatefulWidget {
//   @override
//   _CustomAlertDialogState createState() => _CustomAlertDialogState();
// }

// class _CustomAlertDialogState extends State<CustomAlertDialog> {
//   final authController = Get.find<AuthController>();
//   final _formKey = GlobalKey<FormState>();
//   TextEditingController email = TextEditingController();
//   TextEditingController username = TextEditingController();
//   TextEditingController phone = TextEditingController();
//   String photoUrl;
//   File _image;

//   final picker = ImagePicker();
//   bool fromGallery = true;
//   pickImage(bool fromGallery) async {
//     final pickedFile = await picker.getImage(source: ImageSource.gallery);
//     if (pickedFile != null)
//       setState(() {
//         _image = File(pickedFile.path);
//       });
//     else {}
//   }

//   uploadImage() async {
//     final _firebaseReference = FirebaseStorage.instance
//         .ref()
//         .child('users/${authController.user.uid}/profilePicture.png');
//     UploadTask uploadTask = _firebaseReference.putFile(_image);
//     uploadTask.whenComplete(
//         () => _firebaseReference.getDownloadURL().then((value) async => {
//               // print(value)
//               await authController.updateUser(username.text, email.text, value)
//             }));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       backgroundColor: Theme.of(context).backgroundColor,
//       title: Text(
//         'Update Profile',
//         style: TextStyle(color: Colors.blueGrey),
//       ),
//       content: Form(
//         key: _formKey,
//         child: Column(mainAxisSize: MainAxisSize.min, children: [
//           TextFormField(
//             decoration: InputDecoration(
//                 labelText: "Email",
//                 enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(4)),
//                   borderSide: BorderSide(width: 1, color: Colors.white),
//                 ),
//                 focusedErrorBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.all(Radius.circular(4)),
//                     borderSide: BorderSide(width: 1, color: Colors.white)),
//                 labelStyle:
//                     AppTheme.subheadingStyle.copyWith(color: Colors.grey),
//                 contentPadding: EdgeInsets.zero,
//                 prefixIcon: Icon(Icons.email),
//                 hintText: "abc@gmail.com",
//                 border: OutlineInputBorder(
//                   borderSide: new BorderSide(color: Colors.teal),
//                   borderRadius: BorderRadius.circular(10),
//                 )),
//             controller: email,
//             validator: (v) {
//               if (!GetUtils.isEmail(v)) {
//                 return 'provide a valid email';
//               }
//               return null;
//             },
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           TextFormField(
//             decoration: InputDecoration(
//                 labelText: "Username",
//                 enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(4)),
//                   borderSide: BorderSide(width: 1, color: Colors.white),
//                 ),
//                 focusedErrorBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.all(Radius.circular(4)),
//                     borderSide: BorderSide(width: 1, color: Colors.white)),
//                 labelStyle:
//                     AppTheme.subheadingStyle.copyWith(color: Colors.white),
//                 contentPadding: EdgeInsets.zero,
//                 prefixIcon: Icon(Icons.email),
//                 hintText: "abc",
//                 border: OutlineInputBorder(
//                   borderSide: new BorderSide(color: Colors.teal),
//                   borderRadius: BorderRadius.circular(10),
//                 )),
//             controller: username,
//             validator: (v) {
//               if (v.length < 3) {
//                 return 'provide a valid name';
//               }
//               return null;
//             },
//           ),
//           SizedBox(height: 10),
//           InkWell(
//             onTap: () async {
//               showDialog(
//                   context: context,
//                   builder: (_) {
//                     return AlertDialog(
//                       title: Text('Select you image'),
//                       content: Column(
//                         children: [
//                           ListTile(
//                             onTap: () {
//                               pickImage(true);
//                             },
//                             title: Text('Gallery'),
//                           ),
//                           ListTile(
//                               onTap: () {
//                                 pickImage(false);
//                               },
//                               title: Text('Camera'))
//                         ],
//                       ),
//                     );
//                   });
//             },
//             child: _image == null
//                 ? Row(
//                     children: [
//                       Icon(
//                         Icons.add_a_photo,
//                         color: Colors.grey,
//                       ),
//                       Text('Select Photo')
//                     ],
//                   )
//                 : Text(''),
//           ),
//           _image == null
//               ? Text(
//                   'No image selected.',
//                   style: TextStyle(color: Colors.grey),
//                 )
//               : Image.file(_image),
//           SizedBox(height: 20),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               ElevatedButton(
//                   style: ElevatedButton.styleFrom(primary: Colors.orangeAccent),
//                   onPressed: () {
//                     Get.back();
//                   },
//                   child: Text('Cancel')),
//               ElevatedButton(
//                   style: ElevatedButton.styleFrom(primary: Colors.orangeAccent),
//                   onPressed: () async {
//                     if (_formKey.currentState.validate()) {
//                       print(email.text);
//                       print(username.text);
//                       authController.setLoading(false);
//                       await uploadImage();
//                     }
//                   },
//                   child: Obx(() => authController.loading.value
//                       ? Text('Saving')
//                       : Text('Submit'))),
//             ],
//           )
//         ]),
//       ),
//     );
//   }
// }
