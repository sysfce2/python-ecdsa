#!/bin/bash
set -e

cosmic-ray init cosmic-ray.toml session.sqlite
cosmic-ray baseline --report session.sqlite
cr-report --show-output session.baseline.sqlite
cosmic-ray exec session.sqlite
cr-report session.sqlite
cr-html session.sqlite > session.html
