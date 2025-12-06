STR := $$(perl -MYAML -le 'print YAML::LoadFile(shift)->{version}' ./pubspec.yaml)
VERSION := $$( echo $(STR) | cut -d '+' -f 1 )
BUILD := $$( echo $(STR) | cut -d '+' -f 2 )


run_test:
	@fvm flutter analyze --fatal-infos --fatal-warnings
# 	@fvm flutter pub run dart_code_metrics:metrics analyze lib --fatal-style --fatal-performance --fatal-warnings --disable-sunset-warning
# 	@fvm flutter pub run dart_code_metrics:metrics check-unnecessary-nullable lib --fatal-found --disable-sunset-warning
# 	@fvm flutter pub run dart_code_metrics:metrics check-unused-code lib --fatal-unused --disable-sunset-warning
# 	@fvm flutter pub run dart_code_metrics:metrics check-unused-files lib --fatal-unused --disable-sunset-warning
pub_get:
	@fvm flutter clean && fvm flutter pub get

build_runner:
	@fvm dart run build_runner build --delete-conflicting-outputs

clean_ios:
	@cd ios && rm -rf Podfile.lock && cd .. && fvm flutter clean && fvm flutter pub get && cd ios && pod install && cd ..

build_android_dev:
	@fvm flutter build apk --flavor dev -t lib/main_dev.dart --release --obfuscate --split-debug-info=./debug-info/dev

build_android_prod:
	@fvm flutter build appbundle --flavor prod -t lib/main_prod.dart --release --obfuscate --split-debug-info=./debug-info/prod
