#!/usr/bin/env lsc -cj
author:
  name: ['Chia-liang Kao']
  email: 'clkao@clkao.org'
name: 'pgrest'
description: 'enable REST in postgres'
version: '0.0.1'
main: \lib/index.js
repository:
  type: 'git'
  url: 'git://github.com/clkao/pgrest.git'
scripts:
  test: 'env PATH="./node_modules/.bin:$PATH" mocha'
  prepublish: """
    env PATH="./node_modules/.bin:$PATH" lsc -cj package.ls &&
    lsc -bc bin &&
    lsc -bc -o lib src
  """
engines: {node: '*'}
dependencies:
  optimist: \0.3.x
  pg: \0.11.x
  resolve: \0.2.x
  plv8x: 'git://github.com/clkao/plv8x.git'
  sequelize: 'git://github.com/clkao/sequelize.git'
devDependencies:
  mocha: \*
  chai: \*
  LiveScript: \1.1.1
optionalDependencies: {}
