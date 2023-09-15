import 'package:whatsapp/models/user.dart';

class DataHelper {
  //kullanıcı bilgileri
  static List<User> verileriGetir() {
    return [
      User("Arsivlenmis", "Icons.archive", "", ""),
      User("Murat Kankam", "murat.jpg", "gel asaa", "19:34"),
      User("Annem", "anam.jpg", "iyimisin ?", "13:37"),
      User("Ahmet Amcam", "amca.jpg", "nasılsın", "Dün"),
      User("Musti", "musti.jpg", "nabacuk", "Dün"),
      User("Ahmet", "", "nebayy", "Dün"),
      User("Apo", "apo.jpg", "18 inde", "24.08.2024"),
      User("Cebo", "cebo.jpg", "asagıdayım", "21.08.2024"),
      User("YAZILIM(3.SINIF)", "sinif.jpg", "Naberr", "18.08.2024"),
      User("proje", "grup.jpg", "hade lan", "12.08.2024"),
      User("Babam", "sulo.jpg", "telefonu ac", "12.07.2024"),
      User("Nisanur", "", "abiii", "10.07.2024"),

      User("Murat Kankam", "murat.jpg", "gel asaa", "19:34"),
      User("Annem", "anam.jpg", "iyimisin ?", "13:37"),
      User("Ahmet Amcam", "amca.jpg", "nasılsın", "Dün"),
      User("Musti", "musti.jpg", "nabacuk", "Dün"),
      User("Ahmet", "", "nebayy", "Dün"),
      User("Apo", "apo.jpg", "18 inde", "24.08.2024"),
      User("Cebo", "cebo.jpg", "asagıdayım", "21.08.2024"),
      User("YAZILIM(3.SINIF)", "sinif.jpg", "Naberr", "18.08.2024"),
      User("proje", "grup.jpg", "hade lan", "12.08.2024"),
      User("Babam", "sulo.jpg", "telefonu ac", "12.07.2024"),
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
