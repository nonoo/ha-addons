ARG BUILD_FROM
FROM $BUILD_FROM

# Install requirements for add-on
RUN curl -s https://api.github.com/repos/nonoo/tesla-aprs/releases/latest | \
	grep tarball_url | grep -wo "https://.*" | tr -d \", | \
	xargs curl -L --output a.tar.gz && mkdir -p /tesla-aprs && \
	tar -xzf a.tar.gz -C /tesla-aprs --strip-components=1 && \
	rm a.tar.gz && \
	apk add --no-cache python3 py3-pip && \
	pip install --break-system-packages -r /tesla-aprs/requirements.txt

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
