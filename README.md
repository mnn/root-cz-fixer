# :octocat: Root.cz Fixer

## :suspect: About

RCF is a user script (written in [LiveScript](http://livescript.net)) used to "re-skin" the [root.cz](http://root.cz) site.
It does recolouring (wine tiles on black background with light yellow text and light blue links) and also rearranges layout a bit (e.g. actualities to the right, forum higher). It also covers the forum (recolouring, fixed pagination and some other tweaks).

Many features can be disabled, e.g. hiding ads or moving forum up. It is done in a settings section in top of the script file.

Priority of this project is the desktop version, but I do try to not break mobile layout.

>  Almost everything is finished. It is stable enough - I am using it almost every day  :partly_sunny:.


## :steam_locomotive: Build

You need to install [Node.js](https://nodejs.org/en/), at least at version 6.
In order to invoke `gulp` command comfortably I also recommend installing gulp package globally - `npm i -g gulp`.

Unpack download archive or clone reopsitory and inside run:

```
npm install
gulp build
```

Compiled file is `root-cz-fixer.user.js`.
Now you can install it via GreaseMonkey (or similar browser addon).


## :notebook: TODO

* change of colours, fonts and layout
 * [x] main page
 * [x] forum
 * [x] blog

* new features
 * [x] mascot
 * [ ] concatenating all comments into article page

* tweaks
 * [x] icon
 * [x] force auto-load of all images on main page
 * [x] compact forum topics list on main page

* content filtering
 * [x] marking/hiding PR articles
 * [x] hiding of zdrojak.cz articles

***

* support
 * [x] write build description in readme

* tools
 * [x] better installation process - inline css and libraries into compiled JS file
 * [ ] distribute just a loader (automatic updates)?


## :tada: Showcase

There is a high chance that these shots are not from current version, don't expect 1:1 match.

### Icon
![](http://i.imgur.com/pDdhNKz.png)

### Forum topics upgrade on main page
![](http://i.imgur.com/haYcghA.png)

### Main page
![](http://i.imgur.com/gq4E76R.png)

### Forum
![](http://i.imgur.com/6hJWNV6.png)
