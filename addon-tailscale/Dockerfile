ARG BUILD_FROM
FROM $BUILD_FROM

# Copy root filesystem
COPY rootfs /

# Fix execute permissions nur für das tailscaled run-Skript
RUN chmod +x /etc/services.d/tailscaled/run && \
    mkdir -p /var/run/tailscale2

# Labels
LABEL \
    io.hass.name="Tailscale2" \
    io.hass.description="Zero config VPN (zweite Instanz, minimal)" \
    io.hass.arch="amd64|aarch64|armv7" \
    io.hass.type="addon" \
    io.hass.version="dev"
