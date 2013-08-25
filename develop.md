### Development

To work on the `vagrant-guests-solaris11` plugin, clone [this repository
out](https://github.com/janth/vagrant-guests-solaris11), and use
[Bundler](http://gembundler.com) to get the dependencies:

```bash
bundle
```

Once you have the dependencies, verify the unit tests pass with `rake`:

```bash
bundle exec rake 
```

Other rake commands:
```bash
bundle exec rake --tasks
bundle exec rake --trace build
bundle exec rake --trace install
bundle exec rake --trace release
```


If those pass, you're ready to start developing the plugin. You can test
the plugin without installing it into your Vagrant environment by just
creating a `Vagrantfile` in the top level of this directory (it is gitignored)
and add the following line to your `Vagrantfile` 
```ruby
Vagrant.require_plugin "vagrant-guests-solaris11"
```
Use bundler to execute Vagrant:
```bash
bundle exec vagrant up <vagranthost>
```
### Cleanup

```bash
bundle exec rake clobber
```

### Similar projects

* [vagrant-guests-openbsd](https://github.com/nabeken/vagrant-guests-openbsd.git)

### Fork

<!--
https://github.com/jamesflorentino/fork-ribbons/blob/master/README.md
https://github.com/aral/fork-me-on-github-retina-ribbons/blob/master/readme.md
https://github.com/simonwhitaker/github-fork-ribbon-css
https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet
-->

   <a href="https://github.com/janth/vagrant-guests-solarsi11/"><img style="position: absolute; top: 0; right: 0; border: 0;" src="https://s3.amazonaws.com/github/ribbons/forkme_right_green_007200.png" alt="Fork me on GitHub"></a>
   <a href="https://github.com/janth/vagrant-guests-solaris11"><img style="position: absolute; top: 0; right: 30px; border: 0;" src="https://github.com/jamesflorentino/fork-ribbons/raw/master/ribbons/green-white.png" alt="Fork me on GitHub"></a>

   <!-- BOTTOM RIGHT RIBBON: START COPYING HERE -->
   <div class="github-fork-ribbon-wrapper right-bottom">
   <div class="github-fork-ribbon">
   <a href="https://github.com/simonwhitaker/github-fork-ribbon-css">Fork me on GitHub</a>
   </div>
   </div>
