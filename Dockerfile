FROM docker:24.0.5

# Install GitLab Runner dependencies (if required)
RUN apk add --no-cache gitlab-runner

# Copy the config.toml to the GitLab Runner's configuration directory
COPY config.toml /etc/gitlab-runner/config.toml

# Run GitLab Runner as an entrypoint
ENTRYPOINT ["gitlab-runner", "run"]
