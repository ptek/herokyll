Herokyll
========

One of the fastest backends for your hakyll generated website ready for publishing on heroku.

Usage:
------

For this you would need a heroku app. You can create it using `heroku create --stack cedar <app name>`

    git clone http://github.com/ptek/herokyll <project name>
    cd <project name>
    git remote add heroku git@heroku.com:<app name>.git
    
Now you can write your hakyll website, but make sure, that the built result ends up in `_site` folder

Commit your changes and push the website to heroku by

    git push heroku master
    
This should be it.

Development:
------------

For the development of this heroku plugin you will need 

* [wai-app-static](http://hackage.haskell.org/package/wai-app-static)
* [warp](http://hackage.haskell.org/package/warp)

To compile the application I used ubuntu linux (10.04)
    
    ghc --make -rtsopts -threaded app.hs

Please do not hesitate to send in a patch or two if you have some ideas or improvements :)

License:
--------

Copyright (C) 2012 Pavlo Kerestey

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
