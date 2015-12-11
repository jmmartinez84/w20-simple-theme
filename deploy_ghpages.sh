#!/bin/sh
#
# Copyright (c) 2013-2015 by The SeedStack authors. All rights reserved.
#
# This file is part of SeedStack, An enterprise-oriented full development stack.
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.
#


(
	mkdir build
    cp -r bower_components build/
    cp -r w20-simple-theme-demo build/
    cp index.html build/
    cp w20.app.json build/
    cd build
    git init
	git config user.name "Travis-CI"
	git config user.email "travis@seedstack.org"
	git add .
	git add bower_components -f
	git commit -m "Built for gh-pages of http://seedstack.github.io/w20-simple-theme"
	git push --force --quiet "https://${GITHUB_TOKEN}@github.com/seedstack/w20-simple-theme" master:gh-pages >/dev/null 2>&1
)