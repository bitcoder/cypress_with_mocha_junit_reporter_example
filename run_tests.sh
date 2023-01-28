#!/bin/bash

#./node_modules/cypress/bin/cypress run -s cypress/integration/sample_spec.js  --reporter junit #--reporter-options xrayMode=true,attachments=true
./node_modules/cypress/bin/cypress run -s cypress/e2e/dummyspec.cy.js  --reporter mocha-junit-reporter
