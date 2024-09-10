# Conan Training - Basic
## Microservice Project

Contains a microservice calculator application.
It has 2 features addition and multiplication. Both the features comes as an external delivery from another repository in form of pre-built libraries. Both the libraries are integrated in this application using conan.

The two deliveries are:
- addition_lib/1.0: [Github Repository](https://github.com/tlp1kor/conan-training-basic-lib1/tree/main)
- multiplication_lib/1.0: [Github Repository](https://github.com/tlp1kor/conan-training-basic-lib2/tree/main)

The application is built with Conan which in background will use CMake in this case.
Clone the [conan-training-basic-lib1](https://github.com/tlp1kor/conan-training-basic-lib1/tree/main) branch and [conan-training-basic-lib2](https://github.com/tlp1kor/conan-training-basic-lib2/tree/main) branch in your local and build them before hand.
To build the Calculator application please run the following command:
```
./build.sh
```
To execute the built application, run the following command:
```
./__build/Calculator_MicroserviceProject
```
