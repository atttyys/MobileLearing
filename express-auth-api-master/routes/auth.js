const router = require("express").Router();
const User = require("../models/user");
const passport = require("passport");
const jwt = require("jsonwebtoken");
const { registerValidation, loginValidation } = require("../validation");
var config = require("../config/config");

function createToken(user) {
  return jwt.sign(
    { id: user.id, name: user.name, email: user.email },
    config.jwtSecret,
    {
      expiresIn: 200, // 86400 expires in 24 hours
    }
  );
}

router.post("/register", async (req, res) => {
  //ตรวจข้อมูล
  const result = registerValidation(req.body);
  if (result.error != undefined)
    return res.status(400).send(result.error.details[0].message);
  //หาอีเมลซํ้า
  const emialExist = await User.findOne({ email: req.body.email });
  if (emialExist) return res.status(400).send("E-mail already exists!");
  const user = new User({
    name: req.body.name,
    email: req.body.email,
    password: req.body.password,
  });
  try {
    const savedUser = await user.save();
    //แสดงข้อมูลทั้งหมดของ user
    //res.send(savedUser);
    //แสดง id ที่ได้หลังจากบันทึกสำเร็จ
    res.send({ user: user._id });
  } catch (err) {
    res.status(400).send(err);
  }
});

router.post("/login", async (req, res) => {
  //ตรวจข้อมูล
  const result = loginValidation(req.body);
  if (result.error != undefined)
    return res.status(400).send(result.error.details[0].message);
  //หาอีเมล
  const user = await User.findOne({ email: req.body.email });
  if (!user) return res.status(400).send("E-mail is not found !");
  //ตรวจรหัสผ่าน
  user.comparePassword(req.body.password, (err, isMatch) => {
    if (isMatch && !err) {
      return res.status(200).json({
        token: createToken(user),
      });
    } else {
      return res
        .status(400)
        .json({ msg: "The email and password don't match." });
    }
  });
});

router.get(
  "/special",
  passport.authenticate("jwt", { session: false }),
  (req, res) => {
    return res.json({
      msg: `Hey ${req.user.name}, This message come from special route API ❤ `,
    });
  }
);
module.exports = router;
