ARG BUILD_FROM
FROM $BUILD_FROM

# Copy root filesystem
COPY rootfs /

# Fix execute permissions
RUN find /etc/cont-init.d/ -type f -exec chmod +x {} \; &&     find /etc/cont-finish.d/ -type f -exec chmod +x {} \; &&     find /etc/services.d/tailscaled/ -type f -name 'run' -exec chmod +x {} \; &&     mkdir -p /var/run/tailscale2
