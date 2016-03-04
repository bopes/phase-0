// Psuedocode:
// Gametype - boxing game. User (me) boxes against computer (michael).
// User can select from two attacks: jab, swing
// Each does randomized amount of damage to michael's health.
// After each attack, Michael retaliates with one of two attacks (jab back, swings back). The attacks do randomized damage to user's health. Which attack michael uses is random.
// If user's attack reduces michael's health to zero or below, display victory message and end game.
// If michael's attack reduces users's health to zero or below, display losing message and end game.


// Initial Solution
/*

function begin() {
  console.log("Welcome to Michael Tygen's Knock Off!\nYou are standing in the middle of ring.\nThe round begins! Michael approaches you menacingly...");
  me.choose();
}

var me = {

  health: 100,

  choose: function() {
    switch(prompt("What do you do next? (Choose \"jab\" or \"swing\")")) {
      case "jab":
        me.jab();
        break;
      case "swing":
        me.swing();
        break;
      default:
        console.log("Not an option. Choose \"jab\" or \"swing\".")
        me.choose();
    };
  },

  jab: function() {
    var damage = Math.floor((Math.random()*5)+15);
    michael.health -= damage;
    console.log("You jabbed at Michael! You did " + damage + " damage!");
    michael.healthCheck();
  },

  swing: function() {
    var damage = Math.floor((Math.random()*15)+10);
    michael.health -= damage;
    console.log("You swang wildly at Michael! You did " + damage + " damage!");
    michael.healthCheck();
  },

  healthCheck: function() {
    if (me.health <= 0) {
      console.log("You got knocked out! You lose!");
    } else {
      console.log("You have " + me.health + " health remaining!");
      me.choose();
    }
  },

};


var michael = {

  health: 75,

  jabBack: function() {
    damage = Math.floor( (Math.random()*5)+15 );
    me.health -= damage;
    console.log("Michael jabbed back! He did " + damage + " damage!");
    me.healthCheck();
  },

  swingBack: function() {
    damage = Math.floor( (Math.random()*15)+10 );
    me.health -= damage;
    console.log("Michael swung back! He did " + damage + " damage!");
    me.healthCheck();
  },

  healthCheck: function() {
    if (michael.health <= 0) {
      console.log("You knocked Michael out! You win!");
    } else {
      console.log("Michael has " + michael.health + " health remaining!");
      michael.retaliate();
    }
  },

  retaliate: function() {
    var choice = Math.random();
    if ( choice <= 0.5 ) {
      michael.jabBack();
    } else {
      michael.swingBack();
    }
  }

};

begin();
*/



// Refactored Solution

function begin() {
  console.log("Welcome to Michael Tygen's Knock Off!\nYou are standing in the middle of ring.\nThe round begins! Michael approaches you menacingly...");
  me.choose();
}

var me = {

  health: 100,

  choose: function() {
    switch(prompt("What do you do next? (Choose \"jab\" or \"swing\")")) {
      case "jab":
        me.attack("jabbed",10,15);
        break;
      case "swing":
        me.attack("swung wildly",40,0);
        break;
      default:
        me.attack("flailed like a drunken child",5,0)
        break;
    };
  },

  healthCheck: function() {
    if (me.health <= 0) {
      console.log("You got knocked out! You lose!");
    } else {
      console.log("You have " + me.health + " health remaining!");
      me.choose();
    }
  },

  attack: function(verb, rand, base) {
    damage = Math.floor( (Math.random()*rand) + base );
    michael.health -= damage;
    console.log("You " + verb + "! You did " + damage + " damage!");
    michael.healthCheck();
  },

};


var michael = {

  health: 75,

  healthCheck: function() {
    if (michael.health <= 0) {
      console.log("You knocked Michael out! You win!");
    } else {
      console.log("Michael has " + michael.health + " health remaining!");
      michael.retaliate();
    }
  },

  retaliate: function() {
    var choice = Math.random();
    if ( choice <= 0.5 ) {
      michael.attack("jabbed back",10,15);
    } else {
      michael.attack("swung back", 40, 0);
    }
  },

  attack: function(verb, rand, base) {
    damage = Math.floor( (Math.random()*rand) + base );
    me.health -= damage;
    console.log("Michael " + verb + "! He did " + damage + " damage!");
    me.healthCheck();
  },

};

begin();



// Reflection

/*
What was the most difficult part of this challenge?

The most diffcult part of the challenge was coming up with an idea for the game. I didn't want to just copy from the examples, so I had to think of something new. I ended up ripping off Mike Tyson's Punch Out and having two boxers hitting each other. It's not a very fun game, but I like how it works.



What did you learn about creating objects and functions that interact with one another?

I learned a lot about how to use functions to call other functions. It was cool how I could creat a chain that keeps going until it encounters a break.



Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?

I didn't find any additional methods to use. Most of the methods I wanted to use I found for my initial solution, including Math.floor()/Math.random() and .prompt.



How can you access and manipulate properties of objects?

You can access object properties with dot notation (me.health) or with literal notation (me["health"]).

*/