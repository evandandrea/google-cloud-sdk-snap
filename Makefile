VERSION="111.0.0"

snap: fetch-tarball
	snapcraft snap

fetch-tarball:
	wget https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-$(VERSION)-linux-x86_64.tar.gz -O src.tar.gz
	tar xf src.tar.gz
	rm src.tar.gz

clean:
	snapcraft clean
	rm -rf google-cloud-sdk
