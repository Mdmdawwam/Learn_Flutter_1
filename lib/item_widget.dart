import 'package:flutter/material.dart';
import 'package:profil/data.dart';
import 'package:profil/detail_produk.dart';

class ItemWidget extends StatefulWidget {
  const ItemWidget({super.key, required this.produk});
  final product produk;

  @override
  State<ItemWidget> createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  int count = 1;

  void addcount() {
    count = count + 1;
    setState(() {});
  }

  void delcount() {
    if (count != 0) {
      count = count - 1;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailProduk(
            produk: widget.produk,
          );
        }));
      },
      child: Card(
        elevation: 2,
        shadowColor: Colors.green,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: widget.produk.image,
              child: SizedBox(
                width: 100,
                child: Image.asset(widget.produk.image),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              'Rp. ${widget.produk.harga}',
              style: const TextStyle(
                color: Colors.green,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              widget.produk.nama,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              widget.produk.kuantitas,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            const Divider(
              height: 2,
              color: Colors.grey,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: const [
                    Icon(
                      Icons.add_shopping_cart,
                      size: 20,
                      color: Colors.green,
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                  ],
                ),
                const SizedBox(
                  width: 8,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: delcount,
                      icon: const Icon(
                        Icons.remove_circle_outline,
                        size: 18,
                        color: Colors.green,
                      ),
                    ),
                    Text(
                      count.toString(),
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.green,
                          fontWeight: FontWeight.w700),
                    ),
                    IconButton(
                      onPressed: addcount,
                      icon: const Icon(
                        Icons.add_circle_outline,
                        size: 18,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
