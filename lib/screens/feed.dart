import 'package:flutter/material.dart';

class Feed extends StatelessWidget {
  final List<Map<String, String>> touristicPlaces = [
    {
      'title': 'Zonguldak Maden Müzezi',
      'description':
          'Çınartepe Mahallesi’nde yer alan Zonguldak Maden Müzesi, şehrin en önemli üretim kaynağı olan taş kömürü madenciliğinin izlerini, büyük bir başarıyla ziyaretçilerine aktarıyor. 2016 yılında hizmete açılan müzede; fuaye, teşhir salonları, toplantı salonu, depolar ve idari birim odaları yer alıyor. Müzenin bahçesi ise, teşhir alanı olarak kullanılıyor.',
      'imagePath': 'lib\assets\zongi.jpg',
    },
    {
      'title': 'Karadeniz Ereğli Müzesi (Halil Paşa Konağı)',
      'description':
          'Halil Paşa Konağı olarak da bilinen Karadeniz Ereğli Müzesi, 19. yüzyıl sonlarında padişah II. Abdülhamit döneminde, Halil Paşa Karamahmutoğlu tarafından yaptırılmıştır. Bozhane Yalı Caddesi üzerinde yer alan konak, eski bir kilisenin temeli üzerine inşa edilmiş ve Roma döneminden kalma binalardan toplanmış antik spoli malzemeler şapolyen olarak, cephe süslemesinde, kullanılmış. Belli bir dönem Ortaokul ve Kız Meslek Lisesi olarak kullanılan konak, uzun bir süre sahipsiz kalmış ve 1989 yılında Kültür Bakanlığı’na tahsis edilmiş. Restorasyon çalışmaları tamamlanınca, 1998 yılında müze olarak hizmete açılmış.',
      'imagePath': 'assets/zongi.jpg',
    },
    {
      'title': 'Kapuz Plajı',
      'description':
          'Zonguldak Kent merkezine bağlı Yeşil Mahalle’de yer alan Kapuz Plajı, Zonguldak’ın yerel halkı, özellikle gençler, tarafından sıklıkla tercih ediliyor. Uzunluğu 180 metre, genişliği ise 25 metre olan plaj, Zonguldak Belediyesi tarafından işletiliyor. Zonguldak’taki tek mavi bayraklı plaj olan Kapuz Plajı, ormanla iç içe harika bir yerdir.',
      'imagePath': 'lib\assets\zongi.jpg',
    },
    {
      'title': 'Deniz Feneri',
      'description':
          'Zonguldak merkez sınırları içerisinde yer alan Deniz Feneri, Zonguldak’a 2 km mesafede konumlanıyor. Denizden yaklaşık 53 metre yükseklikte yer alan fener, 1908 yılında inşa edilmiş. Kulenin yüksekliği 9 metre olup, ışığı 20 deniz mil uzaktan görülür. Bu nedenle Karadeniz’den geçiş yapan gemilere kılavuzluk etmesiyle biliniyor. 1985 yılından itibaren elektrik ile çalıştırılan Deniz Feneri, ilk inşa edildiği zamanlar iki kız kardeşin sorumluluğundaydı. Bakımı, temizliği ve kesintisiz çalışması onlara bağlıydı. Daha sonraki yıllarda sürekli el değiştiren Deniz Feneri, son yıllarda uydular aracılığıyla kontrol edildiği için herhangi bir kişiye ihtiyaç kalmamıştır.',
      'imagePath': 'lib\assets\zongi.jpg',
    },
    {
      'title': 'Zonguldak Kent Ormanı',
      'description':
          'Şehir merkezine 20 dakikalık bir uzaklıkta bulunan Zonguldak Kent Ormanı, doğayla baş başa kalabileceğiniz mükemmel noktalardan biridir. Özellikle hafta sonları oldukça yoğun olan kent ormanı içerisinde; çocuk oyun alanları, yürüyüş parkurları, seyir terası, yağmur barınağı, çadır kamp alanı, ahşap köprü, gölet ve otopark yer alıyor. Bunun yanı sıra çok sayıda ağaç ve endemik bitki türlerini de görebilme şansı yakalayabilirsiniz. Piknik veya yürüyüş yapmak için tercih edilen bir yer olan kent ormanında, sessiz, sakin ve huzur dolu bir gün geçirmeye var mısınız? O zaman rota belli!',
      'imagePath': 'assets\zongi.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Turistik Mekanlar'),
      ),
      body: ListView.builder(
        itemCount: touristicPlaces.length,
        itemBuilder: (ctx, index) {
          final attraction = touristicPlaces[index];
          return Card(
            child: Column(
              children: [
                Image.asset(
                  attraction['imagePath']!,
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/zongi.jpg'),
                  ),
                  title: Text(attraction['title']!),
                  subtitle: Text(attraction['description']!),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
