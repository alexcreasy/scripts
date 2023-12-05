#!/usr/bin/env bash

KEY_FILE="${KEY_FILE:-vault_passphrase.gpg}"

gpg -q --batch --use-agent --decrypt "$KEY_FILE"
