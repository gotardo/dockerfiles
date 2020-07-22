#!/bin/bash

apt-get update
apt autoremove -y
apt-get install -y autoconf git gcc libc-dev make pkg-config unzip wget vim zip

pecl install xdebug
echo zend_extension=xdebug.so > /usr/local/etc/php/conf.d/xdebug.ini
pecl install zip

apt-get update && apt-get install -y zlib1g-dev libicu-dev g++
docker-php-ext-configure intl
docker-php-ext-install intl

# Install composer.
wget https://raw.githubusercontent.com/composer/getcomposer.org/76a7060ccb93902cd7576b67264ad91c8a2700e2/web/installer -O - -q | php -- --quiet
mv composer.phar /usr/local/bin/composer
chmod +x /usr/local/bin/composer

# Install Prestissimo to make composer fast again.
composer global require hirak/prestissimo

php -v

# Success message and farewell.
cat << "EOF"


               ,'``.._   ,'``.        Build finished.
              :,--._:)\,:,._,.:       All Glory to
              :`--,''   :`...';\      the HYPNO TOAD!
               `,'       `---'  `.
               /                 :
              /                   \
            ,'                     :\.___,-.
           `...,---'``````-..._    |:       \
             (                 )   ;:    )   \  _,-.
              `.              (   //          `'    \
               :               `.//  )      )     , ;
             ,-|`.            _,'/       )    ) ,' ,'
            (  :`.`-..____..=:.-':     .     _,' ,'
             `,'\ ``--....-)='    `._,  \  ,') _ '``._
          _.-/ _ `.       (_)      /     )' ; / \ \`-.'
         `--(   `-:`.     `' ___..'  _,-'   |/   `.)
             `-. `.`.``-----``--,  .'
               |/`.\`'        ,','); SSt
                   `         (/  (/

EOF

echo "Build Success!"
