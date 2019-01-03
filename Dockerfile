FROM alpine:latest
RUN apk --no-cache add coreutils bash libc6-compat strace
ADD https://dl.minio.io/client/mc/release/linux-amd64/mc /usr/bin/mc
RUN chmod +x /usr/bin/mc


ADD https://github.com/kubevirt/kubevirt/releases/download/v0.11.0/virtctl-v0.11.0-linux-amd64 /usr/bin/virtctl
RUN chmod +x /usr/bin/virtctl
ENTRYPOINT ["/bin/bash", "-c"]
