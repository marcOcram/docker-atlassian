FROM atlassian/bamboo-agent-base:6.10.4
USER root
RUN set -x \
	&& apt-get update \
## install your required build agent tools here
	&& apt-get install git -y \
	&& apt-get clean

USER ${BAMBOO_USER}

# the following may be necessary in restricted areas where the git:// protocol is forbidden by firewall
RUN set -x \
	&& git config --global url."https://github.com/".insteadOf git@github.com: \
	&& git config --global url."https://".insteadOf git://

RUN ${BAMBOO_USER_HOME}/bamboo-update-capability.sh "system.git.executable" /usr/bin/git
# add other capabilities to your build agent by appending new lines