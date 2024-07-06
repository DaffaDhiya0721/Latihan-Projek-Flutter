import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'detail_fauna_screen.dart';

class ListFaunaScreen extends StatelessWidget {
  final List<Map<String, dynamic>> faunaData = [
    {
      "nama": "Harimau Sumatera",
      "asal": "Pulau Sumatera",
      "image": "assets/images/harimau.jpeg",
      "gallery": [
        "assets/images/harimau1.jpg",
        "assets/images/harimau2.jpg",
        "assets/images/harimau3.jpg"
      ],
      "desc":
      "Harimau sumatra adalah populasi Panthera tigris sondaica yang mendiami pulau Sumatra, Indonesia dan satu-satunya anggota subspesies harimau sunda yang masih bertahan hidup hingga saat ini."
    },
    {
      "nama": "Badak Sumatera",
      "asal": "Pulau Sumatera",
      "image": "assets/images/badak.png",
      "gallery": [
        "assets/images/badak1.jpg",
        "assets/images/badak2.jpg",
        "assets/images/badak3.jpg"
      ],
      "desc":
      "Badak sumatra, juga dikenal sebagai badak berambut atau badak Asia bercula dua, merupakan spesies langka dari famili Rhinocerotidae dan termasuk salah satu dari lima spesies badak yang masih lestari. Badak sumatra merupakan satu-satunya spesies yang tersisa dari genus Dicerorhinus."
    },
    {
      "nama": "Komodo",
      "asal": "Nusa Tenggara Timur (NTT)",
      "image": "assets/images/komodo.jpg",
      "gallery": [
        "assets/images/komodo1.jpg",
        "assets/images/komodo2.jpg",
        "assets/images/komodo3.jpg"
      ],
      "desc":
      "Komodo atau lengkapnya biawak komodo, adalah spesies biawak besar yang terdapat di Pulau Komodo, Rinca, Flores, Gili Motang, dan Gili Dasami di Provinsi Nusa Tenggara Timur, Indonesia. Hewan ini oleh penduduk asli pulau Komodo juga disebut dengan nama setempat ora."
    },
    {
      "nama": "Gajah Kalimantan",
      "asal": "Pulau Kalimantan",
      "image": "assets/images/gajah.jpg",
      "gallery": [
        "assets/images/gajah1.jpg",
        "assets/images/gajah2.jpg",
        "assets/images/gajah3.jpg"
      ],
      "desc":
      "Gajah Kalimantan atau di sebut juga gajah Borneo adalah subspesies dari gajah asia dan dapat ditemukan di Kalimantan Utara dan Sabah. Asal usul gajah yang di sebut sebagai nenek atau Gadingan ini oleh Suku Agabag masih merupakan kontroversi. Terdapat hipotesis bahwa mereka dibawa ke pulau Kalimantan."
    },
    {
      "nama": "Jalak Bali",
      "asal": "Pulau Bali",
      "image": "assets/images/jalak.jpg",
      "gallery": [
        "assets/images/jalak1.jpg",
        "assets/images/jalak2.jpg",
        "assets/images/jalak3.jpg"
      ],
      "desc":
      "Jalak Bali adalah sejenis burung pengicau berukuran sedang, dengan panjang lebih kurang 25 cm, dari suku Sturnidae. Ia turut dikenali sebagai Curik Ketimbang Jalak. Jalak Bali hanya ditemukan di hutan bagian barat Pulau Bali dan merupakan hewan endemik Indonesia."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fauna'),
        backgroundColor: Colors.lightGreenAccent,
      ),
    body: SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Background-fauna.jpg"),
            fit: BoxFit.cover),
        ),
        child: ListView.builder(
          itemCount: faunaData.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailFaunaScreen(
                      nama: faunaData[index]["nama"],
                      asal: faunaData[index]["asal"],
                      image: faunaData[index]["image"],
                      gallery: faunaData[index]["gallery"],
                      desc: faunaData[index]["desc"],
                    ),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.bottomLeft,
                height: 200,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("${faunaData[index]["image"]}"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black.withOpacity(0.5),
                  ),
                  child: Text(
                    "${faunaData[index]["nama"]} - ${faunaData[index]["asal"]}",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightGreen,
                    ),
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