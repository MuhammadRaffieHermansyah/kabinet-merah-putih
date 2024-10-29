import 'package:flutter/material.dart';

class WakilMenteriPage extends StatelessWidget {
  const WakilMenteriPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Wakil Menteri',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          const Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Wakil Menteri Indonesia',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Periode 2024 - Sekarang',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 3 / 7.4,
            ),
            padding: const EdgeInsets.all(6),
            itemCount: listWakilMenteri.length,
            itemBuilder: (context, index) {
              final data = listWakilMenteri[index];
              return Container(
                color: Colors.grey,
                padding: const EdgeInsets.all(6),
                child: Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        height: 120,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/wakil_menteri/${data["foto"]}.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        data["nama"]!,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        data['jabatan']!,
                        style: const TextStyle(fontSize: 13),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

List<Map<String, String>> listWakilMenteri = [
  {
    "nama": "Leodwik F Paulus",
    "jabatan": "Wakil Menteri Koordinator Bidang Politik dan Keamanan",
    "foto": "leodwik_f_paulus"
  },
  {
    "nama": "Otto Hasibuan",
    "jabatan":
        "Wakil Menteri Koordinator Bidang Hukum, HAM, Imigrasi dan Pemasyarakatan",
    "foto": "otto_hasibuan"
  },
  {
    "nama": "Bambang Eko Suharyanto",
    "jabatan": "Wakil Menteri Sekretaris Negara",
    "foto": "bambang_eko_suharyanto"
  },
  {
    "nama": "Juri Ardiantoro",
    "jabatan": "Wakil Menteri Sekretaris Negara",
    "foto": "juri_ardiantoro"
  },
  {
    "nama": "Bima Arya",
    "jabatan": "Wakil Menteri Dalam Negeri",
    "foto": "bima_arya"
  },
  {
    "nama": "Ribka Haluk",
    "jabatan": "Wakil Menteri Dalam Negeri",
    "foto": "ribka_haluk"
  },
  {
    "nama": "Anis Matta",
    "jabatan": "Wakil Menteri Luar Negeri",
    "foto": "anis_matta"
  },
  {
    "nama": "Armanata K. Natsir",
    "jabatan": "Wakil Menteri Luar Negeri",
    "foto": "armanata_k_natsir"
  },
  {
    "nama": "Arif Havas Oegroseno",
    "jabatan": "Wakil Menteri Luar Negeri",
    "foto": "arif_havas_oegroseno"
  },
  {
    "nama": "Dony Ermawan",
    "jabatan": "Wakil Menteri Pertahanan",
    "foto": "dony_ermawan"
  },
  {
    "nama": "Haji Muhammad Syafii M Hum",
    "jabatan": "Wakil Menteri Agama",
    "foto": "haji_muhammad_syafii_m_hum"
  },
  {
    "nama": "Edward Omar Sharif Hiariej",
    "jabatan": "Wakil Menteri Hukum",
    "foto": "edward_omar_sharif_hiariej"
  },
  {"nama": "Mugiyanto", "jabatan": "Wakil Menteri HAM", "foto": "mugiyanto"},
  {
    "nama": "Silmy Karim",
    "jabatan": "Wakil Menteri Imigrasi dan Pemasyarakatan",
    "foto": "silmy_karim"
  },
  {
    "nama": "Thomas Djiwandono",
    "jabatan": "Wakil Menteri Keuangan",
    "foto": "thomas_djiwandono"
  },
  {
    "nama": "Prof. Suahasil Nazara",
    "jabatan": "Wakil Menteri Keuangan",
    "foto": "prof_suahasil_nazara"
  },
  {
    "nama": "Anggito Abimanyu",
    "jabatan": "Wakil Menteri Keuangan",
    "foto": "anggito_abimanyu"
  },
  {
    "nama": "Dr. Fajar Rizal Ul Haq",
    "jabatan": "Wakil Menteri Pendidikan",
    "foto": "dr_fajar_rizal_ul_haq"
  },
  {
    "nama": "Prof. Latif Uhayat",
    "jabatan": "Wakil Menteri Pendidikan",
    "foto": "prof_latif_uhayat"
  },
  {
    "nama": "Prof. Dr. Fauzan Mpd",
    "jabatan": "Wakil Menteri Pendidikan Tinggi Science dan Teknologi",
    "foto": "prof_dr_fauzan_mpd"
  },
  {
    "nama": "Prof. Stella Christie",
    "jabatan": "Wakil Menteri Pendidikan Tinggi Science dan Teknologi",
    "foto": "prof_stella_christie"
  },
  {
    "nama": "Giring Ganesha",
    "jabatan": "Wakil Menteri Kebudayaan",
    "foto": "giring_ganesha"
  },
  {
    "nama": "Prof. Dr. Dante Saksono",
    "jabatan": "Wakil Menteri Kesehatan",
    "foto": "prof_dr_dante_saksono"
  },
  {
    "nama": "Agus Jabo Priyono",
    "jabatan": "Wakil Menteri Sosial",
    "foto": "agus_jabo_priyono"
  },
  {
    "nama": "Imanuel Ebenhaezer",
    "jabatan": "Wakil Menteri Ketenagakerjaan",
    "foto": "imanuel_ebenhaezer"
  },
  {
    "nama": "Kristina Ariani",
    "jabatan": "Wakil Menteri Pekerja Migran Indonesia",
    "foto": "kristina_ariani"
  },
  {
    "nama": "Dzulfikar Ahmad Tawalla",
    "jabatan": "Wakil Menteri Pekerja Migran Indonesia",
    "foto": "dzulfikar_ahmad_tawalla"
  },
  {
    "nama": "Faisol Riza",
    "jabatan": "Wakil Menteri Perindustrian",
    "foto": "faisol_riza"
  },
  {
    "nama": "Dyah Roro Esti Widyaputri",
    "jabatan": "Wakil Menteri Perdagangan",
    "foto": "dyah_roro_esti_widyaputri"
  },
  {
    "nama": "Yuliot Tanjung",
    "jabatan": "Wakil Menteri ESDM",
    "foto": "yuliot_tanjung"
  },
  {
    "nama": "Diana Kusuma Astuti",
    "jabatan": "Wakil Menteri Pekerjaan Umum",
    "foto": "diana_kusuma_astuti"
  },
  {
    "nama": "Fahri Hamzah",
    "jabatan": "Wakil Menteri Perumahan dan Kawasan Permukiman",
    "foto": "fahri_hamzah"
  },
  {
    "nama": "Ahmad Riza Patria",
    "jabatan": "Wakil Menteri Desa",
    "foto": "ahmad_riza_patria"
  },
  {
    "nama": "Viva Yoga Mauladi",
    "jabatan": "Wakil Menteri Transmigrasi",
    "foto": "viva_yoga_mauladi"
  },
  {
    "nama": "Komjen Pol (Purn) Suntana",
    "jabatan": "Wakil Menteri Perhubungan",
    "foto": "komjen_pol_purn_suntana"
  },
  {
    "nama": "Angga Raka Prabowo",
    "jabatan": "Wakil Menteri Komunikasi Digital",
    "foto": "angga_raka_prabowo"
  },
  {
    "nama": "Nezar Patria",
    "jabatan": "Wakil Menteri Komunikasi Digital",
    "foto": "nezar_patria"
  },
  {
    "nama": "Sudaryono",
    "jabatan": "Wakil Menteri Pertanian",
    "foto": "sudaryono"
  },
  {
    "nama": "Sulaiman Umar",
    "jabatan": "Wakil Menteri Kehutanan",
    "foto": "sulaiman_umar"
  },
  {
    "nama": "Laksamana Madya TNI (Purn) Didit Herdiawan Ashaf",
    "jabatan": "Wakil Menteri Kelautan Perikanan",
    "foto": "laksamana_madya_tni_purn_didit_herdiawan_ashaf"
  },
  {
    "nama": "Oshi Dermawan",
    "jabatan": "Wakil Menteri ATR/Wakil Kepala Badan Pertanahan Nasional",
    "foto": "oshi_dermawan"
  },
  {
    "nama": "Febrian Alfianto Rudiat",
    "jabatan":
        "Wakil Menteri Perencanaan Pembangunan Nasional/Wakil Kepala Bappenas",
    "foto": "febrian_alfianto_rudiat"
  },
  {
    "nama": "Komjen (Purn) Purwadi",
    "jabatan":
        "Wakil Menteri Pendayagunaan Aparatur Negara dan Reformasi Birokrasi",
    "foto": "komjen_purn_purwadi"
  },
  {
    "nama": "Kartiko Wirjo Atmojo",
    "jabatan": "Wakil Menteri BUMN",
    "foto": "kartiko_wirjo_atmojo"
  },
  {
    "nama": "Aminudin Maruf",
    "jabatan": "Wakil Menteri BUMN",
    "foto": "aminudin_maruf"
  },
  {
    "nama": "Doni Oskarya",
    "jabatan": "Wakil Menteri BUMN",
    "foto": "doni_oskarya"
  },
  {
    "nama": "Isyana Bagus Oka",
    "jabatan": "Wakil Menteri Kependudukan/Wakil Kepala BKKBN",
    "foto": "isyana_bagus_oka"
  },
  {
    "nama": "Diaz Hendropriyono",
    "jabatan": "Wakil Menteri Lingkungan Hidup",
    "foto": "diaz_hendropriyono"
  },
  {
    "nama": "Todotua Pasaribu",
    "jabatan": "Wakil Menteri Investasi Hilirisasi/Wakil Kepala BKPM",
    "foto": "todotua_pasaribu"
  },
  {
    "nama": "Ferry Juliantono",
    "jabatan": "Wakil Menteri Koperasi",
    "foto": "ferry_juliantono"
  },
  {
    "nama": "Helfi Yuni Moraza",
    "jabatan": "Wakil Menteri UMKM",
    "foto": "helfi_yuni_moraza"
  },
  {
    "nama": "Ni Luh Enik Ermawati",
    "jabatan": "Wakil Menteri Pariwisata",
    "foto": "ni_luh_enik_ermawati"
  },
  {
    "nama": "Irine Umar",
    "jabatan": "Wakil Menteri Ekonomi Kreatif/Wakil Kepala Bekraf",
    "foto": "irine_umar"
  },
  {
    "nama": "Veronica Tan",
    "jabatan": "Wakil Menteri Pemberdayaan Perempuan dan Anak (PPA)",
    "foto": "veronica_tan"
  },
  {
    "nama": "Taufik Hidayat",
    "jabatan": "Wakil Menteri Pemuda dan Olahraga",
    "foto": "taufik_hidayat"
  },
  {
    "nama": "Muhammad Qodari",
    "jabatan": "Wakil Kepala Staf Kepresidenan (KSP)",
    "foto": "muhammad_qodari"
  },
];
