#! /usr/bin/make -f
# Copyright (C) 2021 CS GROUP - France. All Rights Reserved.
# SPDX-License-Identifier: BSD-2-Clause
#
TRANSPORTS ?= $(notdir $(abspath $(wildcard */.)))

.PHONY: all
all: test

.PHONY: test
test:
	$(foreach transport,$(TRANSPORTS),./test.py $(transport); )