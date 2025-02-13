# ----------------------------------------------------------------------------
#
# Package       : vertx-web-common
# Version       : 3.9.7 
# Source repo   : https://github.com/vert-x3/vertx-web
# Tested on     : UBI 8.3
# Script License: Apache-2.0 License    
# Maintainer    : Varsha Aaynure <Varsha.Aaynure@ibm.com>
#
# Disclaimer: This script has been tested in root mode on given
# ==========  platform using the mentioned version of the package.
#             It may not work as expected with newer versions of the
#             package and/or distribution. In such case, please
#             contact "Maintainer" of this script.
#
# ----------------------------------------------------------------------------

#!/bin/bash

#Variables
PACKAGE_URL=https://github.com/vert-x3/vertx-web.git
PACKAGE_VERSION=3.9.7 

yum update -y 

#Install required files
yum install -y git maven

#Cloning Repo
git clone $PACKAGE_URL
cd vertx-web/vertx-web-common/
git checkout $PACKAGE_VERSION

#Build test package
mvn install

echo "Complete!"

