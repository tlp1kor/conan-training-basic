# Conan Training - Basic
## Microservice Project - Consumption of dependencies from remote Artifactory
### It is an Optional Chapter

Contains a microservice calculator application.
It has 2 features addition and multiplication. Both the features comes as an external delivery from another repository in form of pre-built libraries. Both the libraries are integrated in this application using conan.
Both the deliveries have their own dependencies. We will see here how our application can understand all transitive dependencies and will install them.

The two deliveries are:
- addition_lib/2.0: [Github Repository](https://github.com/tlp1kor/conan-training-basic-lib1/tree/chapter_2.1_upload_package)
- multiplication_lib/2.0: [Github Repository](https://github.com/tlp1kor/conan-training-basic-lib2/tree/chapter_2.1_upload_package)

The application is built with Conan which in background will use CMake in this case.
Clone the [chapter_2.1_upload_package](https://github.com/tlp1kor/conan-training-basic-lib1/tree/chapter_2.1_upload_package) branch of `conan-training-basic-lib1` repository and [chapter_2.1_upload_package](https://github.com/tlp1kor/conan-training-basic-lib2/tree/chapter_2.1_upload_package) branch of `conan-training-basic-lib2` repository in your local and build them before hand and upload it to artifactory.

To Note: In this branch's build.sh you will find:
```
# Run Conan install with specified build folder
conan install $ROOT_DIR -pr:a $profile --build=missing
```
We are keeping --build=missing since we will allow building up of some dependent packages based on our profile settings. `addition_lib` and `multiplication_lib` are directly downloaded from artifactory, whereas their transitive dependencies like `spdlog` and `fmt` packages are not available with the desired settings in remote conancenter and hence they are needed to be built during the process.

To build the application please run the following command:
```
./build.sh
```
To execute the built application, run the following command:
```
./__build/Calculator_MicroserviceProject
```
