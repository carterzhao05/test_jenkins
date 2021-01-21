FROM u64:0.0.1
LABEL maintainer="junzhao3@cisco.com" 
LABEL description="build and run mari fuzz test based on ubuntu16.04 and clang9.0"


WORKDIR /mari

COPY ./bandwidth_eval_fuzz /
COPY ./mari.profdata  /
COPY ./docker-fuzz-entrypoint.sh /
RUN chmod +x /docker-fuzz-entrypoint.sh
RUN chmod +x /mari.profdata
RUN chmod +x /bandwidth_eval_fuzz
ENTRYPOINT ["/docker-fuzz-entrypoint.sh","-i","6","-t","bandwidth_eval_fuzz"]
