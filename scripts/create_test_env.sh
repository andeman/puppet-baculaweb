#!/bin/sh
pdk bundle exec rake 'litmus:provision_list[default]'
pdk bundle exec rake litmus:install_agent
pdk bundle exec rake litmus:install_module