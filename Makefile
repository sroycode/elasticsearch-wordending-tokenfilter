test:
	mvn test
package:
	mvn3 clean package
install1:
	$(ES_HOME)/bin/plugin -remove wordending && $(ES_HOME)/bin/plugin -url file://$(PWD)/target/releases/elasticsearch-wordending-tokenfilter-0.0.1.zip -install wordending
install2:
	$(ES_HOME)/bin/plugin remove wordending && $(ES_HOME)/bin/plugin install file://$(PWD)/target/releases/elasticsearch-wordending-tokenfilter-0.0.1.zip
