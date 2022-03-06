#!/bin/sh

TARGET_TRIPLE="$(echo "$1" | cut -d ":" -f 1)"
TARGET_NAME="$(echo "$1" | cut -d ":" -f 2)"

echo "Building for $TARGET_NAME..."

if ! (cd build/release/target/a && TARGET_TRIPLE="$TARGET_TRIPLE" make re)
then
  echo "Failed to build .a for target $TARGET_NAME"
  exit 1
fi

if ! (cd build/release/target/so && TARGET_TRIPLE="$TARGET_TRIPLE" make re)
then
  echo "Failed to build .so for target $TARGET_NAME"
  exit 1
fi

TMPFILE=$(mktemp -d)
trap 'rm -rf -- "$TMPFILE"' EXIT

cp -r src/includes "$TMPFILE/includes"
cp build/release/target/a/lib*.a "$TMPFILE"
cp build/release/target/so/lib*.so "$TMPFILE"

(cd "$TMPFILE" && zip -qr "release-$TARGET_NAME.zip" lib*.a lib*.so includes)
cp "$TMPFILE/release-$TARGET_NAME.zip" dist
