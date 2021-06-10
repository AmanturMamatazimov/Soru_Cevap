import 'soru.dart';

class TestVeri{
  int _soruIndex=0;
  List<Soru> _soruBankasi=[
    Soru(soruMetni: 'Titanic gelmiş geçmiş en büyük gemidir',soruYanit: false),
    Soru(soruMetni: 'Dünyadaki tavuk sayısı insan sayısından fazladır',soruYanit: true),
    Soru(soruMetni: 'Kelebeklerin ömrü bir gündür',soruYanit: false),
    Soru(soruMetni: 'Dünya düzdür',soruYanit: false),
    Soru(soruMetni: 'Kaju fıstığı aslında bir meyvenin sapıdır',soruYanit: true),
    Soru(soruMetni: 'Fatih Sultan Mehmet hiç patates yememiştir',soruYanit: true)
  ];
  String getSoruMetni (){
    return _soruBankasi[_soruIndex].soruMetni;
  }
  bool getSoruYanit (){
    return _soruBankasi[_soruIndex].soruYanit;
  }
  void sonrakiSoru() {
    if(_soruIndex+1<_soruBankasi.length) {
      _soruIndex++;
    }
  }
  bool testBittiMi(){
    if(_soruIndex+1>=_soruBankasi.length){

      return true;
    }else{
      return false;
    }
  }
  void testiSifirla(){
    _soruIndex=0;
  }
}
class Random extends TestVeri{
  int _soruIndex=5;
  @override
  void sonrakiSoru(){
  _soruIndex--;
  }
}