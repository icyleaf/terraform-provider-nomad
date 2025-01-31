#!/bin/bash
# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0


[ -e /tmp/consul-test.pid ] && echo "Stopping consul" && kill $(cat /tmp/consul-test.pid)
rm -f /tmp/consul-test.pid
[ -e /tmp/vault-test.pid ] && echo "Stopping vault" && kill $(cat /tmp/vault-test.pid)
rm -f /tmp/vault-test.pid
[ -e /tmp/nomad-test.pid ] && echo "Stopping nomad" && kill $(cat /tmp/nomad-test.pid)
rm -f /tmp/nomad-test.pid
rm -f /tmp/nomad-test.token
