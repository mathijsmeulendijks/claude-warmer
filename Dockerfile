FROM node:23-alpine

RUN npm install -g @anthropic-ai/claude-code

COPY crontab /etc/crontabs/root

VOLUME ["/root/.claude"]

CMD ["crond", "-f", "-l", "2"]
