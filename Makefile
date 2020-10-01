

build:
	docker build -t ibmosquito/dummy:1.0.0 .
	docker push ibmosquito/dummy:1.0.0

publish:
	hzn exchange service publish -O -P -f under1.json
	hzn exchange service publish -O -P -f under2.json
	hzn exchange service publish -O -P -f top.json
	hzn exchange pattern publish -f pattern.json

register:
	hzn register --pattern mycluster/gdarling-nwtest
