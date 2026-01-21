#!/bin/sh

JOURNAL_DIR="$HOME/journal"
DATE="$(date +%F)"
FILE="$JOURNAL_DIR/$DATE.md"

mkdir -p "$JOURNAL_DIR"

if [ ! -f "$FILE" ]; then
  cat <<EOF > "$FILE"
# Journal b
 $DATE

## Notes
-
EOF
fi

nano "$FILE"

cd "$JOURNAL_DIR" || exit 1
git add "$FILE"
git commit -m "journal: $DATE"
git push


