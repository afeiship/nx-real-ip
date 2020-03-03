# nx-real-ip
> Get real ip address.

## installation
```rb
# from gem
gem 'nx-real-ip'
# from git
gem 'nx-real-ip', git: 'git@github.com:afeiship/nx-real-ip.git'
```

## usage
```rb
Nx::RealIp::get
Nx::RealIp::get(proxy:'http://120.234.63.196:3128')

# 220.11.10.123
```

## build/publish
```shell
# build
gem build nx-real-ip.gemspec

# publish
gem push nx-real-ip-0.1.0.gem
```
