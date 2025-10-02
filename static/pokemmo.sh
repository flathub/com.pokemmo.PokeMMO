#!/bin/sh

if [ "$(uname -m)" = "aarch64" ]; then
  exec java -Dfile.encoding="UTF-8" -Djava.library.path=/app/lib -jar /app/bin/unix-installer.jar "$@"
else
  exec java -Dfile.encoding="UTF-8" -jar /app/bin/unix-installer.jar "$@"
fi
