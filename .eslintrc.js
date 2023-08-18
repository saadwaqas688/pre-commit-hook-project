module.exports = {
  extends: ['next', 'plugin:prettier/recommended'],
  rules: {
    // ...other rules

    // Add the no-unused-vars rule
    'no-unused-vars': [
      'error',
      { vars: 'all', args: 'after-used', ignoreRestSiblings: true },
    ],
    'no-console': 'warn',
  },
};
