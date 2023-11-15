#!/bin/sh

sudo apt install -y equivs

cat << EOF > libappindicator1
Section: misc
Priority: optional
Standards-Version: 3.9.2

Package: libappindicator1
Version: 20211026.0
Description: dummy package of libappindicator1
  .
EOF

equivs-build libappindicator1


cat << EOF > libgconf-2-4
Section: misc
Priority: optional
Standards-Version: 3.9.2

Package: libgconf-2-4
Version: 2.4
Description: dummy package of libgconf-2-4
  .
EOF

equivs-build libgconf-2-4

sudo dpkg -i libgconf-2-4_2.4_all.deb libappindicator1_20211026.0_all.deb
