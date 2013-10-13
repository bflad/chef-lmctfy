# chef-lmctfy [![Build Status](https://secure.travis-ci.org/bflad/chef-lmctfy.png?branch=master)](http://travis-ci.org/bflad/chef-lmctfy)

## Description

Installs/Configures [Google's Let Me Contain That For You](https://github.com/google/lmctfy). Please see [COMPATIBILITY.md](COMPATIBILITY.md) for more information about LMCTFY versions that are tested and supported by cookbook versions along with LWRP features.

## Requirements

### Platforms

* Ubuntu 12.10, 13.04, 13.10

#### Upcoming Platforms

* CentOS 6 (requires newer g++, CentOS devtoolset-1.1 likely in another cookbook)
* Fedora 17+ (should work, requires testing)
* RHEL 6 (requires newer g++, Red Hat devtoolset-1.1 likely in another cookbook)
* Ubuntu 12.04 (requires newer g++, ubuntu-toolchain-r likely in another cookbook)

### Cookbooks

[Opscode Cookbooks](https://github.com/opscode-cookbooks/)

* [build-essential](https://github.com/opscode-cookbooks/build-essential)
* [git](https://github.com/opscode-cookbooks/git)

Third-Party Cookbooks

* [control_groups](https://github.com/hw-cookbooks/control_groups)
* [gflags](https://github.com/bflad/chef-gflags)
* [protobuf](https://github.com/bflad/chef-protobuf)
* [re2](https://github.com/bflad/chef-re2)

## Attributes

These attributes are under the `node['lmctfy']` namespace.

Attribute | Description | Type | Default
----------|-------------|------|--------
install_dir | Installation directory for LMCTFY | String | auto-detected (see attributes/default.rb)
install_type | Installation type for LMCTFY ("source" is only available currently) | String | "source"

### Source Attributes

These attributes are under the `node['lmctfy']['source']` namespace.

Attribute | Description | Type | Default
----------|-------------|------|--------
ref | Repository reference for LMCTFY source | String | "master"
url | Repository URL for LMTCFY source | String | "https://github.com/google/lmctfy.git"

## Recipes

* `recipe[lmctfy]` Installs/Configures lmctfy
* `recipe[lmctfy::source]` Installs lmctfy via source
* `recipe[lmctfy::source_cli]` Installs lmctfy CLI via source
* `recipe[lmctfy::source_cpp]` Installs lmctfy C++ via source

## Usage

### Default Installation

* Add `recipe[lmctfy]` to your node's run list

## Testing and Development

### Vagrant

Here's how you can quickly get testing or developing against the cookbook thanks to [Vagrant](http://vagrantup.com/) and [Berkshelf](http://berkshelf.com/).

    vagrant plugin install vagrant-berkshelf
    vagrant plugin install vagrant-cachier
    vagrant plugin install vagrant-omnibus
    git clone git://github.com/bflad/chef-docker.git
    cd chef-docker
    vagrant up BOX # BOX being ubuntu1204, ubuntu1210, or ubuntu1304

You can then SSH into the running VM using the `vagrant ssh BOX` command.

The VM can easily be stopped and deleted with the `vagrant destroy` command. Please see the official [Vagrant documentation](http://docs.vagrantup.com/v2/cli/index.html) for a more in depth explanation of available commands.

### Test Kitchen

Please see documentation in: [TESTING.md](TESTING.md)

## Contributing

Please use standard Github issues/pull requests and if possible, in combination with testing on the Vagrant boxes or Test Kitchen suite.

## Maintainers

* Brian Flad (<bflad417@gmail.com>)
