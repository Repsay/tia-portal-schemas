# TIA Portal XML Schemas

This repository contains XML schemas in XSD format for the XML files that can be imported and exported from TIA Portal via TIA Openness API.

The original XSD generator tool used to create these schemas is [xs3p](https://github.com/ronsun/xs3p). This repository contains a fork of xs3p with some modifications, such as an updated layout, the addition of a built date for version control, and workspace folders for generated files and dependency files.

## Usage

To use these schemas, simply include them in your project as needed. You can validate XML files against these schemas using any XML validation tool that supports XSD.

### How to create your own HTML documentation

+ Add target XSD content to `xsd folder`.
+ Make sure if you have links between your xsd files in the form of include or import that you add the path to the `links.xml`
+ Double click `work.bat`.
+ Generated document will be `~/workspace/results/<filename>.html`.

## Updates

+ Changed the work file to keep folder structure when building results.

## License

The XML schemas in this repository are released under the [MIT License](https://opensource.org/licenses/MIT).

The xs3p tool is released under the [MIT License](https://opensource.org/licenses/MIT). Please see the [README of upstream](https://github.com/bitfehler/xs3p/blob/master/README.md) for more information.

## Acknowledgements

+ [xs3p](https://github.com/ronsun/xs3p) - The original XSD generator tool used to create these schemas.
+ [Bob4ever](https://github.com/Bob4ever) - For contributing to the xs3p fork used in this repository.
