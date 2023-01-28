describe('template spec', () => {
  //it('passes', () => {
  it('passes', { testCaseMetadata: { test_key: 'CALC-1', requirements: 'CALC-123',  tags: 'ui,core' } }, function() {

    cy.visit('https://example.cypress.io')
  })
})
