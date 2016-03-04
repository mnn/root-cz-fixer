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

## Showcase

### Main page
![](http://i.imgur.com/JLFQv1v.png)

### Forum
![](http://i.imgur.com/ktf7dqP.png)