#sudo apt-get install libopenssl-ruby libreadline-ruby1.8 rdoc ri ruby ruby1.8-dev ruby1.8 ri1.8 rdoc1.8 irb1.8 libruby1.8 libxslt-dev libxml2-dev espeak
wget http://production.cf.rubygems.org/rubygems/rubygems-1.3.6.tgz
tar xzvf rubygems-1.3.6.tgz
cd rubygems-1.3.6
sudo ruby setup.rb
rm -R rubygems-1.3.6 rubygems-1.3.6.tgz
gem1.8 install xmpp4r-simple
gem1.8 install highline
gem1.8 install gmail
gem1.8 install mechanize
gem1.8 install colorize

