import 'package:whatsapp/models/user.dart';

class DataHelper {
  //kullanıcı bilgileri
  static List<User> verileriGetir() {
    return [
      User("Arsivlenmis", "Icons.archive", "", ""),
      User("Murat Kankam", "murat.jpg", "merkeze gel", "19:34"),
      User("Annem", "", "iyimisin ?", "13:37"),
      User("Ahmet Amcam", "amca.jpg", "nasılsın", "Dün"),
      User("Musti", "musti.jpg", "nabacaz", "Dün"),
      User("Ahmet", "", "lan", "Dün"),
      User("Apo", "apo.jpg", "18 inde", "24.08.2024"),
      User("Cebo", "cebo.jpg", "asagıdayım", "21.08.2024"),
      User("YAZILIM(3.SINIF)", "sinif.jpg", "sinav", "18.08.2024"),
      User("proje", "", "hade lan", "12.08.2024"),
      User("Babam", "", "telefonu ac", "12.07.2024"),
      User("Nisanur", "", "abiii", "10.07.2024"),

      User("Murat Kankam", "murat.jpg", "merkeze gel", "19:34"),
      User("Annem", "", "iyimisin ?", "13:37"),
      User("Ahmet Amcam", "amca.jpg", "nasılsın", "Dün"),
      User("Musti", "musti.jpg", "nabacaz", "Dün"),
      User("Ahmet", "", "lan", "Dün"),
      User("Apo", "apo.jpg", "18 inde", "24.08.2024"),
      User("Cebo", "cebo.jpg", "asagıdayım", "21.08.2024"),
      User("YAZILIM(3.SINIF)", "sinif.jpg", "sinav", "18.08.2024"),
      User("proje", "", "hade lan", "12.08.2024"),
      User("Babam", "", "telefonu ac", "12.07.2024"),
      User("Nisanur", "", "abiii", "10.07.2024"),
    ];
  }

  static List<String> mesajlar = [];

  static List<String> add(String mesaj){
    mesajlar.add(mesaj);
    return mesajlar;
  }

  static void sil(){
    mesajlar.clear();
  } 

}
