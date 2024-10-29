import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MenteriPage extends StatelessWidget {
  const MenteriPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Menteri',
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
                'Menteri Indonesia',
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
            itemCount: listMenteri.length,
            itemBuilder: (context, index) {
              final data = listMenteri[index];
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
                              'assets/images/menteri/${data["foto"]}.png',
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
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        data['bidang']!,
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

List<Map<String, String>> listMenteri = [
  {
    "nama": "Budi Gunawan",
    "bidang": "Menteri Koordinator Bidang Politik dan Keamanan",
    "foto": "budi_gunawan"
  },
  {
    "nama": "Yusril Ihza Mahendra",
    "bidang": "Menko Bidang Hukum, HAM, Imigrasi, dan Pemasyarakatan",
    "foto": "yusril_ihza_mahendra"
  },
  {
    "nama": "Airlangga Hartarto",
    "bidang": "Menko Bidang Perekonomian",
    "foto": "airlangga_hartarto"
  },
  {
    "nama": "Pratikno",
    "bidang": "Menko Bidang Pembangunan Manusia dan Kebudayaan",
    "foto": "pratikno"
  },
  {
    "nama": "Agus Harimurti Yudhoyono",
    "bidang": "Menko Bidang Infrastruktur dan Pembangunan Kewilayahan",
    "foto": "agus_harimurti_yudhoyono"
  },
  {
    "nama": "Muhaimin Iskandar",
    "bidang": "Menko Pemberdayaan Masyarakat",
    "foto": "muhaimin_iskandar"
  },
  {
    "nama": "Zulkifli Hasan",
    "bidang": "Menko Bidang Pangan",
    "foto": "zulkifli_hasan"
  },
  {
    "nama": "Prasetyo Hadi",
    "bidang": "Menteri Sekretaris Negara",
    "foto": "prasetyo_hadi"
  },
  {
    "nama": "Muhammad Tito Karnavian",
    "bidang": "Menteri Dalam Negeri",
    "foto": "muhammad_tito_karnavian"
  },
  {"nama": "Sugiono", "bidang": "Menteri Luar Negeri", "foto": "sugiono"},
  {
    "nama": "Sjafrie Sjamsoeddin",
    "bidang": "Menteri Pertahanan",
    "foto": "sjafrie_sjamsoeddin"
  },
  {
    "nama": "Nasaruddin Umar",
    "bidang": "Menteri Agama",
    "foto": "nasaruddin_umar"
  },
  {
    "nama": "Supratman Andi Agtas",
    "bidang": "Menteri Hukum",
    "foto": "supratman_andi_agtas"
  },
  {
    "nama": "Natalius Pigai",
    "bidang": "Menteri Hak Asasi Manusia",
    "foto": "natalius_pigai"
  },
  {
    "nama": "Agus Andrianto",
    "bidang": "Menteri Imigrasi dan Pemasyarakatan",
    "foto": "agus_andrianto"
  },
  {"nama": "Sri Mulyani", "bidang": "Menteri Keuangan", "foto": "sri_mulyani"},
  {
    "nama": "Abdul Mu’ti",
    "bidang": "Menteri Pendidikan Dasar dan Menengah",
    "foto": "abdul_muti"
  },
  {
    "nama": "Satrio Sumantri Brodjonegoro",
    "bidang": "Menteri Pendidikan Tinggi, Sains, dan Teknologi",
    "foto": "satrio_sumantri_brodjonegoro"
  },
  {"nama": "Fadli Zon", "bidang": "Menteri Kebudayaan", "foto": "fadli_zon"},
  {
    "nama": "Budi Gunadi Sadikin",
    "bidang": "Menteri Kesehatan",
    "foto": "budi_gunadi_sadikin"
  },
  {
    "nama": "Saifullah Yusuf",
    "bidang": "Menteri Sosial",
    "foto": "saifullah_yusuf"
  },
  {
    "nama": "Yassierli",
    "bidang": "Menteri Ketenagakerjaan",
    "foto": "yassierli"
  },
  {
    "nama": "Abdul Kadir Karding",
    "bidang": "Menteri Perlindungan Pekerja Migran Indonesia",
    "foto": "abdul_kadir_karding"
  },
  {
    "nama": "Agus Gumiwang Kartasasmita",
    "bidang": "Menteri Perindustrian",
    "foto": "agus_gumiwang_kartasasmita"
  },
  {
    "nama": "Budi Santoso",
    "bidang": "Menteri Perdagangan",
    "foto": "budi_santoso"
  },
  {
    "nama": "Bahlil Lahadalia",
    "bidang": "Menteri Energi dan Sumber Daya Mineral",
    "foto": "bahlil_lahadalia"
  },
  {
    "nama": "Dodi Hanggodo",
    "bidang": "Menteri Pekerjaan Umum",
    "foto": "dodi_hanggodo"
  },
  {
    "nama": "Maruarar Sirait",
    "bidang": "Menteri Perumahan dan Kawasan Permukiman",
    "foto": "maruarar_sirait"
  },
  {
    "nama": "Yandri Susanto",
    "bidang": "Menteri Desa dan Pembangunan Daerah Tertinggal",
    "foto": "yandri_susanto"
  },
  {
    "nama": "M Iftitah Suryanagara",
    "bidang": "Menteri Transmigrasi",
    "foto": "m_iftitah_suryanagara"
  },
  {
    "nama": "Dudy Purwagandhi",
    "bidang": "Menteri Perhubungan",
    "foto": "dudy_purwagandhi"
  },
  {
    "nama": "Meutya Hafid",
    "bidang": "Menteri Komunikasi dan Digital",
    "foto": "meutya_hafid"
  },
  {
    "nama": "Amran Sulaiman",
    "bidang": "Menteri Pertanian",
    "foto": "amran_sulaiman"
  },
  {
    "nama": "Raja Juli Antonio",
    "bidang": "Menteri Kehutanan",
    "foto": "raja_juli_antonio"
  },
  {
    "nama": "Sakti Wahyu Trenggono",
    "bidang": "Menteri Kelautan dan Perikanan",
    "foto": "sakti_wahyu_trenggono"
  },
  {
    "nama": "Nusron Wahid",
    "bidang": "Menteri Agraria dan Tata Ruang/BPN",
    "foto": "nusron_wahid"
  },
  {
    "nama": "Rahmad Pambudi",
    "bidang": "Menteri Perencanaan Pembangunan Nasional",
    "foto": "rahmad_pambudi"
  },
  {
    "nama": "Rini Widyantini",
    "bidang": "Menteri Pendayagunaan Aparatur Negara dan Reformasi Birokrasi",
    "foto": "rini_widyantini"
  },
  {
    "nama": "Erick Thohir",
    "bidang": "Menteri Badan Usaha Milik Negara",
    "foto": "erick_thohir"
  },
  {
    "nama": "Wihaji",
    "bidang": "Menteri Kependudukan dan Pembangunan Keluarga/Kepala BKKBN",
    "foto": "wihaji"
  },
  {
    "nama": "Hanif Faizol Nurofik",
    "bidang": "Menteri Lingkungan Hidup",
    "foto": "hanif_faizol_nurofik"
  },
  {
    "nama": "Rosan Roeslani",
    "bidang": "Menteri Investasi dan Hilirisasi/Kepala BKPM",
    "foto": "rosan_roeslani"
  },
  {
    "nama": "Budi Arie Setiadi",
    "bidang": "Menteri Koperasi",
    "foto": "budi_arie_setiadi"
  },
  {
    "nama": "Maman Abdurrahman",
    "bidang": "Menteri Usaha Mikro dan Kecil Menengah",
    "foto": "maman_abdurrahman"
  },
  {
    "nama": "Widyanti Putri",
    "bidang": "Menteri Pariwisata",
    "foto": "widyanti_putri"
  },
  {
    "nama": "Teuku Rifki Harsya",
    "bidang": "Menteri Ekonomi Kreatif/Kepala Badan Ekraf",
    "foto": "teuku_rifki_harsya"
  },
  {
    "nama": "Arifatul Khoiri Fauzi",
    "bidang": "Menteri Pemberdayaan Perempuan dan Perlindungan Anak",
    "foto": "arifatul_khoiri_fauzi"
  },
  {
    "nama": "Dito Ariotedjo",
    "bidang": "Menteri Pemuda dan Olahraga",
    "foto": "dito_ariotedjo"
  },
  {"nama": "ST Burhanuddin", "bidang": "Jaksa Agung", "foto": "st_burhanuddin"},
  {
    "nama": "M. Herindra",
    "bidang": "Kepala Badan Intelijen Negara",
    "foto": "m_herindra"
  },
  {
    "nama": "AM Putranto",
    "bidang": "Kepala Staf Kepresidenan",
    "foto": "am_putranto"
  },
  {
    "nama": "Hasan Nasbi",
    "bidang": "Kepala Presidential Communication Office",
    "foto": "hasan_nasbi"
  },
  {
    "nama": "Teddy Indra Wijaya",
    "bidang": "Sekretaris Kabinet",
    "foto": "teddy_indra_wijaya"
  }
];
