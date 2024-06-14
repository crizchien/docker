FROM devops.experteam.com.tw/eds-docker-redhat-access-remote/ubi8/ubi-minimal@sha256:5f1cd3422d5d46aea35dac80825dbcbd58213eef49c317f42a394345fb4e8ff1

RUN microdnf install -y java-1.8.0-openjdk java-11-openjdk java-17-openjdk java-21-openjdk maven git
COPY entrypoint.sh /usr/local/bin/.

ENTRYPOINT ["entrypoint.sh"]
