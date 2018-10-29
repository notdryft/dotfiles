alias sbuc='sbt update && sbt clean compile package publishLocal publishM2'
alias sbucc='sbt update && sbt ";clean;compile;package;^ publishLocal;^ publishM2"'
