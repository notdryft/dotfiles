#export PATH=/opt/cassandra/bin:$PATH
#export PATH=/opt/cassandra/tools/bin:$PATH

function clean-cassandra() {
  rm -rf /usr/local/var/lib/cassandra/data
}

function stop-cassandra() {
  brew services stop cassandra
}

function reset-cassandra() {
  stop-cassandra && \
    clean-cassandra && \
    brew services start cassandra
}
