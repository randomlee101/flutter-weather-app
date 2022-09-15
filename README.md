# Weather App

A Weather App Project

## System Information
- OS: Windows
- RAM: 16GB
- OS Version: 11


## Project Set-Up
Install Android Studio Latest Version [Android Studio Chipmunk | 2021.2.1 Patch 2]
```yaml
https://developer.android.com/studio
```

Download Flutter 
```yaml
https://docs.flutter.dev/get-started/install
```

Clone Project
```yaml
git clone https://github.com/randomlee101/flutter-weather-app.git
```

Open Project In Android Studio
- Open Android Studio
- *File* > *Open* 
- Proceed To The Location of The Cloned Repository and Select The Root Folder

_N.B:_ Install **Dart** and **Flutter** Plugins From Android Studio Market Place

Install All Packages Used For The Project
```yaml
flutter pub get
```

Auto-generate Models Using Freezed
```yaml
flutter pub run build_runner build --delete-conflicting-outputs
```

## State Management
Stateless widgets were employed across board to ensure a well-optimised application

States of children widgets were managed with Streams from the **rxdart** implementation and the **get_it** instance

## Run Flutter Application
Connect a virtual or physical device to Android Studio then run the following command in the terminal
```yaml
flutter run 
```

## Challenges & Extra Notes
Per the requirement to display the current location, there was a roadblock fetching the full location description as it was not available with the returning data from the weather api.

However, the integration of Google Maps API will tackle this issue successfully

The **geolocator** package was installed in this project for setting real-time longitude and latitude of the user.

For simplicity, longitude (lon) and latitude (lat) were hard-coded in the _**weather_forecast_request.dart**_ file as params

Due to the quality of the weather_icons image files, the image assets were wrapped in a ImageIcon widget and given a static color, yellow (I'm not too sure of that color decision) to give it more pop

## Conclusion
Thank you for reviewing this project! Recommendations and feedbacks are welcome and can be directed to the author below.

## Author
Daniel Folorunso | [folorunsodaniel5@gmail.com](mailto:folorunsodaniel5@gmail.com)

