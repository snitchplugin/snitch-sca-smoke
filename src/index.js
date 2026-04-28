// uses lodash but NOT left-pad, moment, uuid, or is-odd
const _ = require("lodash");
const { active } = require("./active-helper");
console.log(_.shuffle([1, 2, 3]));
console.log(active());
