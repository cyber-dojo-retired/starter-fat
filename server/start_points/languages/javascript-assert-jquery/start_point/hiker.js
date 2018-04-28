'use strict';

const jqa = require('./jQueryAdapter.js');

function answer() {
  const $ = jqa.file('hiker.html');
  return $('answer').text();
}

module.exports = answer;
