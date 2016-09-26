``// ==UserScript==
// @name        root-cz-fixer
// @namespace   monnef.tk
// @match       *://*.root.cz/*
// @version     %%VERSION%%
// @grant       none
// @require     https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.0/jquery.min.js
// ==/UserScript==
(function(){
  function main(){
``

/* Start of user configuration part */

config =
  runners:
    fixTiles:
      enabled: true

    changeFont:
      enabled: true
      options:
        size: \20px
        forumSize: \16px
        # google font (part in "Standard" tab, from ? character to closest ' character):
        gfont: 'family=Ubuntu&subset=latin,latin-ext' # don't forget to also set 'font' field
        font: \Ubuntu

    recolor:
      enabled: true

    removeIinfoBar:
      enabled: true
      priority: 100

    removePromo:
      enabled: true

    removeFooter:
      enabled: true

    removeJobs:
      enabled: true

    removeTrainings:
      enabled: true

    moveActualities:
      enabled: true

    scrollAfterMenuBar:
      enabled: true
      options: {delayInMs: 50, animate: 200}
      priority: -100

    moveForumUp:
      enabled: true

    removeForumAds:
      enabled: true

    fixPageLinks:
      enabled: true

    removeForumFooter:
      enabled: true

    removeSklikAd:
      enabled: true

    removeFloatingArticleInfo: # "social bar"
      enabled: true

    addMascot:
      enabled: true

    favicon:
      enabled: true

    forceLoadPictures:
      enabled: true

    hidePrArticles:
      enabled: true
      options:
        fully: false # don't just lower opacity but wipe them entirely

    hideZdrojak:
      enabled: true

    halveDiscussionTopics:
      enabled: true
      options:
        delay: 50

    removeAdblockNagger:
      enabled: true

/* END of User configuration part */

``
// included directly b/c GreaseMonkey can't handle it when loading via @require

%%LIB_PRELUDE_LS%%

var compiledCss = '%%COMPILED_CSS%%';
``

log = !->
  console.log '[root-cz-fixer] ' + it

log '* root-cz-fixer %%VERSION%% by monnef *'

@$ = @jQuery = jQuery.noConflict(true)

pageInfo =
  isForum: window.location.host.startsWith(\forum)

addStyle = (css) !-> $ '<style type="text/css"></style>' .html(css) .appendTo(\head)

applyCss = !-> /*GM_*/addStyle compiledCss

invadeMenu = !->
  labelText = 'root.cz Fixer by <b>monnef</b>'
  cssClass = \rootCzFixer
  $ 'ul#nav_hidden' .bind \DOMSubtreeModified, !->
      elem = $ @
      if ! elem .find "li.#cssClass" .length
        $ \<a> .html labelText .addClass \nav__link .attr(\href, \#) .css(\color, \#98c)
        |> $ \<li> .addClass \nav__item .addClass cssClass .append
        |> elem .append

# START of runners

@scrollAfterMenuBar = (opts) !->
  <-! setTimeout _, opts.delayInMs
  menuBar = $ \#nav-main
  menuBarOffset = menuBar .offset!
  unless menuBarOffset?
    log 'Failed to get offset of menuBar, skipping'
    return 
  [y, h] = [menuBarOffset .top, menuBar .height!]
  t = y + h
  html = $ \html
  if html .scrollTop! < t
    if opts.animate then $ 'html, body' .animate({ scrollTop: t }, opts.animate)
    else html .scrollTop t

@fixTiles = !->
  $ '.page-block:not(.page-block--trainings)' .addClass \not-page-block--trainings
  $ '.not-page-block--trainings .article__body.tile' .each !->
    e = $ @
    text = e .find(\.article__text)
    text .clone! .addClass \rcf-tile-stretcher .appendTo e
    text .addClass \rcf-tile-shower

@removeJobs = !->
  tryIt = ->
    e = $ \#jobs 
    if e.length then e .hide! 
    else setTimeout tryIt, 500
  tryIt!

enableCssTag = (cls) !-> $ \html .addClass "rcf-tag-#cls"

@removeTrainings = !-> $ \.page-block--trainings .hide!
@removePromo = !-> $ \.promo .hide!
@removeFooter = !-> $ \.footer .hide!
@removeIinfoBar = !-> enableCssTag \iinfobar
@moveActualities = !-> enableCssTag \actualities
@removeForumAds = !-> enableCssTag \forum-ads
@removeForumFooter = !-> enableCssTag \forum-footer
@removeFloatingArticleInfo = !-> enableCssTag \floating-article-info
@removeAdblockNagger = !-> enableCssTag \remove-adblock-nagger

@changeFont = (opts) !->
  enableCssTag \fonts
  e = $ '.rcf-tag-fonts body'
  e .css(\font-size, opts.size)
  if opts.gfont
    $ \head .append "<link href='https://fonts.googleapis.com/css?#{opts.gfont}' rel='stylesheet' type='text/css'>"
  e .css(\font-family, opts.font) if opts.font
  e .css(\font-size, opts.forumSize) if pageInfo.isForum && opts.forumSize

@recolor = !->
  enableCssTag \color
  $ '#bbcBox_message > div > img'
    .attr(\style, '')
    .parent() .find '[alt="|"]'
    .addClass \rcf-bbcbox-divider
  $ '.postarea .quote_button' .closest \.btn-group .css \z-index, 1
  $ '.opinions-comment-actions__item--date' .addClass \opinions-comment-actions__item--visible-on-hover

@fixPageLinks = !->
  enableCssTag \page-links
  removeTextNodes $ \.pagelinks
  $ \.nextlinks .appendTo($ \.display-info)
  $ \.nextlinks_bottom .prependTo ($ \.pagesection .1)
  $ '.display-info ul' .prependTo ($ \.display-info)
  $ '.pagelinks span' .each !->
    elem = $ @
    elem .click !->
      elem .addClass \rcf-page-links-dots-expanded
      removeTextNodes elem

removeTextNodes = (jqElem) !->
  jqElem.contents!.filter(-> @nodeType === 3).remove!

@moveForumUp = !-> $ \.page-block--forum .css(\margin-bottom, \0). css(\margin-top, \7px) .insertAfter($ \#sidebar)

@removeSklikAd = !->
  $ '.article .sklik-box' .parent! .hide!
  $ '.sklik-box' .hide!

@addMascot = !->
  enableCssTag \mascot
  $ '<div>' .addClass \rcf-mascot .prependTo $ \body

@favicon = !->
  data = 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAAABlBMVEUiIiLvTCMCLODFAAAAEElEQVR4AWMY5oARCRAjAAAEpgAlLvy9awAAAABJRU5ErkJggg=='
  $ "link[rel*='icon']" .attr(\href, data)

@forceLoadPictures = !->
  $ 'img.image-lazyloadxt' .each !->
    $ @ |> !-> it.attr \src, it.attr \data-src

@hidePrArticles = (opts) !->
  art = $ '.article__marker:contains("Komerční sdělení")' .closest \.article
  if opts.fully then art.hide!
  else art.addClass \rcf-pr-marker

@hideZdrojak = !-> $ 'a.article__img[href*="//www.zdrojak.cz"]' .closest \.article .hide!

@halveDiscussionTopics = (opts) !->
  enableCssTag \halve-discussion-topics
  work = !->
    cl = \discussion__topics
    ul = $ "ul.#cl" .addClass \rcf-topics-first-half
    ul .wrap($ '<div>' .addClass \rcf-topics)
    newUl = $ '<ul>' .addClass cl .addClass \rcf-topics-second-half .insertAfter ul
    ul .children! .slice(ul.children!.length/2) .appendTo newUl
  work!
  t = { modifying: false }
  $ \#discussionBox .bind \DOMNodeRemoved, !->
    if t.modifying then return
    t.modifying = true
    setTimeout _, opts.delay <| !->
      work!
      t.modifying = false

# END of runners

executeRunners = !~>
  prioritySort = (x, y) -> (x.1.priority ? 0) - (y.1.priority ? 0)
  execute =  ([name, obj]) !~> @[name](obj.options) if obj.enabled
  config.runners |> obj-to-pairs |> sort-with prioritySort |> reverse |> each execute

crash = (msg) !->
  console.error msg
  throw new Error msg

checkSanity = !~>
  if !$? then crash '"$" not found'
  if !require? then crash '"require" not found (prelude-ls)'

checkSanity!
{each, obj-to-pairs, sort-with, reverse} = require 'prelude-ls'

do
  <~! $
  applyCss!
  invadeMenu!
  executeRunners!
  log 'Done!'

``/*end*/
  };
  main.call({});
})();
``