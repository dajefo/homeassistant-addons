ARG BUILD_FROM
FROM $BUILD_FROM

# Copy root filesystem
COPY rootfs /

# Fix execute permissions for s6 scripts
RUN find /etc/s6-overlay/s6-rc.d/ -type f -name 'run' -exec chmod +x {} \; && \
    find /etc/services.d/ -type f -name 'run' -exec chmod +x {} \; && \
    find /etc/cont-init.d/ -type f -exec chmod +x {} \; && \
    find /etc/cont-finish.d/ -type f -exec chmod +x {} \; && \
    find /etc/s6-overlay/scripts/ -type f -name '*.sh' -exec chmod +x {} \; && \
    mkdir -p /var/run/tailscale2


# Labels
LABEL \
    io.hass.name="Tailscale2" \
    io.hass.description="Zero config VPN (zweite Instanz)" \
    io.hass.arch="amd64|aarch64|armv7" \
    io.hass.type="addon" \
    io.hass.version="dev"
