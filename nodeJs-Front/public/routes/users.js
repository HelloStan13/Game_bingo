const express = require('express');
const router = express.Router();
const passport = require('passport');
const LocalStrategy = require('passport-local').Strategy;


const User = require('../models/user');

// Register
router.get('/register', (req, res) => {
   res.render('register');
});

// Login
router.get('/login', (req, res) => {
   res.render('login');
});

// Register User
router.post('/register', (req, res) => {
   const name = req.body.name;
   const email = req.body.email;
   const username = req.body.username;
   var password = req.body.password;
   var password = req.body.password2;

   console.log(name);
   console.log(req.body);
   //validation
   req.checkBody('name', 'Name is required').notEmpty();
   req.checkBody('email', 'Email is required').notEmpty();
   req.checkBody('email', 'Email is not valid').isEmail();
   req.checkBody('username', 'Username is required').notEmpty();
   req.checkBody('password', 'Password is required').notEmpty();
   req.checkBody('password2', 'Passwords do not match').equals(req.body.password);

   var errors = req.validationErrors();

   if(errors) {
      res.render('register', {
         errors:errors
      });
   } else {
      const newUser = new User({
         name,
         email,
         username,
         password
      });
      User.createUser(newUser, (err, user) => {
         if(err) throw err;
         console.log(user);
      });
      req.flash('success_msg', 'You are registered and can now login');
      res.redirect('/users/login');
   }
});

passport.use(new LocalStrategy(
  (username, password, done) => {
    User.getUserByUsername(username, (err, user) => {
      if (err) throw err;
      if (!user) {
        return done(null, false, { message: 'Unknown User' });
      }
      // eslint-disable-next-line no-shadow
      User.comparePassword(password, user.password, (err, isMatch) => {
        if(err) throw err;
        if(isMatch) {
          return done(null, user);
        } else {
          return done(null, false, { message: 'Invalid password' });
        }
      });
    });
  }));

  passport.serializeUser((user, done) => {
    done(null, user.id);
  });

  passport.deserializeUser((id, done) => {
    User.getUserbyId(id, (err, user) => {
      done(err, user);
    });
  });

router.post('/login',
passport.authenticate('local', { successRedirect:'/', failureRedirect:'/users/login', failureFlash: true }),
  (req, res) => {
    res.redirect('/');
  });

router.get('/logout', (req, res) => {
   req.logout();
   req.flash('sucess_msg', 'You are logged out');
   res.redirect('/users/login');
});

// game
router.get('/gameSala', (req, res) => {
  res.render('gameSala');
});

module.exports = router;
