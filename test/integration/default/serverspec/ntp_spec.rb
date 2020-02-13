require 'serverspec'

set :backend, :exec

RSpec.configure do |c|
  c.before :all do
    c.path = '/bin:/sbin:/usr/sbin:/usr/bin'
  end
end

puts "#" * 100
puts os
puts "#" * 100
puts

describe package('ntp') do
  it { should be_installed }
end

describe service('ntp') do
  it { should be_running }
end
