<center>
[![Instant Skeleton](https://raw.githubusercontent.com/dimensionsoftware/instant-skeleton/gh-pages/assets/skull_keys.png)](https://dimensionsoftware.com)

Instant-Skeleton
================
[![Gitter](https://badges.gitter.im/Join Chat.svg)](https://gitter.im/DimensionSoftware/instant-skeleton?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge) [![Dimension Software](http://img.shields.io/badge/HTML-5-brightgreen.svg)](https://dimensionsoftware.com)
</center>

Build Bigger with Less
----------------------
Best _opinionated_ realtime framework to lift heavy functionality lightening quick with Node.JS

**PROTIP** [Be sure to peruse our fancy documentation](http://dimensionsoftware.github.io/instant-skeleton)

## Quick Start

    $ git clone git@github.com:DimensionSoftware/instant-skeleton.git
    $ cd instant-skeleton
    $ npm install && npm test && npm start

## Overview

Building your SEO-friendly, realtime application is simple: add **Pages** <small>(declarative, isomorphic bits of React)</small> and **Services** <small>(RESTful & Realtime API endpoints)</small>.  To get started instantly, this skeleton implements a basic TODO application <small>(COMING SOON- the _"hello world"_ of realtime frameworks)</small> as a starting example.

* Add a new **Page**

        $ vim shared/routes.ls
        $ vim server/pages.ls

* Add a new **Service**

        $ vim server/services.ls

* Enable and Disable **Features** <small>with zero impact for unused features</small>

        $ vim shared/features.ls

## Environment Variables
* `NODE_ENV`  -- development, production or test
* `NODE_PORT` -- port to listen on

## References

Backend Weapons

* **LiveScript** -- https://livescript.net
    * **Prelude.ls** -- http://preludels.com
* **Gulp** -- http://gulpjs.com
    * **LiveReload** -- https://github.com/vohof/gulp-livereload
    * **NodeMon** --  https://github.com/JacksonGariety/gulp-nodemon
    * **WebPack** -- https://github.com/shama/gulp-webpack
* **Koa** -- http://koajs.com
    * **GeoIP Lite** -- https://github.com/bluesmoon/node-geoip
    * **Helmet** -- https://github.com/venables/koa-helmet
    * **Level** -- https://github.com/purposeindustries/koa-level
    * **Rate Limit** -- https://github.com/tunnckoCore/koa-better-ratelimit
    * **Static Cache** -- https://github.com/koajs/static-cache
* **PM2** -- https://github.com/Unitech/pm2

Shared Weapons

* **React** -- http://facebook.github.io/react/docs/getting-started.html
    * **React Router Component** -- https://github.com/STRML/react-router-component
* **Primus** -- https://github.com/primus/primus
    * **Engine.io** -- https://github.com/Automattic/engine.io
    * **Substream** -- https://github.com/primus/substream

Frontend Weapons

* **Famo.us** -- https://famo.us

## Principles

How much does your stack weigh?  Keeping Instant Skeleton light as possible means true agility and speed.  This no-compromise stack is fast, functional and streaming in realtime.

With technologies like [Famo.us](https://famou.us) and a savvy, cutting-edge HTML5 core, Instant Skeleton provides true
first-class mobile experiencess.  Got realtime physics at 60fps?  Real offline?  High-speed, secure websockets?  We do.

From nothing, you have potential to build greatness; only-- with Instant Skeleton, you start way ahead with the best
curated tools for lifting heavy, realtime functionality into the browser with insane productivity.  Unlock the
potential of HTML5 and Node.JS.  [Start hacking now!](https://github.com/DimensionSoftware/instant-skeleton/fork)

## FAQ

1. How is this different from Meteor.JS?

       + We &hearts; [NPM](http://npmjs.org).
       + Instant Skeleton is tiny, fast &amp; secure.
       + We are functional [LiveScript](http://livescript.net): write less code with fewer bugs.
       + Isomorphic Web Components leveraging [React](http://facebook.github.io/react/docs/getting-started.html) for data-binding.


## Contributors

[**Keith Hoerling**](https://github.com/khoerling)

[**John Beppu**](https://github.com/beppu)

[**D. Seleno**](https://github.com/onelesd)

[**Mark Huge**](https://github.com/markhuge)


[According to GitHub](https://github.com/DimensionSoftware/instant-skeleton/graphs/contributors) . [Become a Contributor](https://github.com/DimensionSoftware/instant-skeleton/fork) .  [Pull request friendly!](https://github.com/DimensionSoftware/instant-skeleton/fork)

## TODO

**We appreciate your enthusiasm; this code is not yet ready for prime-time!**

* Famo.us+react
* Selenium tests
* Feathers-like services
* Beautiful documentation and better literate .ls
* Coverage working with LiveScript
* Implement TODO example app inside skeleton
* Require client-side vendor/ (moment, accounting, etc...)
* Bootstrap data-layer -- bookshelf or https://www.youtube.com/watch?v=41oDDTRWjIQ

&nbsp;

<center>
<small>
[![Fine Software by Dimension](https://dimensionsoftware.com/images/dimension_full_logo.png)](https://dimensionsoftware.com)
</small>
</center>
