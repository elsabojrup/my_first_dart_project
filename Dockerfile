FROM google/dart:latest

WORKDIR /my_first_dart_project

COPY my_first_dart_project/pubspec.* ./
RUN dart pub get

COPY my_first_dart_project/ .

RUN dart compile exe bin/my_first_dart_project.dart -o bin/my_first_dart_project

CMD ["./bin/my_first_dart_project"]

