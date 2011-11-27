#sudo yum install -y gcc ruby-devel libxml2 libxml2-devel libxslt libxslt-devel ruby espeak wget rdoc ri
wget http://production.cf.rubygems.org/rubygems/rubygems-1.3.6.tgz
tar xzvf rubygems-1.3.6.tgz
cd rubygems-1.3.6
sudo ruby setup.rb && cd ..
rm -R rubygems-1.3.6 rubygems-1.3.6.tgz
gem install xmpp4r-simple
gem install highline
gem install gmail
gem install mechanize
gem install colorize
