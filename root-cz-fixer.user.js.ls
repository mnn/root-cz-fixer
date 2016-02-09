``// ==UserScript==
// @name        root-cz-fixer
// @namespace   monnef.tk
// @include     http://www.root.cz/*
// @version     1
// @grant       GM_addStyle
// @grant       GM_getResourceText
// @require     https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.0/jquery.min.js
// @resource    basicCss basic.css
// ==/UserScript==

// included directly b/c GreaseMonkey can't handle it when loading via @require

// prelude-ls - 1.1.2 - http://preludels.com - MIT
// ==========
require=function n(r,t,e){function u(o,a){if(!t[o]){if(!r[o]){var c=typeof require=="function"&&require;if(!a&&c)return c(o,!0);if(i)return i(o,!0);throw new Error("Cannot find module '"+o+"'")}var f=t[o]={exports:{}};r[o][0].call(f.exports,function(n){var t=r[o][1][n];return u(t?t:n)},f,f.exports,n,r,t,e)}return t[o].exports}var i=typeof require=="function"&&require;for(var o=0;o<e.length;o++)u(e[o]);return u}({1:[function(n,r,t){
// Generated by LiveScript 1.4.0
var e,u,i,o,a,c,f=[].slice,l={}.toString;e=s(function(n,r){return n.apply(null,r)});u=function(n){return s(n)};i=s(function(n,r,t){return n(t,r)});o=function(n){return function(r){return function(){return n(r(r)).apply(null,arguments)}}(function(r){return function(){return n(r(r)).apply(null,arguments)}})};a=s(function(n,r,t,e){return n(r(t),r(e))});c=function(n){var r;r={};return function(){var t,e,u;t=f.call(arguments);e=function(){var n,r,e,i=[];for(n=0,e=(r=t).length;n<e;++n){u=r[n];i.push(u+l.call(u).slice(8,-1))}return i}().join("");return r[e]=e in r?r[e]:n.apply(null,t)}};r.exports={curry:u,flip:i,fix:o,apply:e,over:a,memoize:c};function s(n,r){var t,e=function(u){return n.length>1?function(){var i=u?u.concat():[];t=r?t||this:this;return i.push.apply(i,arguments)<n.length&&arguments.length?e.call(t,i):n.apply(t,i)}:n};return e()}},{}],2:[function(n,r,t){
// Generated by LiveScript 1.4.0
var e,u,i,o,a,c,f,l,s,p,h,g,v,m,d,y,j,x,b,M,z,k,w,W,q,B,L,I,A,T,N,O,S,C,P,F,Z,E,U,R,V,_,D,G,H,J,K,Q,X,Y,$,nn,rn,tn,en,un,on,an,cn,fn,ln,sn,pn,hn,gn,vn,mn,dn,yn,jn={}.toString,xn=[].slice;e=bn(function(n,r){var t,e,u;for(t=0,e=r.length;t<e;++t){u=r[t];n(u)}return r});u=bn(function(n,r){var t,e,u,i=[];for(t=0,e=r.length;t<e;++t){u=r[t];i.push(n(u))}return i});i=function(n){var r,t,e,u=[];for(r=0,t=n.length;r<t;++r){e=n[r];if(e){u.push(e)}}return u};o=bn(function(n,r){var t,e,u,i=[];for(t=0,e=r.length;t<e;++t){u=r[t];if(n(u)){i.push(u)}}return i});a=bn(function(n,r){var t,e,u,i=[];for(t=0,e=r.length;t<e;++t){u=r[t];if(!n(u)){i.push(u)}}return i});c=bn(function(n,r){var t,e,u,i,o;t=[];e=[];for(u=0,i=r.length;u<i;++u){o=r[u];(n(o)?t:e).push(o)}return[t,e]});f=bn(function(n,r){var t,e,u;for(t=0,e=r.length;t<e;++t){u=r[t];if(n(u)){return u}}});l=s=function(n){return n[0]};p=function(n){if(!n.length){return}return n.slice(1)};h=function(n){return n[n.length-1]};g=function(n){if(!n.length){return}return n.slice(0,-1)};v=function(n){return!n.length};m=function(n){return n.concat().reverse()};d=function(n){var r,t,e,u;r=[];for(t=0,e=n.length;t<e;++t){u=n[t];if(!Mn(u,r)){r.push(u)}}return r};y=bn(function(n,r){var t,e,u,i,o,a=[];t=[];for(e=0,u=r.length;e<u;++e){i=r[e];o=n(i);if(Mn(o,t)){continue}t.push(o);a.push(i)}return a});j=x=bn(function(n,r,t){var e,u,i;for(e=0,u=t.length;e<u;++e){i=t[e];r=n(r,i)}return r});b=M=bn(function(n,r){return j(n,r[0],r.slice(1))});z=bn(function(n,r,t){var e,u;for(e=t.length-1;e>=0;--e){u=t[e];r=n(u,r)}return r});k=bn(function(n,r){return z(n,r[r.length-1],r.slice(0,-1))});w=bn(function(n,r){var t,e,u;t=[];e=r;while((u=n(e))!=null){t.push(u[0]);e=u[1]}return t});W=function(n){return[].concat.apply([],n)};q=bn(function(n,r){var t;return[].concat.apply([],function(){var e,u,i,o=[];for(e=0,i=(u=r).length;e<i;++e){t=u[e];o.push(n(t))}return o}())});B=function(n){var r;return[].concat.apply([],function(){var t,e,u,i=[];for(t=0,u=(e=n).length;t<u;++t){r=e[t];if(jn.call(r).slice(8,-1)==="Array"){i.push(B(r))}else{i.push(r)}}return i}())};L=function(n){var r,t,e,u,i,o,a,c;r=xn.call(arguments,1);t=[];n:for(e=0,u=n.length;e<u;++e){i=n[e];for(o=0,a=r.length;o<a;++o){c=r[o];if(Mn(i,c)){continue n}}t.push(i)}return t};I=function(n){var r,t,e,u,i,o,a,c;r=xn.call(arguments,1);t=[];n:for(e=0,u=n.length;e<u;++e){i=n[e];for(o=0,a=r.length;o<a;++o){c=r[o];if(!Mn(i,c)){continue n}}t.push(i)}return t};A=function(){var n,r,t,e,u,i,o,a;n=xn.call(arguments);r=[];for(t=0,e=n.length;t<e;++t){u=n[t];for(i=0,o=u.length;i<o;++i){a=u[i];if(!Mn(a,r)){r.push(a)}}}return r};T=bn(function(n,r){var t,e,u,i,o;t={};for(e=0,u=r.length;e<u;++e){i=r[e];o=n(i);if(o in t){t[o]+=1}else{t[o]=1}}return t});N=bn(function(n,r){var t,e,u,i,o;t={};for(e=0,u=r.length;e<u;++e){i=r[e];o=n(i);if(o in t){t[o].push(i)}else{t[o]=[i]}}return t});O=function(n){var r,t,e;for(r=0,t=n.length;r<t;++r){e=n[r];if(!e){return false}}return true};S=function(n){var r,t,e;for(r=0,t=n.length;r<t;++r){e=n[r];if(e){return true}}return false};C=bn(function(n,r){var t,e,u;for(t=0,e=r.length;t<e;++t){u=r[t];if(n(u)){return true}}return false});P=bn(function(n,r){var t,e,u;for(t=0,e=r.length;t<e;++t){u=r[t];if(!n(u)){return false}}return true});F=function(n){return n.concat().sort(function(n,r){if(n>r){return 1}else if(n<r){return-1}else{return 0}})};Z=bn(function(n,r){return r.concat().sort(n)});E=bn(function(n,r){return r.concat().sort(function(r,t){if(n(r)>n(t)){return 1}else if(n(r)<n(t)){return-1}else{return 0}})});U=function(n){var r,t,e,u;r=0;for(t=0,e=n.length;t<e;++t){u=n[t];r+=u}return r};R=function(n){var r,t,e,u;r=1;for(t=0,e=n.length;t<e;++t){u=n[t];r*=u}return r};V=_=function(n){var r,t,e,u;r=0;for(t=0,e=n.length;t<e;++t){u=n[t];r+=u}return r/n.length};D=function(n){var r,t,e,u,i;r=n[0];for(t=0,u=(e=n.slice(1)).length;t<u;++t){i=e[t];if(i>r){r=i}}return r};G=function(n){var r,t,e,u,i;r=n[0];for(t=0,u=(e=n.slice(1)).length;t<u;++t){i=e[t];if(i<r){r=i}}return r};H=bn(function(n,r){var t,e,u,i,o;t=r[0];for(e=0,i=(u=r.slice(1)).length;e<i;++e){o=u[e];if(n(o)>n(t)){t=o}}return t});J=bn(function(n,r){var t,e,u,i,o;t=r[0];for(e=0,i=(u=r.slice(1)).length;e<i;++e){o=u[e];if(n(o)<n(t)){t=o}}return t});K=Q=bn(function(n,r,t){var e,u;e=r;return[r].concat(function(){var r,i,o,a=[];for(r=0,o=(i=t).length;r<o;++r){u=i[r];a.push(e=n(e,u))}return a}())});X=Y=bn(function(n,r){if(!r.length){return}return K(n,r[0],r.slice(1))});$=bn(function(n,r,t){t=t.concat().reverse();return K(n,r,t).reverse()});nn=bn(function(n,r){if(!r.length){return}r=r.concat().reverse();return K(n,r[0],r.slice(1)).reverse()});rn=bn(function(n,r,t){return t.slice(n,r)});tn=bn(function(n,r){if(n<=0){return r.slice(0,0)}else{return r.slice(0,n)}});en=bn(function(n,r){if(n<=0){return r}else{return r.slice(n)}});un=bn(function(n,r){return[tn(n,r),en(n,r)]});on=bn(function(n,r){var t,e;t=r.length;if(!t){return r}e=0;while(e<t&&n(r[e])){e+=1}return r.slice(0,e)});an=bn(function(n,r){var t,e;t=r.length;if(!t){return r}e=0;while(e<t&&n(r[e])){e+=1}return r.slice(e)});cn=bn(function(n,r){return[on(n,r),an(n,r)]});fn=bn(function(n,r){return cn(zn(n,kn),r)});ln=bn(function(n,r){var t,e,u,i,o,a;t=[];e=r.length;for(u=0,i=n.length;u<i;++u){o=u;a=n[u];if(o===e){break}t.push([a,r[o]])}return t});sn=bn(function(n,r,t){var e,u,i,o,a,c;e=[];u=t.length;for(i=0,o=r.length;i<o;++i){a=i;c=r[i];if(a===u){break}e.push(n(c,t[a]))}return e});pn=function(){var n,r,t,e,u,i,o,a,c,f=[];n=xn.call(arguments);r=undefined;for(t=0,e=n.length;t<e;++t){u=n[t];r<=(i=u.length)||(r=i)}for(t=0;t<r;++t){o=t;a=[];for(c=0,e=n.length;c<e;++c){u=n[c];a.push(u[o])}f.push(a)}return f};hn=function(n){var r,t,e,u,i,o,a,c=[];r=xn.call(arguments,1);t=undefined;for(e=0,u=r.length;e<u;++e){i=r[e];t<=(o=i.length)||(t=o)}for(e=0;e<t;++e){a=e;c.push(n.apply(null,f()))}return c;function f(){var n,t,e,u=[];for(n=0,e=(t=r).length;n<e;++n){i=t[n];u.push(i[a])}return u}};gn=bn(function(n,r){if(n<0){return r[r.length+n]}else{return r[n]}});vn=bn(function(n,r){var t,e,u,i;for(t=0,e=r.length;t<e;++t){u=t;i=r[t];if(i===n){return u}}});mn=bn(function(n,r){var t,e,u,i,o=[];for(t=0,e=r.length;t<e;++t){u=t;i=r[t];if(i===n){o.push(u)}}return o});dn=bn(function(n,r){var t,e,u,i;for(t=0,e=r.length;t<e;++t){u=t;i=r[t];if(n(i)){return u}}});yn=bn(function(n,r){var t,e,u,i,o=[];for(t=0,e=r.length;t<e;++t){u=t;i=r[t];if(n(i)){o.push(u)}}return o});r.exports={each:e,map:u,filter:o,compact:i,reject:a,partition:c,find:f,head:l,first:s,tail:p,last:h,initial:g,empty:v,reverse:m,difference:L,intersection:I,union:A,countBy:T,groupBy:N,fold:j,fold1:b,foldl:x,foldl1:M,foldr:z,foldr1:k,unfoldr:w,andList:O,orList:S,any:C,all:P,unique:d,uniqueBy:y,sort:F,sortWith:Z,sortBy:E,sum:U,product:R,mean:V,average:_,concat:W,concatMap:q,flatten:B,maximum:D,minimum:G,maximumBy:H,minimumBy:J,scan:K,scan1:X,scanl:Q,scanl1:Y,scanr:$,scanr1:nn,slice:rn,take:tn,drop:en,splitAt:un,takeWhile:on,dropWhile:an,span:cn,breakList:fn,zip:ln,zipWith:sn,zipAll:pn,zipAllWith:hn,at:gn,elemIndex:vn,elemIndices:mn,findIndex:dn,findIndices:yn};function bn(n,r){var t,e=function(u){return n.length>1?function(){var i=u?u.concat():[];t=r?t||this:this;return i.push.apply(i,arguments)<n.length&&arguments.length?e.call(t,i):n.apply(t,i)}:n};return e()}function Mn(n,r){var t=-1,e=r.length>>>0;while(++t<e)if(n===r[t])return true;return false}function zn(){var n=arguments;return function(){var r,t;t=n[0].apply(this,arguments);for(r=1;r<n.length;++r){t=n[r](t)}return t}}function kn(n){return!n}},{}],3:[function(n,r,t){
// Generated by LiveScript 1.4.0
var e,u,i,o,a,c,f,l,s,p,h,g,v,m,d,y,j,x,b,M,z,k,w,W,q,B,L,I,A,T,N,O;e=S(function(n,r){return n>r?n:r});u=S(function(n,r){return n<r?n:r});i=function(n){return-n};o=Math.abs;a=function(n){if(n<0){return-1}else if(n>0){return 1}else{return 0}};c=S(function(n,r){return~~(n/r)});f=S(function(n,r){return n%r});l=S(function(n,r){return Math.floor(n/r)});s=S(function(n,r){var t;return(n%(t=r)+t)%t});p=function(n){return 1/n};h=Math.PI;g=h*2;v=Math.exp;m=Math.sqrt;d=Math.log;y=S(function(n,r){return Math.pow(n,r)});j=Math.sin;x=Math.tan;b=Math.cos;M=Math.asin;z=Math.acos;k=Math.atan;w=S(function(n,r){return Math.atan2(n,r)});W=function(n){return~~n};q=Math.round;B=Math.ceil;L=Math.floor;I=function(n){return n!==n};A=function(n){return n%2===0};T=function(n){return n%2!==0};N=S(function(n,r){var t;n=Math.abs(n);r=Math.abs(r);while(r!==0){t=n%r;n=r;r=t}return n});O=S(function(n,r){return Math.abs(Math.floor(n/N(n,r)*r))});r.exports={max:e,min:u,negate:i,abs:o,signum:a,quot:c,rem:f,div:l,mod:s,recip:p,pi:h,tau:g,exp:v,sqrt:m,ln:d,pow:y,sin:j,tan:x,cos:b,acos:z,asin:M,atan:k,atan2:w,truncate:W,round:q,ceiling:B,floor:L,isItNaN:I,even:A,odd:T,gcd:N,lcm:O};function S(n,r){var t,e=function(u){return n.length>1?function(){var i=u?u.concat():[];t=r?t||this:this;return i.push.apply(i,arguments)<n.length&&arguments.length?e.call(t,i):n.apply(t,i)}:n};return e()}},{}],4:[function(n,r,t){
// Generated by LiveScript 1.4.0
var e,u,i,o,a,c,f,l,s,p,h,g,v,m;e=function(n){var r,t,e=[];for(r in n){t=n[r];e.push(t)}return e};u=function(n){var r,t=[];for(r in n){t.push(r)}return t};i=function(n){var r,t,e,u={};for(r=0,t=n.length;r<t;++r){e=n[r];u[e[0]]=e[1]}return u};o=function(n){var r,t,e=[];for(r in n){t=n[r];e.push([r,t])}return e};a=d(function(n,r){var t,e,u,i,o={};for(t=0,e=n.length;t<e;++t){u=t;i=n[t];o[i]=r[u]}return o});c=function(n){var r,t,e,u;r=[];t=[];for(e in n){u=n[e];r.push(e);t.push(u)}return[r,t]};f=function(n){var r;for(r in n){return false}return true};l=d(function(n,r){var t,e;for(t in r){e=r[t];n(e)}return r});s=d(function(n,r){var t,e,u={};for(t in r){e=r[t];u[t]=n(e)}return u});p=function(n){var r,t,e={};for(r in n){t=n[r];if(t){e[r]=t}}return e};h=d(function(n,r){var t,e,u={};for(t in r){e=r[t];if(n(e)){u[t]=e}}return u});g=d(function(n,r){var t,e,u={};for(t in r){e=r[t];if(!n(e)){u[t]=e}}return u});v=d(function(n,r){var t,e,u,i;t={};e={};for(u in r){i=r[u];(n(i)?t:e)[u]=i}return[t,e]});m=d(function(n,r){var t,e;for(t in r){e=r[t];if(n(e)){return e}}});r.exports={values:e,keys:u,pairsToObj:i,objToPairs:o,listsToObj:a,objToLists:c,empty:f,each:l,map:s,filter:h,compact:p,reject:g,partition:v,find:m};function d(n,r){var t,e=function(u){return n.length>1?function(){var i=u?u.concat():[];t=r?t||this:this;return i.push.apply(i,arguments)<n.length&&arguments.length?e.call(t,i):n.apply(t,i)}:n};return e()}},{}],5:[function(n,r,t){
// Generated by LiveScript 1.4.0
var e,u,i,o,a,c,f,l,s,p,h,g,v;e=m(function(n,r){return r.split(n)});u=m(function(n,r){return r.join(n)});i=function(n){if(!n.length){return[]}return n.split("\n")};o=function(n){return n.join("\n")};a=function(n){if(!n.length){return[]}return n.split(/[ ]+/)};c=function(n){return n.join(" ")};f=function(n){return n.split("")};l=function(n){return n.join("")};s=function(n){return n.split("").reverse().join("")};p=m(function(n,r){var t,e;t="";for(e=0;e<n;++e){t+=r}return t});h=function(n){return n.charAt(0).toUpperCase()+n.slice(1)};g=function(n){return n.replace(/[-_]+(.)?/g,function(n,r){return(r!=null?r:"").toUpperCase()})};v=function(n){return n.replace(/([^-A-Z])([A-Z]+)/g,function(n,r,t){return r+"-"+(t.length>1?t:t.toLowerCase())}).replace(/^([A-Z]+)/,function(n,r){if(r.length>1){return r+"-"}else{return r.toLowerCase()}})};r.exports={split:e,join:u,lines:i,unlines:o,words:a,unwords:c,chars:f,unchars:l,reverse:s,repeat:p,capitalize:h,camelize:g,dasherize:v};function m(n,r){var t,e=function(u){return n.length>1?function(){var i=u?u.concat():[];t=r?t||this:this;return i.push.apply(i,arguments)<n.length&&arguments.length?e.call(t,i):n.apply(t,i)}:n};return e()}},{}],"prelude-ls":[function(n,r,t){r.exports=n("bcmc1g")},{}],bcmc1g:[function(n,r,t){
// Generated by LiveScript 1.4.0
var e,u,i,o,a,c,f,l,s,p={}.toString;e=n("./Func.js");u=n("./List.js");i=n("./Obj.js");o=n("./Str.js");a=n("./Num.js");c=function(n){return n};f=h(function(n,r){return p.call(r).slice(8,-1)===n});l=h(function(n,r){var t,e=[];for(t=0;t<n;++t){e.push(r)}return e});o.empty=u.empty;o.slice=u.slice;o.take=u.take;o.drop=u.drop;o.splitAt=u.splitAt;o.takeWhile=u.takeWhile;o.dropWhile=u.dropWhile;o.span=u.span;o.breakStr=u.breakList;s={Func:e,List:u,Obj:i,Str:o,Num:a,id:c,isType:f,replicate:l};s.each=u.each;s.map=u.map;s.filter=u.filter;s.compact=u.compact;s.reject=u.reject;s.partition=u.partition;s.find=u.find;s.head=u.head;s.first=u.first;s.tail=u.tail;s.last=u.last;s.initial=u.initial;s.empty=u.empty;s.reverse=u.reverse;s.difference=u.difference;s.intersection=u.intersection;s.union=u.union;s.countBy=u.countBy;s.groupBy=u.groupBy;s.fold=u.fold;s.foldl=u.foldl;s.fold1=u.fold1;s.foldl1=u.foldl1;s.foldr=u.foldr;s.foldr1=u.foldr1;s.unfoldr=u.unfoldr;s.andList=u.andList;s.orList=u.orList;s.any=u.any;s.all=u.all;s.unique=u.unique;s.uniqueBy=u.uniqueBy;s.sort=u.sort;s.sortWith=u.sortWith;s.sortBy=u.sortBy;s.sum=u.sum;s.product=u.product;s.mean=u.mean;s.average=u.average;s.concat=u.concat;s.concatMap=u.concatMap;s.flatten=u.flatten;s.maximum=u.maximum;s.minimum=u.minimum;s.maximumBy=u.maximumBy;s.minimumBy=u.minimumBy;s.scan=u.scan;s.scanl=u.scanl;s.scan1=u.scan1;s.scanl1=u.scanl1;s.scanr=u.scanr;s.scanr1=u.scanr1;s.slice=u.slice;s.take=u.take;s.drop=u.drop;s.splitAt=u.splitAt;s.takeWhile=u.takeWhile;s.dropWhile=u.dropWhile;s.span=u.span;s.breakList=u.breakList;s.zip=u.zip;s.zipWith=u.zipWith;s.zipAll=u.zipAll;s.zipAllWith=u.zipAllWith;s.at=u.at;s.elemIndex=u.elemIndex;s.elemIndices=u.elemIndices;s.findIndex=u.findIndex;s.findIndices=u.findIndices;s.apply=e.apply;s.curry=e.curry;s.flip=e.flip;s.fix=e.fix;s.over=e.over;s.split=o.split;s.join=o.join;s.lines=o.lines;s.unlines=o.unlines;s.words=o.words;s.unwords=o.unwords;s.chars=o.chars;s.unchars=o.unchars;s.repeat=o.repeat;s.capitalize=o.capitalize;s.camelize=o.camelize;s.dasherize=o.dasherize;s.values=i.values;s.keys=i.keys;s.pairsToObj=i.pairsToObj;s.objToPairs=i.objToPairs;s.listsToObj=i.listsToObj;s.objToLists=i.objToLists;s.max=a.max;s.min=a.min;s.negate=a.negate;s.abs=a.abs;s.signum=a.signum;s.quot=a.quot;s.rem=a.rem;s.div=a.div;s.mod=a.mod;s.recip=a.recip;s.pi=a.pi;s.tau=a.tau;s.exp=a.exp;s.sqrt=a.sqrt;s.ln=a.ln;s.pow=a.pow;s.sin=a.sin;s.tan=a.tan;s.cos=a.cos;s.acos=a.acos;s.asin=a.asin;s.atan=a.atan;s.atan2=a.atan2;s.truncate=a.truncate;s.round=a.round;s.ceiling=a.ceiling;s.floor=a.floor;s.isItNaN=a.isItNaN;s.even=a.even;s.odd=a.odd;s.gcd=a.gcd;s.lcm=a.lcm;s.VERSION="1.1.2";r.exports=s;function h(n,r){var t,e=function(u){return n.length>1?function(){var i=u?u.concat():[];t=r?t||this:this;return i.push.apply(i,arguments)<n.length&&arguments.length?e.call(t,i):n.apply(t,i)}:n};return e()}},{"./Func.js":1,"./List.js":2,"./Num.js":3,"./Obj.js":4,"./Str.js":5}]},{},[]);

``
console.info '* root-cz-fixer by monnef *'


/* User configuration part */

config =
  runners:
    fixTiles:
      enabled: true

    reduceFontSizes:
      enabled: true

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
      options: {delayInMs: 50, animate: 1000}
      priority: -100


# END of User configuration part

applyCss = !-> GM_addStyle GM_getResourceText 'basicCss'

invadeMenu = !->
  labelText = 'root.cz Fixer by <b>monnef</b>'
  cssClass = \rootCzFixer
  $ 'ul#nav_hidden' .bind \DOMSubtreeModified, !->
      elem = $ @
      if ! elem .find "li.#cssClass" .length
        $ \<a> .html labelText .addClass \nav__link .attr(\href, \#) .css(\color, \#98c)
        |> $ \<li> .addClass \nav__item .addClass cssClass .append
        |> elem .append

scrollAfterMenuBar = (opts) !->
  <-! setTimeout _, opts.delayInMs
  menuBar = $ \#nav-main
  [y, h] = [menuBar .offset! .top, menuBar .height!]
  t = y + h
  html = $ \html
  if html .scrollTop! < t
    if opts.animate then $ 'html, body' .animate({ scrollTop: t }, opts.animate)
    else html .scrollTop t

fixTiles = !->
  $ '.page-block:not(.page-block--trainings)' .addClass \not-page-block--trainings
  $ '.not-page-block--trainings .article__body.tile' .each !->
    e = $ @
    text = e .find(\.article__text)
    text .clone! .addClass \rcf-tile-stretcher .appendTo e
    text .addClass \rcf-tile-shower

removeJobs = !->
  tryIt = ->
    e = $ \#jobs 
    if e.length then e .hide! 
    else setTimeout tryIt, 500
  tryIt!

removeTrainings = !-> $ \.page-block--trainings .hide!
removePromo = !-> $ \.promo .hide!
removeFooter = !-> $ \.footer .hide!

enableCssTag = (cls) !-> $ \html .addClass "rcf-tag-#cls"

reduceFontSizes = !-> enableCssTag 'fonts'
recolor = !-> enableCssTag 'color'
removeIinfoBar = !-> enableCssTag \iinfobar
moveActualities = !-> enableCssTag \actualities

executeRunners = !~>
  prioritySort = (x, y) -> (x.1.priority ? 0) - (y.1.priority ? 0)
  execute =  ([name, obj]) !~> @[name](obj.options) if obj.enabled
  config.runners |> obj-to-pairs |> sort-with prioritySort |> reverse |> each execute

crash = (msg) !->
  console.error msg
  throw new Error msg

checkSanity = !->
  if !$? then crash '"$" not found'
  if !require? then crash '"require" not found (prelude-ls)'

checkSanity!
{each, obj-to-pairs, sort-with, reverse} = require 'prelude-ls'

<~! $
applyCss!
invadeMenu!
executeRunners!
console.log 'Done!'

