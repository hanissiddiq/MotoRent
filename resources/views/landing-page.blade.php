{{-- resources/views/landing.blade.php --}}
<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MotoRent - Aplikasi Rental Motor</title>

    {{-- Tailwind CDN (kalau mau full build gunakan @vite) --}}
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-50 text-gray-800">
    <!-- Header -->
    <header class="bg-white shadow-md sticky top-0 z-50">
        <div class="max-w-7xl mx-auto px-6 py-4 flex justify-between items-center">
            <h1 class="text-2xl font-bold text-indigo-600">🚗 MotoRent</h1>
            <nav class="space-x-6 hidden md:flex">
                <a href="#fitur" class="hover:text-indigo-600">Fitur</a>
                <a href="#tentang" class="hover:text-indigo-600">Tentang</a>
                <a href="#kontak" class="hover:text-indigo-600">Kontak</a>
                <a href="https://github.com/hanissiddiq/MotoRent" class="hover:text-indigo-600">RestAPI</a>
                <a href="https://github.com/hanissiddiq/MotoRent-FE" class="hover:text-indigo-600">Frontend</a>
            </nav>
            <a href="#download" class="px-4 py-2 bg-indigo-600 text-white rounded-xl hover:bg-indigo-700">Download App</a>
        </div>
    </header>

    <!-- Hero -->
    <section class="bg-gradient-to-r from-indigo-600 to-purple-600 text-white py-20">
        <div class="max-w-7xl mx-auto px-6 grid md:grid-cols-2 gap-10 items-center">
            <div>
                <h2 class="text-4xl md:text-5xl font-bold leading-tight">
                    MotoRent - Aplikasi Rental Motor dengan 
                    <span class="text-yellow-300">Pelacakan Lokasi</span>
                </h2>
                <p class="mt-6 text-lg">
                    Sewa motor lebih mudah dan aman! Dengan MotoRent, 
                    Anda bisa melacak lokasi peminjam secara 
                    <span class="font-semibold">real-time</span>.
                    Aplikasi menggunakan Flutter dan Restful API dari Laravel untuk pengalaman terbaik.
                </p>
                <div class="mt-8 space-x-4">
                    <a href="#download" class="px-6 py-3 bg-yellow-400 text-gray-900 font-semibold rounded-xl hover:bg-yellow-300">Download Sekarang</a>
                    <a href="#fitur" class="px-6 py-3 border border-white rounded-xl hover:bg-white hover:text-indigo-700">Lihat Fitur</a>
                </div>
            </div>
            <div class="flex justify-center">
                {{-- Pastikan sudah jalankan php artisan storage:link --}}
                <img src="{{ asset('storage/daftar_mobil_screen.jpg') }}" 
                     alt="MotoRent" 
                     class="w-50 animate-pulse h-30 md:h-96 rounded-3xl shadow-lg bg-white">
            </div>
        </div>
    </section>

    <!-- Fitur -->
    <section id="fitur" class="py-20 bg-white">
        <div class="max-w-7xl mx-auto px-6 text-center">
            <h3 class="text-3xl font-bold text-indigo-700">Fitur Utama</h3>
            <p class="mt-4 text-gray-600">Nikmati kemudahan dalam mengelola rental motor dengan fitur modern.</p>
            <div class="mt-12 grid md:grid-cols-3 gap-8">
                <div class="p-6 bg-gray-50 rounded-2xl shadow hover:shadow-lg">
                    <h4 class="text-xl font-semibold mb-3">📍 Pelacakan Lokasi</h4>
                    <p>Lacak posisi motor yang sedang disewa secara real-time.</p>
                </div>
                <div class="p-6 bg-gray-50 rounded-2xl shadow hover:shadow-lg">
                    <h4 class="text-xl font-semibold mb-3">📊 Manajemen Data</h4>
                    <p>Kelola data penyewaan motor dengan dashboard yang mudah digunakan.</p>
                </div>
                <div class="p-6 bg-gray-50 rounded-2xl shadow hover:shadow-lg">
                    <h4 class="text-xl font-semibold mb-3">📱 Web & Mobile</h4>
                    <p>Akses MotoRent di aplikasi web dan mobile dengan tampilan responsif.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Tentang -->
    <section id="tentang" class="py-20 bg-gray-50">
        <div class="max-w-5xl mx-auto px-6 text-center">
            <h3 class="text-3xl font-bold text-indigo-700">Tentang MotoRent</h3>
            <p class="mt-6 text-lg text-gray-700 leading-relaxed">
                MotoRent hadir untuk mempermudah proses penyewaan motor bagi penyedia maupun peminjam. 
                Dengan sistem pelacakan lokasi peminjam, keamanan kendaraan lebih terjamin.
            </p>
        </div>
    </section>

    <!-- Kontak -->
    <section id="kontak" class="py-20 bg-white">
        <div class="max-w-4xl mx-auto px-6 text-center">
            <h3 class="text-3xl font-bold text-indigo-700">Hubungi Kami</h3>
            <p class="mt-4 text-gray-600">Punya pertanyaan atau butuh bantuan? Hubungi tim kami.</p>
            <div class="mt-8 space-y-4">
                <p>📧 Email: <a href="mailto:support@motorent.com" class="text-indigo-600 font-semibold">support@motorent.com</a></p>
                <p>📞 Telp: <span class="font-semibold">+62 822 1188 7735</span></p>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="bg-indigo-700 text-white py-6 text-center">
        <p>© {{ date('Y') }} MotoRent. All rights reserved.</p>
    </footer>
</body>
</html>