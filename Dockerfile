FROM solr:7.6.0

USER root

ENV SOLR_HOME /opt/solr/server/solr
COPY ./wikipedia $SOLR_HOME/mycores/wikipedia

# Pointing default Solr config to our shared lib directory
# and fix permissions
RUN chown -R solr:solr $SOLR_HOME/mycores/wikipedia

USER $SOLR_USER
