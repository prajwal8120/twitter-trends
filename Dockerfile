FROM openjdk:11
COPY jarstaging/com/stalin/demo-workshop/2.0.4/demo-workshop-2.0.4.jar valaxy.jar
ENTRYPOINT ["java", "-jar", "valaxy.jar"]