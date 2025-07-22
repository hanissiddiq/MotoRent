
# 🚗 MotoRent - Aplikasi Rental Motor dengan Pelacakan Lokasi Peminjam

**MotoRent** adalah aplikasi rental motor berbasis web dan mobile yang memungkinkan admin untuk mengelola data penyewaan motor, serta melacak lokasi peminjam secara real-time.

---

## ✨ Fitur Utama

- ✅ Manajemen data peminjam dan kendaraan  
- 📍 Pelacakan lokasi peminjam secara real-time  
- 🔐 Autentikasi pengguna (admin & user)  
- 📅 Riwayat peminjaman  
- 📲 Aplikasi mobile untuk peminjam  
- 🛰️ Integrasi layanan lokasi menggunakan GPS  

---

## 🛠️ Teknologi yang Digunakan

### 📦 Backend
- **Framework**: [Laravel 12](https://laravel.com/)
- **Database**: [MySQL](https://www.mysql.com/)
- **API**: RESTful API untuk komunikasi dengan frontend Flutter
- **Middleware**: Laravel Sanctum / JWT (opsional untuk autentikasi API)

### 🎨 Frontend Web (Admin Panel)
- **CSS Framework**: [Tailwind CSS](https://tailwindcss.com/)
- **Templating**: Laravel Blade

### 📱 Frontend Mobile (Peminjam)
- **Framework**: [Flutter](https://flutter.dev/)
- **Geolocation Service**: [`geolocator`](https://pub.dev/packages/geolocator)
- **HTTP Communication**: `http` atau `dio` package untuk komunikasi API

---

## 🔧 Cara Instalasi

### 1. Backend (Laravel)

```bash
git clone https://github.com/namamu/motorent-backend.git
cd motorent-backend
composer install
cp .env.example .env
php artisan key:generate
```

Lalu atur koneksi database di file `.env`:

```
DB_DATABASE=db_motorent
DB_USERNAME=root
DB_PASSWORD=
```

Jalankan migrasi dan seeder jika ada:

```bash
php artisan migrate --seed
php artisan serve
```

### 2. Frontend Mobile (Flutter)

```bash
git clone https://github.com/namamu/motorent-mobile.git
cd motorent-mobile
flutter pub get
```

#### Tambahkan permission lokasi:

##### Android (`android/app/src/main/AndroidManifest.xml`):

```xml
<uses-permission android:name="android.permission.ACCESS_FINE_LOCATION"/>
<uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION"/>
```

##### iOS (`ios/Runner/Info.plist`):

```xml
<key>NSLocationWhenInUseUsageDescription</key>
<string>We need your location to track your motor rental</string>
```

#### Jalankan aplikasi:

```bash
flutter run
```

---

## 📡 Sistem Pelacakan Lokasi

- Aplikasi mobile menggunakan package `geolocator` untuk mengambil data GPS peminjam.
- Lokasi dikirim secara berkala (contoh: setiap 30 detik) ke backend Laravel melalui API endpoint.
- Admin dapat memantau posisi terkini melalui dashboard admin, dengan peta terintegrasi (seperti Google Maps atau Leaflet).

---

## 🧑‍💻 Kontributor

- **Backend & Admin Panel**: Nama Kamu  
- **Mobile App**: Nama Kamu  
- **UI/UX**: Nama Kamu  

---

## 📄 Lisensi

Proyek ini dilisensikan di bawah [MIT License](LICENSE).
