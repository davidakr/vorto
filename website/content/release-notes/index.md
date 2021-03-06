---
date: 2016-03-09T20:10:46+01:00
title: Release Notes
weight: 60
---
## 0.10.0 milestone 3

**Fixes and Enhancements**

- EU-GDPR Compliance of Vorto Repository, i.e. Export of user-specific Vorto models.
- Eclipse Hono Generator, supporting the generation of Arduino-, Python- and Java source code.
- Code Generator Configuration UI. Code Generators that are executed from the Eclipse Vorto Toolset do now provide a configuration UI that allows developers to customize the execution of the generator.


**API Changes**
 
- Vorto Code Generators must now implement `org.eclipse.vorto.codegen.api.IVortoCodeGenerator.getInfo()` that give more meta information about the specific Code Generator. This information is used by Vorto to provide a Generator Configuration UI automatically.
- The Vorto Repository REST - API for publishing models is now secured exclusively with OAuth2 token - based authentication. 
	> It is now only possibly to publish models to the Vorto Repository via the Vorto Repository Web UI !

## 0.10.0 milestone 2
**Fixes and Enhancements**

* Vorto Mapping library that is able to convert arbitrary device payload to specific IoT platform format, e.g. to Eclipse Ditto.
* More code generators, that generate device code that integrates with Eclipse Hono via MQTT.
* Many bugfixes


## 0.10.0 milestone 1
We are proud to announce Eclipse Vorto 0.10.0 milestone 1.

Here are a few major highlights:

* **Web Editor** that allows to create information-, function block- and datatype models via a web-based editor.
* More **Code Generators** have been added to the list of existing generators.
* **Repository Java client** API
* Many bug fixes and improvements

### Web Editor
With the **Web Editor**, users can describe devices online and publish these as information models to the Vorto Repository.

![WebEditor](/images/release_notes/0.10.0-m2/webeditor_details.png)

### Code Generators

We have a few new Code Generators for easier device integration. Those are

*   Alexa Skill-set Generator for Bosch IoT Suite
*   Device Simulator Generator for Bosch IoT Suite
*   Eclipse Kura Generator
*   Web-based UI Dashboard Generator

* * *

### Alexa Skill-set & Device Simulator for Bosch IoT Suite Generators

The Alexa Skill set Generator for Bosch IoT Suite generates an Alexa Skill Interaction model and Lambda function that fetches the device data from Bosch IoT Suite.

The Device Simulator Generator for Bosch IoT Suite generates a simulator that creates test data for a given information model and publishes the data to the Bosch IoT Suite.

![Generators](/images/release_notes/0.10.0-m2/webeditor_details.png)

* * *

### Eclipse Kura Generator

Eclipse Kura generator supports the generation of a Kura gateway OSGI bundle that reads device data via bluetooth LE technology and sends the data to either Kura built-in Cloud Services or the Bosch IoT Suite.

![Generators](/images/release_notes/0.10.0-m2/webeditor_details.png)

* * *

### Web-based Device Dashboard Generator

The Web - based Device Dashboard generator creates a Spring Boot Web application that is able to visualise the device data with various UI components as well as consume the data from a IoT Cloud backend, e.g. Bosch IoT Suite.

![Generators](/images/release_notes/0.10.0-m2/webeditor_details.png)

* * *

### Repository Java Client

With the Repository Java Client you can find information models and process its content as well as generate code for various IoT platforms. [Click here for more info](https://github.com/eclipse/vorto/tree/development/server/repo/repository-java-client/Readme.md).



## 0.9.x

We are proud to announce the release of 0.9. Here are some of the major highlights:

*   **Eclipse IoT Toolset** that lets you describe the characteristics and functionalities of devices as Information Models
*   **Information Model Repository**, acting as a device description dictionary to lookup and find device cababilities by various criteria
*   **Generator API** that lets you define the translation rules from Information Models into executable, IoT platform specific source code
*   Many **Code Generators** to inspire you to build your own generator as well as illustrate the usage to build an IoT Application.
*   **Command Line Interface** that lets you lookup, find and publish information models as well as generate code for a selected IoT platform

### Eclipse IoT Toolset

With the **Eclipse IoT Toolset**, you can describe the characteristics and functionality of devices as Information Models, publish them to the Information Model Repository and generate code with the help of Code Generators.

![Vorto Features Models](/images/release_notes/0.9.x/vorto_features_models.png)

### Information Model Repository

The **Information Model Repository** manages your device descriptions in a central place and exposes its functionality as a clean REST-API. Users are able to lookup and search device cababilities, checkin new models as well as translate Information Models into a selected IoT Platform source code.

![Search page](/images/release_notes/0.9.x/vorto_repository_search.png)

### Generator API

Vorto Code Generators convert an Information Model into executable IoT platform specific source code. The **Generator API** lets you plug in your own code generator into the toolset. Toolset wizards help you through this process.

### Code Generators

In order to inspire you to build you own generator for your platform, we implemented many **Code Generators**, for example Bosch IoT Things, AWS, ThingWorx and many more. They illustrate the many possibilities of how code generators can be effectively used and act as a blueprint for other generator implementations.

![Generators](/images/release_notes/0.9.x/vorto_repository_generators.png)

### Command Line Interface (CLI)

A **Command Line Interface Tool** lets you explore information models, checkin new information models as well as generate code for a selected IoT platform.

![Vorto CLI Tool](/images/release_notes/0.9.x/vorto_features_cli_tool.png)

