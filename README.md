# Flutter Starter Pack
Base architecture for a Flutter app to get started quickly.

## Get started
1. Fork the project or download the files
2. Install all dependencies: `flutter pub get`
3. Generate model codes: `flutter pub run build_runner build`

The app contains a few classes. Some of them are meant to be extended (like `IDataProvider`
and `IDataRepository`), others like the model are just here as an example and can be removed.

### Where to go from here
There are several things you can do to customize this app, for example:
- implement your own models, for example to match some REST API responses
- implement the Providers and Repositories that handle models
- save the user language in shared preferences
- add authentication system
- customize the theme
- make it compatible with Flutter Web (some packages already are, some require additionnal dependencies)
- etc...

## Description
### Architecture
- `config/`: global configuration values
- `data/`: repositories to access local/remote data
- `models/`: serializable object classes
- `providers/`: classes holding state of model instances
- `ui/`: everything related to user interface

### Dependencies
- provider: keep state outside of Widgets
- sembast: local database
- json_serializable/json_annotation: generate code for converting models from/to json
- logger: properly formatted logs
- flutter_translate: easily translate your app

## License
Distributed under the MIT license. For more information see `LICENSE`.
