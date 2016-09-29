cassandra_version="3.7"

export PATH=/opt/cassandra/bin:$PATH
export PATH=/opt/cassandra/tools/bin:$PATH

function clean-cassandra() {
  rm -rf /opt/cassandra/data
}

function stop-cassandra() {
  pgrep -f cassandra | xargs kill -9
}

function reset-cassandra() {
  stop-cassandra && \
    clean-cassandra && \
    cassandra
}
