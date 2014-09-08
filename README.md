# Archetype Modeling Language Specification

Repository for developing the Archetype Modeling Language (AML) specification

## AML Object Model
A "vanilla" UML model that describes how the various AML project goals are realized
* [AMLObjectModel](AMLObjectModel.mdzip) -- The AML Object Model. A "vanilla" UML model that documents the goals of the AML project.
* [AOMExamples](AOMExamples.mdzip) -- Example Instances of the AML Object Model

## AML Profiles
A set of profiles that realize the AML Object Model requirements in the context of UML
### Archetype Profile
Collections of Archetypes, Archetype Versions and Accompanying metadata
* [ArchetypeProfile](ArchetypeProfile.mdzip) -- Profile for Archetype Libraries, Versions
* [APCustomization](APCustomization.mdzip) -- Magic Draw Customizations for the Archetype Profile
* [APExamples](APExamples.mdzip) -- Examples of Archetype Profiles

### Reference Model Profile
Profile to link the Reference Model to Archetypes.
* [ReferenceModelProfile](ReferenceModelProfile.mdzip) -- Stereotypes to connect a UML Reference Model to an Archetype
* [CIMIv2.0.2](CIMIv2.mdzip) -- CIMI v2.0.2 Reference Model with Reference Model Profile applied

### Constraint Profile
The heart of the matter, constraints, which specify the actual archetypes
* [ConstraintProfile](ConstraintProfile.mdzip)
* [CPCustomization](CPCustomization.mdzip) -- Magic Draw Customizations for the Constraint Profile
* [CPExamples](CPExamples.mdzip) -- Constraint Profile Examples

### Terminology Binding Profile
Connecting enumerations, identifiers, value sets, etc. to terminological resources.
* [TerminologyBindingProfile](TerminologyBindingProfile.mdzip) 
* [TBCustomization](TBCustomization.mdzip) -- Magic Draw Customizations for the Terminology Binding Profile
* [TBExamples](TBExamples.mdzip) -- Examples of Terminology Binding Profiles

### Rules Profile
FOPL rules for non-hierarchical constraints (Future)

### Metadata Profile
Identification, Description, Definition and the 5 W's
* [SimplifiedMDRProfile](SimplifiedMDRProfile.mdzip) -- The Designation and Identification profiles based on a simplified ISO 11179 MDR model
* [SMPCustomization](SMPCustomization.mdzip) -- Magic Draw Customizations for the MDR profile
* [SMPExamples](SMPExamples.mdzip) -- MDR examples
* [ArchetypeMetadataProfile](ArchetypeMetadataProfile.mdzip) -- Metadata about archetypes and related archetypes
* [AMPCustomization](AMCustomization.mdzip) -- Magic Draw Customizations for the Archetype Metatdata Profile
* [AMPExamples](AMPExamples.mdzip) -- Examples of Archetype Metadata

## [specification](specification.mdzip)
The complete specification as a UML model.

## Supporting resources
* [AML-sample-archetypes](aml-sample-archetypes) -- The set of ADL 1.5.1 archetypes used to test the AML Object Model and corresponding stereotypes
* [Images](images) -- Images used in the various customizations
* [report](report) -- submission template
* [archive](archive) -- historical relics and anciallary resources
