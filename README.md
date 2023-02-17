<img src="https://user-images.githubusercontent.com/22013558/219514817-91ed5e33-2ba3-4373-8b9b-9d5407b47474.png" height="80" alt="Logo" />

Boilerplate that facilitates the creation of base projects that use flutter modules.

![Badge](https://img.shields.io/github/stars/brsHunterX/flutter-boilerplate-modular)
![Badge](https://img.shields.io/static/v1?label=version&message=0.1.0&color=orange)
[![style: flutter_lints](https://img.shields.io/badge/style-flutter__lints-4BC0F5.svg)](https://pub.dev/packages/flutter_lints)

## Features

- Modules Features
- Full Material Design 3.0
- Dynamic Theme Colors Scheme

## Usage

Click in "Use this template" > "Create a new repository" to create a new project based on this

![Step-1](https://user-images.githubusercontent.com/22013558/219527188-02429900-8963-4506-81d1-80339fbcfb06.png)


Clone the newly created project and rename the project using the "rename" library
    
    flutter pub global activate rename
    rename --appname your_project_name
    
Manually rename the "name" key in the pubspec.yaml file:
    
    name: your_project_name

Install the dependencies:

    flutter clean
    flutter pub get
    
    
Configure your project's icons in assets > launcher following the image and naming pattern, then run:

    flutter pub run flutter_launcher_icons
    
    
Duplicate the .env.example > .env file and make the necessary settings.

    cp ./.env.example .env
    
    
Start the app:

    flutter run

