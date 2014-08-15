google-spreadsheets-access-java
===============================

https://code.google.com/p/gdata-java-client/downloads/list
https://developers.google.com/google-apps/spreadsheets/#what_can_this_api_do

Register app with google
https://developers.google.com/youtube/registering_an_application

Here's the OAuth 2.0 scope information for the Google Spreadsheets API:
https://spreadsheets.google.com/feeds

```sh
# Must be java 7, so symlink:
ln -s /Library/Java/JavaVirtualMachines/jdk1.7.0_67.jdk/Contents/Home/bin/java /usr/local/bin/java
export "PATH=/usr/local/bin:$PATH"
```

# install dependencies
```sh
brew install wget p7zip
```

```sh
cd google-spreadsheets-access-java
# next line will cause exception, but thats ok becuase just need to add password to build.properties
make
find . -name build.properties
# manually modify it to add username=user@streambox.com, password
export pass={my gmail pass}
export email=user@gmail.com
# next line was gathered from
#  data-java-client/gdata/java/sample/spreadsheet/cell/README.txt and
#  using ant -v.  I needed to use this next line because
#  reader.readLine() was blocking when using ant -f
#  gdata/java/build-samples.xml sample.spreadsheet.celldemo.run
/Library/Java/JavaVirtualMachines/jdk1.7.0_67.jdk/Contents/Home/bin/java -classpath '/Users/demo/pdev/google-spreadsheets-access-java/gdata-java-client/gdata/java/deps/jsr305.jar:/Users/demo/pdev/google-spreadsheets-access-java/gdata-java-client/gdata/java/deps/guava-11.0.2.jar:/Users/demo/pdev/google-spreadsheets-access-java/gdata-java-client/gdata/java/lib/gdata-client-1.0.jar:/Users/demo/pdev/google-spreadsheets-access-java/gdata-java-client/gdata/java/lib/gdata-spreadsheet-3.0.jar:/Users/demo/pdev/google-spreadsheets-access-java/gdata-java-client/gdata/java/sample/util/lib/sample-util.jar:/Users/demo/pdev/google-spreadsheets-access-java/gdata-java-client/gdata/java/sample/spreadsheet/lib/CellDemo.jar' sample.spreadsheet.cell.CellDemo -u $email -p "$pass"
rm -rf gdata-java-client/
```
