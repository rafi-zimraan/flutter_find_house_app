# 🏠 Flutter Find House App

## Getting Started
![flutterFindHouse Image](https://github.com/rafi-zimraan/flutter_find_house_app/blob/main/assets/backgroundApp.png)


Aplikasi pencarian rumah modern berbasis **Flutter**.  
Dirancang untuk memudahkan pengguna menemukan hunian impian, dengan desain UI yang elegan & mobile-friendly.  

---

## 🚀 Features
- 🏡 **Explore Homes** → cari rumah berdasarkan kota & kategori  
- 📍 **Map Integration** → lihat lokasi properti di peta  
- 📞 **Calling Screen** → hubungi pemilik rumah langsung  
- 📑 **Details Page** → lihat detail properti (foto, fasilitas, harga)  
- ⚠️ **404 Page** → halaman error jika data tidak ditemukan  

---

## 🛠 Tech Stack
- [Flutter](https://flutter.dev/) (3.x.x)
- State Management: Provider / Riverpod / BLoC *(pilih sesuai implementasi)*
- Google Maps API
- Custom UI Components  

---

## 📦 Getting Started

### 1️⃣ Cek Environment
```bash
flutter --version
flutter doctor

## Getting Started

> **Catatan:** Pastikan Anda sudah menyelesaikan langkah **Flutter - Environment Setup** (Install Flutter SDK, Android Studio/Xcode, serta menyiapkan emulator/simulator atau perangkat fisik). Lihat: [https://docs.flutter.dev/get-started/install](https://docs.flutter.dev/get-started/install)

### Step 0: Cek Lingkungan

```bash
flutter --version
flutter doctor
```

Pastikan semua komponen bertanda centang ✔️.

### Step 1: Install Dependencies

Dari folder proyek (root):

```bash
flutter pub get
```

### Step 2: Jalankan Aplikasi

Biarkan terminal pertama untuk proses *build*/log. Buka terminal baru dari root proyek, lalu jalankan sesuai target platform.

#### Untuk Android

```bash
# Opsional: jalankan emulator
flutter emulators --launch <EMULATOR_ID>

# Jalankan aplikasi ke perangkat Android
flutter run -d android
```

#### Untuk iOS (macOS saja)

```bash
# Buka workspace iOS (opsional, jika perlu konfigurasi)
open ios/Runner.xcworkspace

# Jalankan ke simulator/perangkat iOS
authentication1
authentication2
flutter run -d ios
```

> Pastikan Anda sudah menyiapkan Xcode dan *CocoaPods* (`sudo gem install cocoapods` bila diperlukan).

### Step 3: Modifikasi Aplikasi

Setelah aplikasi berjalan, Anda dapat mulai melakukan perubahan:

1. Buka file utama di `lib/main.dart` atau modul terkait fitur Anda.
2. Simpan perubahan. Flutter mendukung **Hot Reload**:

   * Di terminal, tekan `r` untuk *hot reload* atau `R` untuk *hot restart*.
   * Dari IDE (VS Code/Android Studio), gunakan tombol **Hot Reload**.

---

## Troubleshooting

* Jalankan diagnostik:

  ```bash
  flutter doctor -v
  ```
* Bersihkan *cache* build jika menemui error aneh:

  ```bash
  flutter clean
  flutter pub get
  ```
* Untuk error *Gradle/Pods*, buka proyek di Android Studio/Xcode dan lakukan *sync* / `pod install`.

---

## Learn More

* 🧭 **Flutter Website**: [https://flutter.dev](https://flutter.dev)
* 🧩 **Cookbook (Resep UI/UX)**: [https://docs.flutter.dev/cookbook](https://docs.flutter.dev/cookbook)
* 🚀 **Codelabs**: [https://docs.flutter.dev/codelabs](https://docs.flutter.dev/codelabs)
* 📚 **Docs & API Reference**: [https://api.flutter.dev](https://api.flutter.dev)
* 📝 **Testing**: \<https\://

