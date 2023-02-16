FROM openjdk:8
ADD jarstaging/com/stalin/demo-workshop/2.0.2/demo-workshop-2.0.2.jar valaxy.jar
ENTRYPOINT ["java", "-jar", "valaxy.jar"]