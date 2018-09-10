# Audyty i metryki dla Delphi

### Wbudowane w środowisko audyty i metryki

Ogólny opis audytów i metryk: [Dokumentacja](http://docwiki.embarcadero.com/RADStudio/Tokyo/en/Source_Code_Audits_and_Metrics)

### Uruchamianie metryk z AuditsCLI.EXE

```

AuditsCLI.exe --metrics --xml MailingManager.dproj

```


Szczegółowa list i opis metryk:

```
C:\Program Files (x86)\Embarcadero\Studio\19.0\
ObjRepos\en\QA\metric\docs\Delphi\
```
Szczegółowa list i opis audytów:

```
C:\Program Files (x86)\Embarcadero\Studio\19.0\
ObjRepos\en\QA\audits\docs\Delphi\
```

### Wybrane Metryki

* CC = Cyclomatic Complexity (CC)
    * Number of cycles in the measured method. This measure represents the cognitive complexity of the class. It **counts the number of possible paths through an algorithm** by counting the number of distinct regions on a flowgraph, meaning the number of if, for, and while statements in the operation's body. Case labels for switch statements are counted if the Case as branch property is activated. (introduced by McCabe in 1976)
* CR = Comment Ratio
    * Counts the **ratio of comments to total lines of code** (comments are included in the code count). Comment = documentation and/or implementation one. 
    * You can also specify which type of comments to use for the ratio.
        * Documentation comments are ```///``` comments before classes and members.
        * Implementation comments are any other type of comments.
* LOC = Lines Of Code
    * Number of lines of code, including comments and white-lines.
* FO = FanOut
    * Number of **reference types that are used** by class. Counts types in field declarations, formal parameters, return types, throws declarations and local variables. 
        * Simple types and supertypes are not counted.
* MNOL = Maximum Number Of Levels
    * Maximum **depth of if**, for and while branches in the bodies of methods. Logical units with a high number of nested levels might need implementation simplification and process improvements, because groups that contain more than seven pieces of information are increasingly harder for people to understand in problem solving.
* MNOP = Maximum Number Of Parameters
    * Counts the highest **number of parameters defined for a single operation**, from among all the operations in the class. Methods with many parameters tend to be more specialized and so are less likely to be reusable.
* NOA = Number Of Attributes
    * **Number of fields**. Inherited fields may be counted optionally. If a class has a high number of fields , it may be wise to consider whether it would be appropriate to divide it into subclasses.
* NOO = Number Of Operations
    * **Number of methods, procedures and functions**. If a class has a high number of operations, it may be wise to consider whether it would be appropriate to divide it into subclasses.

Metryki dla programistów OOP:

* CBO = Coupling Between Objects
    * Represents the number of other classes to which a class is coupled to. Counts the number of reference types that are used in field declarations, formal parameters, return types, throws declarations, local variables, and types from which field and method selections are made. Primitive types, types from System.Collections namespace and supertypes are not counted.
    * Excessive coupling between objects is detrimental to modular design and prevents reuse. The more independent a class is, the easier it is to reuse it in another application. In order to improve modularity and promote encapsulation, inter-object class coupling should be kept to a minimum. The larger the number of coupling, the higher the sensitivity to changes in other parts of the design, and therefore maintenance is more difficult. A measure of coupling is useful to determine how complex the testing of various parts of a design is likely to be. The higher the inter-object class coupling, the more rigorous the testing needs to be.
* DOIH = Depth Of Inheritance Hierarchy
    * **The length of the inheritance chain** from the root of the inheritance tree to the measured class is the DOIH metric for the class.
* NOC = Number Of Classes
* NOCC = Number Of Child Classes
    * The number of classes directly or indirectly derived from the measured class.
* NOO = Number Of Operations (jak wyżej)
* PPrivM = Percentage of Private Members
    * Counts the percentage of private members in a class.
* PProtM = Percentage of Protected Members
* PPubM = Percentage of Public Members
    * Counts the proportion of vulnerable members in a class. A large proportion of such members means that the class has high potential to be affected by external classes and means that increased effort will be needed to test such a class thoroughly.
* VOD = Violations of Demeter's Law (VOD)
    * zobacz w dokumentacji
    * The motivation behind the Law of Demeter is to ensure that the software is as modular as possible. The Law effectively reduces the occurrences of certain nested message sends and simplifies the methods.
    * The definition of the Law makes a difference between the classes associated with the declaration of the method and the classes used in the body of the method, i.e. the classes associated with its implementation. The former includes the class where the method is attached, its superclasses, the classes used in the declarations of the instance variables and the classes used to declare the arguments of the method. In some sense, there are 'automatic' consequences of the method declaration. They can be easily derived from the code and shown by a browser. All other supplier classes to the methods are introduced in the body of the function, that means these couples were created at the time of concretely implementing the method. They can only be determined by a careful reading of the implementation.