cassandra_version="3.7"

export PATH=/opt/apache-cassandra-${cassandra_version}/bin:$PATH
export PATH=/opt/apache-cassandra-${cassandra_version}/tools/bin:$PATH

function reset-cassandra() {
  pgrep -f cassandra | xargs kill -9 && \
    rm -rf /opt/apache-cassandra-${cassandra_version}/data && \
    cassandra
}
