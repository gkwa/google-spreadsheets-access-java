gdata-samples-version=1.47.1
gdata-samples-basename=gdata-samples.java-$(gdata-samples-version)
gdata-samples-zip=$(gdata-samples-basename).zip
gdata-dir=gdata-java-client

stest: gdata-java-client
	cd gdata-java-client && /usr/local/bin/ant -f gdata/java/build-samples.xml sample.spreadsheet.celldemo.run
test:
	cd my-app && mvn test

$(gdata-dir): $(gdata-samples-zip)
	7z x -y -o$(gdata-dir) $(gdata-samples-zip) >/dev/null

$(gdata-samples-zip):
	wget -nc https://gdata-java-client.googlecode.com/files/$(gdata-samples-zip)

clean:
	rm -rf my-app/target
