#!/bin/bash

dxflib=dxflib-3.17.0

wget http://www.qcad.org/archives/dxflib/${dxflib}-src.zip
unzip ${dxflib}-src.zip
make build_dxflib DXFLIB_SRCDIR=${dxflib}-src/src/
