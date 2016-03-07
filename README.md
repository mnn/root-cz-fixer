# Root.cz Fixer

## About

RCF is a user script used to "re-skin" the [root.cz](http://root.cz) site.
It does recolouring (wine tiles on black background with light yellow text and light blue links) and also rearranges layout a bit (e.g. actualities to the right, forum higher). It also covers the forum (recolouring, fixed pagination and some other tweaks).

Many features can be disabled, e.g. hiding ads or moving forum up. It is done in a settings section in top of the script file.

Priority of this project is the desktop version, but I do try to not break mobile layout.

> **Warning**: This is work in progress, not everything is finished.


## Build

*TODO*: Description and better way of deployment.

```
npm install
gulp build
```
Install `root-cz-fixer.user.js` via GreaseMonkey and copy `basic.css` to directory with GM script (e.g. `your_firefox_profile/gm_scripts/root-cz-fixer/`).


## TODO

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
* content filtering
 * [x] marking/hiding PR articles
 * [x] hiding of zdrojak.cz articles

* support
 * [ ] write build description in readme
* tools
 * [ ] better installation process - inline css into compiled JS file?
 * [ ] distribute just a loader (automatic updates)?


## Showcase

### Icon
![](http://i.imgur.com/pDdhNKz.png)

### Main page
![](http://i.imgur.com/gq4E76R.png)

### Forum
![](http://i.imgur.com/6hJWNV6.png)
