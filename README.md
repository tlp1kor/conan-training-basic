# Conan Training - Basic
## Microservice Project

Contains a microservice calculator application.
It has 2 features addition and multiplication. Both the features comes as an external delivery from another repository in form of pre-built libraries. Both the libraries are integrated in this application using conan.
Both the deliveries have their own dependencies. We will see here how our application can understand all transitive dependencies and will install them.

The two deliveries are:
- addition_lib/2.0: [Github Repository](https://github.com/tlp1kor/conan-training-basic-lib1/tree/chapter_2_dependency_handling)
- multiplication_lib/2.0: [Github Repository](https://github.com/tlp1kor/conan-training-basic-lib2/tree/chapter_2_dependency_handling)

The application is built with Conan which in background will use CMake in this case.
Clone the [chapter_2_dependency_handling](https://github.com/tlp1kor/conan-training-basic-lib1/tree/chapter_2_dependency_handling) branch of `conan-training-basic-lib1` repository and [chapter_2_dependency_handling](https://github.com/tlp1kor/conan-training-basic-lib2/tree/chapter_2_dependency_handling) branch of `conan-training-basic-lib2` repository in your local and build them before hand.
To build the application please run the following command:
```
./build.sh
```
To execute the built application, run the following command:
```
./__build/Calculator_MicroserviceProject
```
