#!/bin/sh

# 为 crystal-sqlite3 编译底层 sqlite3 库。 / Compile the sqlite3 library for crystal-sqlite3.
#   源码 / source：https://github.com/sqlite/sqlite.git

# 1、克隆源代码 / clone source code
SOURCE_CLONE_DIR="sqlite3"
COMPILE_VERSION="version-3.34.0"

rm -rf $SOURCE_CLONE_DIR
git clone https://github.com/sqlite/sqlite.git $SOURCE_CLONE_DIR && cd $SOURCE_CLONE_DIR && git checkout $COMPILE_VERSION

# 2、编译 / compile
./configure
make
make install

# 3、完成 / complete
echo "compile done. target dir: $SOURCE_CLONE_DIR, lib dir: $SOURCE_CLONE_DIR/.libs"
