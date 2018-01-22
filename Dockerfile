FROM ubuntu:16.04

LABEL maintainer="PhenoMeNal-H2020 Project (phenomenal-h2020-users@googlegroups.com)"
LABEL software.version=3.7.2
LABEL version=0.3
LABEL software="MetaboLights Downloader"
LABEL description="Facility for downloading a MetaboLights study"
LABEL website="http://www.ebi.ac.uk/metabolights/"
LABEL documentation="https://github.com/phnmnl/container-scp-aspera/blob/master/README.md"
LABEL license="https://github.com/phnmnl/container-scp-aspera/blob/develop/License.txt"
LABEL tags="Metabolomics"

RUN apt-get update -y && apt-get install -y --no-install-recommends wget zip && \
    wget http://download.asperasoft.com/download/sw/cli/3.7.2/aspera-cli-3.7.2.354.010c3b8-linux-64-release.sh && \
    bash aspera-cli-3.7.2.354.010c3b8-linux-64-release.sh && \
    rm -r aspera-cli-3.7.2.354.010c3b8-linux-64-release.sh && apt-get purge -y wget && \
    apt-get autoremove -y && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY runTest1.sh /usr/local/bin/runTest1.sh
RUN chmod a+x /usr/local/bin/runTest1.sh
ENV PATH /root/.aspera/cli/bin:$PATH

ENTRYPOINT ["ascp"]
    
