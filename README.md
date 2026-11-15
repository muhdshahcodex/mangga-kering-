# Prompter Kamera

Teleprompter untuk iPhone yang merakam terus dengan kamera. Skrip bergerak dalam jalur di bahagian atas skrin, dekat kamera depan, supaya mata nampak pandang lensa.

## Cara guna

1. Buka halaman ni dalam **Safari** dan tekan **Allow** untuk kamera dan mikrofon.
2. Tekan **Skrip** untuk tampal skrip, dan laraskan saiz tulisan dan kelajuan.
3. Tekan butang merah untuk rakam. Teks mula bergerak lepas kiraan 3-2-1.
4. Tekan teks untuk jeda, dan seret teks untuk undur atau maju. Guna − dan + untuk ubah kelajuan masa merakam.
5. Tekan butang merah sekali lagi untuk berhenti. Tekan **Simpan**, kemudian pilih **Save Video** untuk masuk ke Photos.

Tip: dalam Safari, tekan Share → **Add to Home Screen** supaya app ni buka penuh skrin macam app biasa.

### Kalau kamera tak keluar

Dalam Safari, tekan **aA** di sebelah alamat web → **Website Settings** → tukar **Camera** dan **Microphone** jadi **Allow**, kemudian muat semula halaman.

### Center Stage

Masa kamera hidup, buka Control Center → **Kesan Video** → hidupkan **Center Stage** kalau ada. Tak semua iPhone dan versi iOS bagi pilihan ni untuk Safari.

## Hos dengan GitHub Pages

Kamera hanya boleh dibuka dari alamat `https://`. Untuk hos percuma:

1. Repo kena **public** (GitHub Pages untuk repo private perlukan pelan berbayar).
2. Settings → Pages → Source: **Deploy from a branch**, pilih branch yang ada `index.html` dan folder `/ (root)`.
3. Tunggu sekejap, kemudian buka `https://<nama-pengguna>.github.io/mangga-kering-/` dalam Safari.

## Kenapa tak terapung atas app Kamera?

iOS tak benarkan app web lukis di atas app lain. Tetingkap Picture-in-Picture boleh terapung, tapi bila app Kamera merakam video, iOS hentikan video dari Safari. Sebab tu app ni merakam sendiri.

## Fail

- `index.html`: keseluruhan app (HTML, CSS, JS dalam satu fail)
- `manifest.webmanifest`, `icon-180.png`, `icon-512.png`: untuk Add to Home Screen
