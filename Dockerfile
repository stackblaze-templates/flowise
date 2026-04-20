FROM flowiseai/flowise:3.1.2

EXPOSE 3000

HEALTHCHECK --interval=30s --timeout=10s --start-period=30s --retries=3 \
    CMD wget -qO- http://localhost:3000/api/v1/ping || exit 1

CMD ["flowise", "start"]
