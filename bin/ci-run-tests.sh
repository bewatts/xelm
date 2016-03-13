#!/bin/bash

function ci_enable { sed -i '/CI_ENABLE/ s/^[- ]*//' $1; } 
function ci_disable { sed -i '/CI_DISABLE/ s/^/-- /' $1; } 

for test_file in */*Test.elm; do ci_enable $test_file; ci_disable $test_file; done
node_modules/.bin/elm-test TestRunner.elm
