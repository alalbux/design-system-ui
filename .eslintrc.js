module.exports = {
    extends: ["plugin:prettier/recommended"],
    parser: "@babel/eslint-parser",
    env: {
      node: true,
      jest: true
    },
    parserOptions: {
      requireConfigFile: false,
      sourceType: "module",
      ecmaVersion: 8
    }
  };
  