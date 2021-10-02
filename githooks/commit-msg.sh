#!/usr/bin/env bash

if ! head -1 "$1" | grep -qE "^(feat|fix|ci|chore|docs|test|refactor)(\(.+?\))?[!]*: .{1,}$"; then
    echo "Not a conventional commit." >&2
    exit 1
fi

if ! head -1 "$1" | grep -qE "^.{1,50}$"; then
    echo "Commit message is too long." >&2
    exit 1
fi
