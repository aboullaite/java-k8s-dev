# Dev Joy with java & k8s

Demos for my talk about speeding up java development while using k8s!

The project is structured in 3 forlders:
+ sbms: a simple spring boot application! following traditional dev workflow
+ sbms-jib: Same spring boot app, taking advantage from Jib, skaffold and helm to speed up dev
+ petstore: This is the old good micronaut petstore application, with support of k8s, skaffold, JIB and kustomise to highlight that we can make use of these tools even in complex, real world microservices architecture.
