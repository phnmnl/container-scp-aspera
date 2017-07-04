FROM ubuntu:16.04

MAINTAINER PhenoMeNal-H2020 Project ( phenomenal-h2020-users@googlegroups.com )

LABEL software.version=3.5.4.102989-linux-64
LABEL version=0.2
LABEL software="MetaboLights Downloader"
LABEL description="Facility for downloading a MetaboLights study"
LABEL website="http://www.ebi.ac.uk/metabolights/"
LABEL documentation="https://github.com/phnmnl/container-scp-aspera/blob/master/README.md"
LABEL license="https://github.com/phnmnl/container-scp-aspera/blob/develop/License.txt"
LABEL tags="Metabolomics"

RUN apt-get update -y && apt-get install -y --no-install-recommends wget zip && \
    wget http://download.asperasoft.com/download/sw/ascp-client/3.5.4/ascp-install-3.5.4.102989-linux-64.sh && \
    bash ascp-install-3.5.4.102989-linux-64.sh && \
    rm -r ascp-install-3.5.4.102989-linux-64.sh && apt-get purge -y wget && \
    apt-get autoremove -y && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY runTest1.sh /usr/local/bin/runTest1.sh
RUN chmod a+x /usr/local/bin/runTest1.sh

ENTRYPOINT ["ascp"]
    
