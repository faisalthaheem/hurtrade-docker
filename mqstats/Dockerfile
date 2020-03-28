#mqstats
FROM openjdk:11
ADD mqstats/target/mqstats-1.0-jar-with-dependencies.jar /cs.hur/mqstats-1.0-jar-with-dependencies.jar
CMD ["sh","-c","java -jar /cs.hur/mqstats-1.0-jar-with-dependencies.jar --mq-host $MQ_HOST --mq-username $MQ_USERNAME --mq-password $MQ_PASSWORD --mq-rabbitmq-management-base-url $MQ_MGMT_BASE_URL"]
