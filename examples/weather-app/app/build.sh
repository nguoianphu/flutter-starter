 
 rm -rf build || true
 rm -rf .idea || true
 rm -rf *.lock || true
 flutter clean; flutter pub get;  flutter build apk --split-per-abi
 