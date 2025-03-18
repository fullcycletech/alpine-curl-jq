# Use a minimal Alpine base image
FROM alpine:latest

# Create a non-root user and group
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

# Install curl and jq
RUN apk add --no-cache curl jq

# Set the working directory
WORKDIR /home/appuser

# Switch to the non-root user
USER appuser

# Default shell command
CMD ["/bin/sh"]