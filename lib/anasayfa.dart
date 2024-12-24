import 'package:flutter/material.dart';
import 'package:tasarim_calismasi/renkler.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Anasayfa extends StatefulWidget  {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}
// left - start- leading
// right en traling
class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    var ekran_bilgisi = MediaQuery.of(context);
    final double ekran_yuksekligi = ekran_bilgisi.size.height;
    final double ekran_genisligi = ekran_bilgisi.size.width;
    print("ekran yüksekliği : $ekran_yuksekligi");
    print("ekran genişliği : $ekran_genisligi");

    var d = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title:  Text("Pizza",style: TextStyle(color: yazi_renk1, fontFamily: "Playwrite" , fontSize: ekran_genisligi/19)), // burada title mızın rengini beyaz yaptık
        backgroundColor: ana_renk,
        centerTitle: true, // buda appbarda ki title mızı ortalıyor
      ),// appBar : başlık kısmı - const yazdık çünkü değişsin istemiyoruzconst
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(top: ekran_yuksekligi/43),
            child: Text(d!.piiza_baslik, style: TextStyle(fontSize: 36, color: ana_renk, fontWeight: FontWeight.bold),),
          ), // fontWeight: FontWeight.bold = bu kod yazım kalın olsun diye yazdım
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Image.asset("resimler/pizza_resim.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16), // bu da resimle alttaki butonlar arasında biraz boşluk elde etmemizi sağladı
            child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly, // butonlarım yatayda aralarında eşit boşluk şeklinde olsun diye bunu kullandık
              children: [
                Chip(icerik: d.peynir_yazi), // aşağıda oluşturudğumuz uzun button yazısını kısalttık kendimiz widget oluşturarak
                Chip(icerik: d.sucuk_yazi),
                Chip(icerik: d.zeytin_yazi),
                Chip(icerik: d.biber_yazi),

               /*TextButton(onPressed: (){}, // onPressed : tıklama butonu için kullanıyourz
                  child: Text("Cheese" , style: TextStyle(color: yazi_renk1),), // child : text ise butonun içinde yazan yazı için
                  style: TextButton.styleFrom(backgroundColor: ana_renk),), // style: TextButton.styleFrom(backgroundColor: ana_renk bu kod benim butonmuma renk vermesi içn

                TextButton(onPressed: (){}, // onPressed : tıklama butonu için kullanıyourz
                  child: Text("Savsage" , style: TextStyle(color: yazi_renk1),), // child : text ise butonun içinde yazan yazı için
                  style: TextButton.styleFrom(backgroundColor: ana_renk),), // style: TextButton.styleFrom(backgroundColor: ana_renk bu kod benim butonmuma renk vermesi içn

                TextButton(onPressed: (){}, // onPressed : tıklama butonu için kullanıyourz
                  child: Text("Olive" , style: TextStyle(color: yazi_renk1),), // child : text ise butonun içinde yazan yazı için
                  style: TextButton.styleFrom(backgroundColor: ana_renk),), // style: TextButton.styleFrom(backgroundColor: ana_renk bu kod benim butonmuma renk vermesi içn

                TextButton(onPressed: (){}, // onPressed : tıklama butonu için kullanıyourz
                  child: Text("Pepper" , style: TextStyle(color: yazi_renk1),), // child : text ise butonun içinde yazan yazı için
                  style: TextButton.styleFrom(backgroundColor: ana_renk),), // style: TextButton.styleFrom(backgroundColor: ana_renk bu kod benim butonmuma renk vermesi içn
*/
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0), // her yere 16 boşluk verdik
            child: Column (
              children: [
                Text(d.teslimat_sure, style: TextStyle(fontSize: 22, color: yazi_renk2, fontWeight: FontWeight.bold),),
                Text(d.teslimat_baslik, style: TextStyle(fontSize: 22, color: ana_renk, fontWeight: FontWeight.bold),),
                Text(d.pizza_aciklama, style: TextStyle(fontSize: 22, color: yazi_renk2,),
                textAlign: TextAlign.center,),//textAlign: TextAlign.center: bu kod benim yazdığım text'i ortalıyor

              ],
            ),
          ),

          Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(d.fiyat, style: TextStyle(fontSize: 44, color: ana_renk, fontWeight: FontWeight.bold),),
                //const Spacer(), // bu buton ve fiyatı iki köşeye sıkıstırıyor.
                SizedBox(width: 200, height: 50, // butonumuzun boyutunun büyüttük
                  child: TextButton(onPressed: (){}, // onPressed : tıklama butonu için kullanıyourz
                    child: Text(d.button_yazisi , style: TextStyle(color: yazi_renk1, fontSize: 22),), // child : text ise butonun içinde yazan yazı için
                    style: TextButton.styleFrom(
                        backgroundColor: ana_renk,
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))), // bu kod butonumuzu oval den köşeli hale geçirmemiz için yazıldı
                    ),
                  ),
                ), // style: TextButton.styleFrom(backgroundColor: ana_renk bu kod benim butonmuma renk vermesi içn


              ],
            ),


        ],
      )
    ); // sayfa alt yapısını oluşturduğumuz yer bu sayfamızın iskeleti
  }
}

// ŞİMDİ SÜREKLİ KULLANDIĞIMZI BUTONLARIMMIZI BİR WİDGET HALİNE GETİRİP İŞİMİZİ KOLAYLAŞTIRACAĞIZ

class Chip extends StatelessWidget { // Chip classımızı buton classımız olarak düşünebilirz
  String icerik;


  Chip({required this.icerik});

  @override
  Widget build(BuildContext context) {
    return  TextButton(onPressed: (){}, // onPressed : tıklama butonu için kullanıyourz
      child: Text(icerik, style: TextStyle(color: yazi_renk1),), // child : text ise butonun içinde yazan yazı için
      style: TextButton.styleFrom(backgroundColor: ana_renk),// style: TextButton.styleFrom(backgroundColor: ana_renk bu kod benim butonmuma renk vermesi içn
    );

  }
}





//---------------------------------------------------------------------

/*body: Center(
child: Row(  // yatayda düzen oluşturmak için kullanıyoruz
mainAxisAlignment: MainAxisAlignment.spaceEvenly, // bu kutucuklarımızı ortalıyor ve aralarında eşit boşluk bırakıyor
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Container(width: 100,height: 100, color: Colors.red,), // bu yapı bir kutucuk boyut ve renk verilebiliyor
Container(width: 50,height: 50, color: Colors.blue,),
Container(width: 80,height: 80, color: Colors.green,),
],

),
),// center sayfayı içerisindeki yapı ile ortalamak için kullanılıyor */

