FROM google/cloud-sdk
LABEL maintainer="Shinji Kawaguchi <shinji.kawaguchi@clouto.io>" \
      version="0.1" \
      description="Google Cloud Datastore Emulator"

ENV PORT=8180
ENV CONSISTENCY=1.0

EXPOSE $PORT

ENTRYPOINT ["gcloud", "beta", "emulators", "datastore"]
CMD ["start", "--consistency=$CONSISTENCY", "--host-port=127.0.0.1:$PORT", "--no-store-on-disk"]