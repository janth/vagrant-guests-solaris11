source "https://rubygems.org"

# Specify your gem's dependencies in vagrant-guests-solaris11.gemspec
gemspec

group :development do
  # We depend on Vagrant for development, but we don't add it as a
  # gem dependency because we expect to be installed within the
  # Vagrant environment itself using `vagrant plugin`.
  gem "vagrant", :git => "git://github.com/mitchellh/vagrant.git"

  gem "shoulda", ">= 0"
  gem "rdoc"
  gem "bundler", "~> 1.0"
  gem "jeweler", "~> 1.8.7"
  gem "version"
end
