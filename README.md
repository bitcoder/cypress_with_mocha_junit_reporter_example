# Cypress example using customized mocha-junit-reporter

This sample code showcases a new Cypress project using a [customized version of mocha-junit-reporter](https://github.com/bitcoder/mocha-junit-reporter/) that can embed additional metadata/properties on the tests and have that information on the generated JUnit XML report. As of January 2023, the official `mocha-junit-reporter` doesn't have this feature; there's a [PR (Pull Request) for adding it](https://github.com/michaelleeallen/mocha-junit-reporter/pull/153); if want this to be included in the official mocha-junit-reporter please vote on this PR.

```javascript
describe('template spec', () => {
  it('passes', { testCaseMetadata: { test_key: 'CALC-1', requirements: 'CALC-123',  tags: 'ui,core' } }, function() {

    cy.visit('https://example.cypress.io')
  })
})
```

To use this approach on your own project, you need to:

- on `package.json`  add an entry to "devDependencies":  `"mocha-junit-reporter": "bitcoder/mocha-junit-reporter"` ;  this will make your project use the customized mocha-junit-reporter
- `npm install` (to install the customized mocha-junit-reporter package)
- run cypress and specify the custom mocha-junit-reporter:  `./node_modules/cypress/bin/cypress run -s cypress/e2e/dummyspec.cy.js  --reporter mocha-junit-reporter`  

