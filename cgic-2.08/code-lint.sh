#!/bin/sh
TOP_DIR=$(dirname $0)

find ${TOP_DIR} -iname "*.[ch]" | xargs clang-format -i