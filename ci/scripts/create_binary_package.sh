#!/bin/bash
# Copyright IBM Corp. All Rights Reserved.
#
# SPDX-License-Identifier: Apache-2.0
set -euo pipefail

make "release/${TARGET}"
mkdir "release/${TARGET}/config"
mv sampleconfig/*yaml "release/${TARGET}/config"
cd "release/${TARGET}"
# TODO: Add conditional suffix for RELEASE/NIGHTLY/PUSH
tar -czvf "hyperledger-fabric-${TARGET}-${Date:yyyyMMdd}.tar.gz" bin config
