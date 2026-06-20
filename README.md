# GameGear Catalog

A simple Flutter mini e-commerce catalog app for gaming accessories and tech products. The app is built for a beginner Flutter course and uses local JSON dummy data instead of a backend, checkout, cart system, or payment flow.

## Features

- Clean home screen with the title `Discover` and subtitle `Find your next gear.`
- Local product data loaded from `assets/data/products.json`.
- Product grid built with `GridView`/sliver grid style layout.
- Rounded product cards with image, name, subtitle, and price.
- Product detail screen with image, category, description, specs, and price.
- `Add to Cart` button that only shows a SnackBar message.
- Search field for filtering products by name, subtitle, or category.
- Horizontal category filter chips.
- `Image.network` product images with an `errorBuilder` fallback.
- No third-party Flutter packages.

## Flutter Version

Placeholder: `Flutter SDK version used: __________`

During development on this machine:

```text
Flutter 3.44.2
Dart 3.12.2
```

## Project Structure

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

assets/
  data/
    products.json
```

## How to Run

Get dependencies:

```powershell
flutter pub get
```

Check connected devices:

```powershell
flutter devices
```

Check available Android emulators:

```powershell
flutter emulators
```

Launch an emulator:

```powershell
flutter emulators --launch <emulator_id>
```

Analyze the project:

```powershell
flutter analyze
```

Run tests:

```powershell
flutter test
```

Run the app:

```powershell
flutter run
```

## Screenshots

Add screenshots here after running the app on an emulator or device.

Suggested screenshots:

- Home product grid
- Search results
- Category filter result
- Product detail page
- Add to Cart SnackBar
