#!/bin/sh

# Config
JOURNAL_DIR="${JOURNAL_DIR:-$HOME/journal}"
EDITOR_CMD="${EDITOR:-nano}"

DATE="$(date +%F)"
FILE="$JOURNAL_DIR/$DATE.md"

mkdir -p "$JOURNAL_DIR"

if [ ! -f "$FILE" ]; then
  printf "# Journal – %s\n\n" "$DATE" > "$FILE"
fi

# Open editor
"$EDITOR_CMD" "$FILE"

cd "$JOURNAL_DIR" || exit 1

# Only commit if file changed
if ! git diff --quiet "$FILE"; then
  git add "$FILE"
  git commit -m "journal: $DATE"
  git push
fi


