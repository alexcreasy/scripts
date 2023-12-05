#!/usr/bin/env bash

PW_LENGTH="${PW_LENGTH:-43}"
KEY_ID="${KEY_ID:-5F5F8A5321FAA88292396C0CB149EBCF27192FF0}"
OUTPUT_FILE="${OUTPUT_FILE:-vault_passphrase.gpg}"

gpg --gen-random --armor 1 "$PW_LENGTH" | gpg --armor -r "$KEY_ID" -e -o "$OUTPUT_FILE"
