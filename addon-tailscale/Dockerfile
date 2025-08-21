ARG BUILD_FROM
FROM $BUILD_FROM

# Copy root filesystem
COPY rootfs /

# S6 overlay execute permissions fix
RUN chmod +x /etc/s6-overlay/scripts/*.sh && \
    find /etc/s6-overlay/s6-rc.d/ -type f -name 'run' -exec chmod +x {} \;

# Labels
LABEL \
    io.hass.name="Tailscale2" \
    io.hass.description="Zero config VPN for building secure networks" \
    io.hass.arch="amd64|aarch64|armv7" \
    io.hass.type="addon" \
    io.hass.version="dev"
