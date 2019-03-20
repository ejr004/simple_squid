
FROM cern/cc7-base

MAINTAINER Mayank Sharma (mayank.sharma@cern.ch)
########################
#   Misc packages
########################

#install sudo, wget and openssh-clients
RUN yum install -y \
	sudo \
	wget \
    openssh-clients \
########################
#
########################
# install yum-priorities
RUN yum install -y \
	yum-priorities

#########################
#     Configuration
#########################

RUN yum -y install  \
	http://ngtech.co.il/repo/centos/7/squid-repo-1-1.el7.centos.noarch.rpm \
	squid

# Mount Volume for configuration parameters
VOLUME /config