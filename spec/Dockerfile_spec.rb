#!/usr/bin/env ruby

require 'serverspec'
require 'docker'

describe 'Dockerfile' do
  before(:all) do
    image = Docker::Image.build_from_dir('.')

    set :os, family: :debian
    set :backend, :docker
    set :docker_image, image.id
  end

  def os_version
    command('cat /proc/version').stdout
  end

  it 'installs the right version of Ubuntu' do
    expect(os_version).to match(/Ubuntu.*16/)
  end

  it 'installs required packages' do
    expect(package('ansible')).to be_installed
  end
end
