
[![Build Status](https://travis-ci.org/cyber-dojo/start-points-custom.svg?branch=master)](https://travis-ci.org/cyber-dojo/start-points-custom)

<img src="https://raw.githubusercontent.com/cyber-dojo/nginx/master/images/home_page_logo.png" alt="cyber-dojo yin/yang logo" width="50px" height="50px"/>

The git repo for [cyber-dojo's](https://github.com/cyber-dojo/web)
setup <em>custom</em> choices.

<img src="https://github.com/cyber-dojo/start-points-custom/blob/master/setup_custom_practice.png" width="700px"/>

You can specify and use an alternative custom start-point.

Assuming the files in the specified repo have the
[correct format](http://blog.cyber-dojo.org/2016/08/creating-your-own-start-points.html):

```
$ ./cyber-dojo start-point create --help
$ ./cyber-dojo start-point create seb --git=https://github.com/seb/start-points-custom.git
$ ./cyber-dojo up --custom=seb
```
