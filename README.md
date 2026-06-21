# GameGear Catalog

**GameGear Catalog**, Flutter ile geliştirilmiş basit bir mini katalog / mini e-ticaret uygulamasıdır.
Proje, Software Persona mobil proje teslimi kapsamında hazırlanmıştır ve Flutter eğitiminde anlatılan temel konuları uygulamalı olarak göstermek amacıyla geliştirilmiştir.

Uygulamada oyuncu ekipmanları ve teknoloji ürünleri listelenir. Kullanıcı ürünleri inceleyebilir, ürün detay sayfasına geçebilir, arama ve kategori filtreleme yapabilir. Ayrıca gerçek ödeme veya satın alma işlemi bulunmadan, yalnızca eğitim amaçlı basit bir sepet simülasyonu kullanılır.

---

## Projenin Amacı

Bu projenin amacı, Flutter kullanarak temel seviyede çalışan bir mobil katalog uygulaması geliştirmektir.

Proje kapsamında aşağıdaki Flutter konuları uygulanmıştır:

* Flutter proje yapısı
* Widget mantığı
* `StatelessWidget` ve `StatefulWidget` kullanımı
* Sayfa tasarımı
* Sayfalar arası geçiş
* `Navigator.push` / `Navigator.pop`
* Model sınıfı oluşturma
* Local JSON verisi okuma
* `fromJson` / `toJson` mantığı
* `GridView` ile ürün listeleme
* Arama ve kategori filtreleme
* Görsel kullanımı
* Basit state güncelleme
* Temiz klasör yapısı

---

## Uygulama Özellikleri

* Ana sayfada ürün listeleme ekranı
* Ürün detay sayfası
* Local JSON dummy data kullanımı
* Ürün modeli oluşturma
* `fromJson` ve `toJson` kullanımı
* `GridView` tabanlı ürün kartları
* Ürün adına, alt açıklamasına veya kategorisine göre arama
* Yatay kategori filtreleme alanı
* Ürün detayına veri taşıma
* Basit sepet simülasyonu
* Sepete ürün ekleme
* Sepette ürün görüntüleme
* Ürün adedi ve toplam fiyat gösterimi
* Sepetten ürün kaldırma
* `Image.network` kullanımı
* Görsel yüklenemediğinde fallback hata görünümü
* Harici Flutter paketi kullanılmadan geliştirme

---

## Kullanılan Teknolojiler

* Flutter
* Dart
* Material Design
* Local JSON
* Android Emulator
* Visual Studio Code
* Android Studio

---

## Flutter Sürümü

Bu proje aşağıdaki Flutter ve Dart sürümleriyle geliştirilmiştir:

```text
Flutter 3.44.2
Dart 3.12.2
```

Kendi bilgisayarınızda kurulu Flutter sürümünü görmek için:

```bash
flutter --version
```

---

## Proje Klasör Yapısı

```text
lib/
  main.dart

  components/
    product_item_tile.dart
    category_chip.dart

  models/
    product_model.dart

  services/
    product_service.dart

  views/
    home_screen.dart
    product_detail_screen.dart
    cart_screen.dart

assets/
  data/
    products.json
```

---

## Veri Kaynağı

Projede gerçek bir backend veya canlı API kullanılmamıştır.
Ürün verileri eğitim amaçlı olarak local JSON dosyası üzerinden okunmaktadır.

Kullanılan veri dosyası:

```text
assets/data/products.json
```

Bu dosyada ürün adı, kategori, açıklama, fiyat, görsel adresi ve teknik özellikler gibi bilgiler tutulur.

---

## Uygulama Ekranları

Projede temel olarak aşağıdaki ekranlar bulunmaktadır:

### 1. Ana Sayfa

Ana sayfada ürünler kart yapısıyla listelenir.
Kullanıcı arama kutusu ile ürünleri filtreleyebilir ve kategori seçenekleriyle listeyi daraltabilir.

Ana sayfada bulunan temel yapılar:

* Başlık alanı
* Arama kutusu
* Kategori filtreleri
* Ürün grid yapısı
* Ürün kartları
* Sepet ekranına geçiş

### 2. Ürün Detay Sayfası

Ürün kartına tıklandığında detay sayfasına geçilir.
Bu sayfada seçilen ürüne ait detaylı bilgiler gösterilir.

Detay sayfasında bulunan bilgiler:

* Ürün görseli
* Ürün adı
* Kategori
* Açıklama
* Teknik özellikler
* Fiyat
* Sepete ekle butonu

### 3. Sepet Sayfası

Sepet ekranı gerçek ödeme işlemi içermez.

Sepet ekranında bulunan yapılar:

* Sepete eklenen ürünler
* Ürün adetleri
* Ürün kaldırma işlemi
* Toplam fiyat bilgisi

---

## Kurulum ve Çalıştırma

Projeyi çalıştırmadan önce Flutter SDK kurulu olmalıdır.

Bağımlılıkları yüklemek için:

```bash
flutter pub get
```

Bağlı cihazları veya açık emülatörleri görmek için:

```bash
flutter devices
```

Mevcut Android emülatörlerini listelemek için:

```bash
flutter emulators
```

Bir emülatörü başlatmak için:

```bash
flutter emulators --launch <emulator_id>
```

Projeyi analiz etmek için:

```bash
flutter analyze
```

Testleri çalıştırmak için:

```bash
flutter test
```

Uygulamayı çalıştırmak için:

```bash
flutter run
```

---

## Android Emulator ile Test Etme

Proje Android Emulator üzerinde test edilebilir.

Önerilen test adımları:

```bash
flutter doctor
```

```bash
flutter devices
```

```bash
flutter pub get
```

```bash
flutter analyze
```

```bash
flutter run
```


## Ekran Görüntüleri

Teslim öncesinde uygulamaya ait ekran görüntüleri bu bölüme eklenmelidir.

Önerilen ekran görüntüleri:

* Ana sayfa ürün listesi
* Arama sonucu ekranı
* Kategori filtreleme ekranı
* Ürün detay sayfası
* Sepet ekranı
