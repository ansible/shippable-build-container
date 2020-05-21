FROM drydock/u16pytall:v6.10.4

RUN mv /usr/bin/git /usr/bin/base.git
COPY intercept.git.sh /usr/bin/git
RUN chmod +x /usr/bin/git
