# Flutter Starter Pack
Base architecture for a Flutter app to get started quickly.

## How to use
Simply copy the project and start adding your own classes.  
The folders contains base classes that can be extended, and example classes that you can simply remove.

Some useful commands:
- generate model methods: `flutter pub run build_runner build`

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
