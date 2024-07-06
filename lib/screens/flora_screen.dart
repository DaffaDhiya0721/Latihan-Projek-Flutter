import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'detail_flora_screen.dart';

class ListFloraScreen extends StatelessWidget {
  final List<Map<String, dynamic>> floraData = [
    {
      "nama": "Anggrek Hitam (Coelogyne pandurata)",
      "asal": "Hutan Kalimantan",
      "image": "assets/images/anggrek.jpg",
      "gallery": [
        "assets/images/anggrek1.jpg",
        "assets/images/anggrek2.jpg",
        "assets/images/anggrek3.jpg"
      ],
      "desc":
      "Anggrek hitam Kalimantan memiliki helai bunga berwarna hijau dan bunganya yang berwarna hitam. Sedangkan anggrek hitam Papua memiliki helai bunga berwarna hitam pekat dengan putik bunga yang berwarna cerah. Flora endemik khas Indonesia yang satu ini, kini berada dalam jenis anggrek yang dilindungi keberadaannya."
    },
    {
      "nama": "Bunga Padma Raksasa (Rafflesia arnoldii)",
      "asal": "Bengkulu",
      "image": "assets/images/padma.jpg",
      "gallery": [
        "assets/images/padma1.jpg",
        "assets/images/padma2.jpg",
        "assets/images/padma3.jpg"
      ],
      "desc":
      "Tumbuhan endemik khas Indonesia selanjutnya ini selain hanya bisa ditemukan di Indonesia juga termasuk tanaman yang langka. Saking langkanya tanaman ini, bunga padma raksasa menduduki peringkat pertama di dunia sebagai tanaman yang terancam punah. Berbeda dengan bunga yang biasa kita temui, tumbuhan Rafflesia arnoldii memiliki aroma khas berbau busuk yang menyengat. Karenanya, bunga ini sering disebut bunga bangkai. Bunga dari tanaman khas Indonesia ini memiliki ukuran yang dapat mencapai diameter 1 meter. Terlebih berat bunga bangkai dapat mencapai 10 kilogram. Flora endemik ini dapat kita lihat di Kebun Raya Bogor. Tapi bunga bangkai membutuhkan waktu yang cukup lama sekitar 9 bulan untuk mekar. Setelah mekar, tanaman langka ini hanya mampu mempertahankan wujudnya selama seminggu."
    },
    {
      "nama": "Kokoloeceran (Vatica bantamensis)",
      "asal": "Banten",
      "image": "assets/images/kokoleceran1.jpg",
      "gallery": [
        "assets/images/kokoleceran.jpg",
        "assets/images/kokoleceran2.jpg",
        "assets/images/kokoleceran3.jpg"
      ],
      "desc":
      "Kokoleceran adalah maskot provinsi Banten yang merupakan salah satu tanaman endemik Banten yang dipercaya hanya terdapat di Taman Nasional Ujung Kulon Pohon ini dapat tumbuh tinggi hingga 30 m, bagian pohon yang muda berbulu halus lebat. "
    },
    {
      "nama": "Ki Leho Beureum (Saurauia Cauliflora)",
      "asal": "Pulau Kalimantan",
      "image": "assets/images/leho.jpg",
      "gallery": [
        "assets/images/leho1.jpg",
        "assets/images/leho2.jpg",
        "assets/images/leho3.jpg"
      ],
      "desc":
      "Ki leho beureum atau Saurauia cauliflora merupakan tanaman endemik pulau Jawa, Indonesia. Ki leho beureum termasuk pada famili Actinidiaceae. Tanaman tersebut telah dimasukkan dalam IUCN Red List Vulnerable. IUCN Red List Vulnerable sendiri merupakan daftar status kelangkaan untuk spesies yang terancam kepunahan. Dikenal sebagai tanaman herbal, upanya tumbuhan yang berasal dari Jawa Barat ini memang memiliki banyak manfaat untuk kesehatan, lo SohIB. Seperti menjaga imunitas tubuh, mengontrol kolesterol, meningkatkan kinerja otak, dan memelihara kesehatan jantung."
    },
    {
      "nama": "Bunga Edelweiss (Anaphalis Javanica)",
      "asal": "Gunung Jawa",
      "image": "assets/images/edelweiss.jpg",
      "gallery": [
        "assets/images/edelweiss1.jpg",
        "assets/images/edelweiss2.jpg",
        "assets/images/edelweiss3.jpg"
      ],
      "desc":
      "Anaphalis javanica, yang dikenal sebagai Edelweiss jawa atau Bunga Senduro, adalah tumbuhan endemik zona alpina/montana di berbagai pegunungan tinggi di Indonesia yang saat ini dikategorikan sebagai tumbuhan langka. Bunga Edelweiss sering dijumpai di dataran tinggi. Umumnya di pegunungan bagian puncak dan sekitarnya. Bunga yang satu ini biasanya tumbuh setelah terjadinya erupsi gunung. Walaupun terlihat istimewa dan indah, bunga ini tetap harus dijaga dan jangan dipetik, ya SohIB karena tumbuhan ini hanya bisa hidup di dataran tinggi."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flora'),
        backgroundColor: Colors.lightGreenAccent,
      ),
    body: SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Background-flora.jpg"),
            fit: BoxFit.cover),
        ),
        child: ListView.builder(
          itemCount: floraData.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailFloraScreen(
                      nama: floraData[index]["nama"],
                      image: floraData[index]["image"],
                      gallery: floraData[index]["gallery"],
                      desc: floraData[index]["desc"],
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
                    image: AssetImage("${floraData[index]["image"]}"),
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
                    "${floraData[index]["nama"]} - ${floraData[index]["asal"]}",
                    textAlign: TextAlign.center,
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