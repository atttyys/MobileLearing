const express = require('express');
const app = express();
const cors = require('cors')
const passport = require('passport');
const mongoose = require('mongoose');
var config = require('./config/config');

app.use(cors());

// Use the passport package in our application
app.use(passport.initialize());
var passportMiddleware = require('./middleware/passport');
passport.use(passportMiddleware);
//Import Routes
const authRoute = require('./routes/auth');
const homeRoute = require('./routes/home');
//Connect to DB
mongoose.connect(config.db,
{ useNewUrlParser: true, useUnifiedTopology: true },
() => console.log('Connected to db!')
);
app.use(express.json());
//Middleware
app.use('/api/user', authRoute);
app.use('/api/home', homeRoute);
app.listen(3000, () => console.log('Server up and running'));