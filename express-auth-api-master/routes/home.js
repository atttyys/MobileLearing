const router = require("express").Router();
const verify = require("./verifyToken");
router.get("/", verify, (req, res) => {
  //token ถูกต้อง
  res.send(req.user);
});
module.exports = router;
