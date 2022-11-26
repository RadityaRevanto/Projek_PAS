import 'package:flutter/material.dart';
import 'package:projek_pas/Database/FavDatabase.dart';
import 'package:projek_pas/Database/FavoriteModel.dart';
import 'package:projek_pas/bottom_navigation/bottom_navigation.dart';


class MainCart extends StatefulWidget {
  const MainCart({super.key});

  @override
  State<MainCart> createState() => _MainCartState();
}

class _MainCartState extends State<MainCart> {
  List<CartModel> dataListFavorite = [];
  bool isLoading = false;
  Future read() async {
    setState(() {
      isLoading = true;
    });
    dataListFavorite = await CartDB.instance.readAll();
    print("Length List ${dataListFavorite.length}");
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    read();
  }

  showDeleteDialog(BuildContext context, String? name) {
    // set up the button
    Widget cancelButton = TextButton(
        child: const Text("Tidak"),
        onPressed: () {
          Navigator.of(context, rootNavigator: true).pop('dialog');
        });
    Widget okButton = TextButton(
        child: const Text("Hapus"),
        onPressed: () async {
          setState(() {
            isLoading = true;
          });
          await CartDB.instance.delete(name);
          read();
          setState(() {
            isLoading = false;
          });
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const MaterialYou()));
          Navigator.pop(context);
          Navigator.of(context, rootNavigator: true).pop('dialog');
        });

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      content: const Text("Apakah anda yakin ingin menghapus?"),
      actions: [cancelButton, okButton],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Your Favorite",
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                fontSize: 26, fontWeight: FontWeight.bold, color: Colors.blue),
          )),
      body: Center(
        child: Container(
          child: isLoading
              ? const Center(
            child: CircularProgressIndicator(),
          )
              : dataListFavorite.isEmpty
              ? const Center(
            child: Text("Kamu tidak memiliki helm Favorit"),
          )
              : ListView.builder(
            itemCount: dataListFavorite.length,
            itemBuilder: (c, index) {
              final item = dataListFavorite[index];
              return Padding(
                padding: const EdgeInsets.only(
                    top: 6, left: 10, right: 10),
                child: Card(
                  child: Container(
                    margin: const EdgeInsets.all(15),
                    child: Row(
                      children: <Widget>[
                        Container(
                            margin: const EdgeInsets.only(right: 20),
                            child:
                            Container(
                              width: 45,
                              height: 50,
                              margin: EdgeInsets.only(right: 30),
                              child: FadeInImage.assetNetwork(
                                  placeholder: 'assets/greyepllogo.png',
                                  image: item.image),
                            ),
                        ),
                        Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                item.name,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5,),
                              Text(
                                item.rate,

                              ),
                              SizedBox(height: 5,),
                              Text(
                                item.price,
                                style: TextStyle(
                                  color: Colors.blue
                                ),
                              ),
                            ]),
                        const Spacer(),
                        IconButton(
                          onPressed: () {
                            showDeleteDialog(context, item.name);
                          },
                          icon: const Icon(
                            Icons.delete,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
