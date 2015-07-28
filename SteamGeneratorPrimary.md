# Steam Generator Primary #
#### and ####
# Steam Generator Secondary (Simplified) #
#### Modeler(s): Fortune ####
#### Symbols: PSG, SSG ####

This model will consist of the primary and secondary sides of the steam
generator (SG).  The boundaries of the primary side model are the hot leg at the SG inlet, the inlet of the RCPs at the SG outlet, and the secondary side of the SG through the tube walls.

The boundaries of the secondary side model are the primary side through the tube walls and boundary conditions of feedwater flow in and steam
flow out.

Additional details will follow. (Updated 2/7/2011)

#### Final Update ####

The final SSG model consists of the following: a transient solution of the secondary side vapor mass, fluid mass, and pressure, calcualtion of the primary-to-secondary heat transfer, a feedwater control system based on SG level deviation, a primitive turbine control system, calculation of the SG water level, and calculation of the 1st stage turbine pressure.

This model can function as a standalone model with a load follow routine based on achieving a steady secondary side pressure, or it can be integrated with the primary system models.

(Updated 04/25/2011)




## Documentation ##
  * [Specification Document](http://code.google.com/p/panther/downloads/detail?name=PSG_IOs_Fortune.docx&can=2&q=) (Updated 02/07/2011)
  * [Updated IO's, GUI sketch, systems schematic](http://code.google.com/p/panther/downloads/detail?name=PSG_D125_02-14-11.pptx&can=2&q=) (Updated 02/14/2011)
  * [Revised description, specification, IO's, and system diagrams](http://code.google.com/p/panther/downloads/detail?name=PSG_SSG_revised_03-15-11.docx&can=2&q=) (Updated 03/15/2011)
  * [Final SSG Design Basis Document](http://code.google.com/p/panther/downloads/detail?name=SSG_Design_Basis_Document_Final.docx&can=2&q=) (Updated 04/25/2011)
  * #### [Revised SSG Design Basis Document](http://code.google.com/p/panther/downloads/detail?name=SSG_Design_Basis_Document_Revised.pdf&can=2&q=) (Updated 04/29/2011) ####
  * #### [Word version of SSG DBD](http://code.google.com/p/panther/downloads/detail?name=SSG_Design_Basis_Document_Revised.docx&can=2&q=) ####



## Matlab Files ##
  * [Draft framework of PSG](http://code.google.com/p/panther/downloads/detail?name=PSG_va.mdl&can=2&q=) (Updated 02/28/2011)
  * [Draft framework of SSG](http://code.google.com/p/panther/downloads/detail?name=SSG_va.mdl&can=2&q=) (Updated 03/07/2011)

  * [PSG Version 0b](http://code.google.com/p/panther/downloads/detail?name=PSG_vb.mdl&can=2&q=) (Updated 03/21/2011)
    * This version of the model represents the shift to using Simscape.
    * Dummy blocks are inserted for the PSG Simscape blocks.

  * [SSG Version 0b](http://code.google.com/p/panther/downloads/detail?name=PSG_vb.mdl&can=2&q=) (Updated 03/21/2011)
    * Updated secondary model.  Still needs to resolve steam table issues.

  * [SSG Version 0d](http://code.google.com/p/panther/downloads/detail?name=SSG_vd%20-%20Copy.mdl&can=2&q=) (Updated 04/04/2011)
    * Nearly complete secondary side model.  Does not include calculation of primary-to-secondary heat transfer, only fed this value.

  * [SSG Version 0](http://code.google.com/p/panther/downloads/detail?name=SSG_v0.zip&can=2&q=) (Updated 04/13/2011)
    * Completed secondary side model.  This includes a simple primary load follow calculation to allow the secondary model to achieve a test steady state.  The only remaining task is to add a calculation of the 1st stage turbine pressure.

  * #### [SSG Version 4 (Final)](http://code.google.com/p/panther/downloads/detail?name=SSG_v4.zip&can=2&q=) (Updated 04/29/2011) ####
    * Final secondary side model.  This includes a standalone SSG model for steady state testing and a model ready for integration with the primary side.  The primar-to-secondary heat transfer calculation has been added, as has the calculation of the 1st stage turbine pressure.