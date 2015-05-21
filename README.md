# Archetype Modeling Language Specification

Repository for developing the Archetype Modeling Language (AML) specification.  The actual specification is being assembled in
the [specification project](specification.mdzip), where the packages within the document correspond to the sections in the 
submission itself.  The specification consists of:

<hl/>
## AML Object Model
A description of the AML requirements along with a model that shows how they would be represented in vanilla UML.

### AML Object Model Itself (File: [AMLObjectModel.mdzip](AMLObjectModel.mdzip))
A "vanilla" UML model that documents the goals of the AML project. Note that
the diagrams for this package have been moved to the [specification.mdzip](specification.mdzip) package, so this is pure clases.

#### Packages

1. Archetype - models *Archetype*, *ArchetypeLibrary*, *ArchetypeVersion*, *SourceArchetype* and *FlatArchetype*
2. Reference Metamodel - models the subset of the UML Model that is applicable to archetypes.  This includes subpackages for the "primitive types" that are used to bridge the archetype/UML metamodel,  the subset of the UML metamodel that AML can be applied to.  
3. Constraint Model - models the various ADL constraints
4. Terminology Binding - models the terminology/model linkage.  Currently includes a *TerminologyServices* package that should probably be removed from the final submission
5. Rules - models for the ADL rules section
6. Metadata - models for the ADL metadata sections.  ***Note:*** *this needs to be completed*

### AML Object Model Examples (File:[AOMExamples.mdzip](AOMExamples.mdzip))
Example Instances of the AML Object Model.  At the moment this package is full of artifacts from the 
original RSA rendering. 

### Packages

1. CommonDataTypeInstances -- a library of various shared "data types" such as multiplicities, designations, etc.
2. Features -- represents a 1-1 mapping to the [ADL 1.5 Features](https://github.com/openEHR/adl-archetypes/tree/master/ADL15-reference/features) archetypes. Each
feature in this package is reduced to a reasonable minimum, converted to use the [CIMI 2.02 Reference Model](CIMIv2.mdzip) and the salient section
is then shown as in instance diagram with the same concept name.
2. Reference Models -- representations of example reference models as instances of the Reference Metamodel artifacts ( RMMClass, RMMProperty, etc.) 
3. RSA Artifacts -- model instances left over from the RSA modelling. Unfortuantely, all of the diagrams were lost, so we anticipate that this package will be jettisoned as soon as we are comfortable with the new set of models.


<hl/>
## AML Profiles
A set of profiles that realize the AML Object Model requirements as a collection of profiles. Each profile consists of three modules:
1. The profile itself
2. The Magic Draw customization package
3. Profile examples that show the various features.

### Archetype Profile  
* [ArchetypeProfile.mdzip](ArchetypeProfile.mdzip)) -- *ArchetypeLibrary*, *Archetype*, *ArchetypeVersion* and *ReferenceModelImport* profiles
* [APCustomization](APCustomization.mdzip)
* [APExamples](APExamples.mdzip)


### Reference Model Profile
* [ReferenceModelProfile](ReferenceModelProfile.mdzip)
 * Classes for linking Reference Model types to AML types (e.g. Date, Time, String, Duration, etc).
 * *AMLType*, *ArchetypeId* and *ArchetypeVesionId* -- abstract types that need to be made concrete for an AML to archetype link
 * *AMLDataType*, *Infrastructure* and *runtime* -- stereotypes to add to the Reference Model to indicate classes and properties that cannot be constrained.  *AMLDataType* also provides the link between a Reference Model type and the AML type
* There is currently no customization supplied for the RM profile.
* [CIMIv2.0.2](CIMIv2.mdzip) -- CIMI v2.0.2 Reference Model with Reference Model Profile applied

### Constraint Profile
The heart of the matter, constraints, which specify the actual archetypes
* [ConstraintProfile.mdzip](ConstraintProfile.mdzip)
 * **PrimitiveTypeConstraints diagram** -- linkage of the "primitive" types and their constraints
 * **Constraints diagram**-- *ObjectConstraint* and its speciailzations, *PrimitiveObjectConstraint*, *EnumerationConstraint*, *ComplexObjectConstraint*
 * **AttributeConstraints diagram**-- *AttributeConstraint* and its specializations, *DataTypeConstraint*, *SingularAttributeConstraint* and *AttributeCollectionConstraint*.
 * **EnumerationConstraints diagram** -- enumeration constraints and terminology binding linkage (*EnumeratedValueDomain* and *PermissibleValue*)
 * **ProxyConstraints diagram** -- *ObjectConstraintProxy*, *ArchetypeRootProxy*
 * **TerminologyConstraints diagram** -- *ConceptReference*, *ConceptReferenceConstraint*
* [CPCustomization.mdzip](CPCustomization.mdzip)
* [CPExamples.mdzip](CPExamples.mdzip)

### Terminology Binding Profile
Connecting enumerations, identifiers, value sets, etc. to terminological resources. *Note:* This package still has corresponding profiles for each of the classes below.  The should be removed as soon as the class/stereotyped element issue is addressed.
* [TerminologyProfile.mdzip](TerminologyProfile.mdzip) 
 * **TerminologyProfile diagram** -- the *ResourceReference* class and its specializations, *ConceptReference*, *CodeSystemReference*, *CodeSystemVersionReference*, *ValueSetReference* and *ValueSetDefinitionReference*
  * *DesignatableItem*, *IdentifiedItem* and *DescribedItem* stereotypes for the ADL identifiers and term/description tuples.
 * *ScopedIdentifier*, *KnownNamespace*, *NamespaceInstance*, *Language* and *ArchetypeType* stereotypes for scoping namespaces for identifiers and terminology items.
 * *PermissibleValue* and *EnumeratedValueDomain* stereotypes for terminology binding sections
 * **URI diagram** -- an excerpt from the CTS2 URI model, identifying the *PersistentURI* types
* [TBCustomization](TBCustomization.mdzip)
* [TBExamples](TBExamples.mdzip)

### Rules Profile
FOPL rules for non-hierarchical constraints (Future)

### Metadata Profile
Metadata profile specifically for ADL.  *Note:* We still need to create abstract classes along the same line as the *ArchetypeId* that will allow for other metadata models
* [ArchetypeMetadataProfile.mdzip](ArchetypeMetadataProfile.mdzip) -- *AuthoredResource* stereotype and the accompanying *ResourceTranslation*, *TranslationDetails*, *Description*, *ResourceDescription*, etc. classes
* [AMPCustomization.mdzip](AMPCustomization.mdzip)
* [AMPExamples.mdzip](AMPExamples.mdzip)

### Identification and Designation Profile
This profile implements the ADL *terminology* section.

* [IdentificationAndDesignation.mdzip](IdentificationAndDesignation.mdzip)

* [IDDCustomization.mdzip](IDDCustomization.mdzip)
* [IDDExamples](IDDExamples.mdzip)


## Supporting resources
* [AML-sample-archetypes](aml-sample-archetypes) -- The set of ADL 1.5.1 archetypes used to test the AML Object Model and corresponding stereotypes
* [Images](images) -- Images used in the various customizations
* [report](report) -- Submission template
* [archive](archive) -- Historical relics and anciallary resources
* [ReferenceDocuments](ReferenceDocuments) -- Copies of useful reference documents
