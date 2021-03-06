## Workflow for shotgun metagenome assembly and annotation                                                                                                                                                                                                                      
A compliant workflow for metagenome assembly and annotation, based on the IMG/M pipeline, will be developed such that the data products will be compatible with viewing in NMDC partner platforms (IMG/M, KBase, EDGE).                                                         

The shotgun metagenome assembly and annotation workflow will be evaluated for current and future scalability, as well as implementation on metagenomes of diverse complexities and data quantities: evaluation of the trade-offs between quality of the metagenome assembly and annotation with how they scale with metagenomic data size and metagenome complexity (i.e. memory usage, time to completion, and computational resources required). LANL will partner with colleagues at JGI and will leverage existing tests for MEGAHIT, MetaSPades and IDBA-UD on large (>100M read) data sets of various complexities.
 
#### Environment:
 - CentOS 7
 - Python >= v3.6 
 - Perl >= v5.16
 - Cromwell v44 (BSD 3-Clause)
 
#### Third party software used/other dependencies:
 - conda v4.7.10 (BSD 3-Clause)
 - metaWRAP v1.2 (MIT)
 - MEGAHIT v1.2.8 (GPLv3)
 - MetaSPades v3.13.1 (GPLv2)
 - IDBA-UD v1.1.3 (GPLv2)
 - metaQuast v2.2 (GPLv2)
 - Prokka v1.14.0 (GPLv2)
 
#### Database:
 - database come with Prokka annotation software
 
#### Tests:
 - Mock dataset: SRR7877884
 - simulated dataset


### IMG annotation pipeline requirements                                                                                                                                                                                                                                        
                                                                                                                                                                                                                                                                                
#### Environment                                                                                                                                                                                                                                                                
 - Linux (with sh/bash)                                                                                                                                                                                                                                                         
 - Python >= 3.6 (via conda)                                                                                                                                                                                                                                                    
 - Perl >= 5.26 (via conda)                                                                                                                                                                                                                                                     
                                                                                                                                                                                                                                                                                
#### Third party software used (+ their licenses)                                                                                                                                                                                                                               
 - Conda (3-clause BSD)                                                                                                                                                                                                                                                         
 - tRNAscan-SE >= 2.0 (GNU GPL v3)                                                                                                                                                                                                                                              
 - Infernal 1.1.2 (BSD)                                                                                                                                                                                                                                                         
 - CRT-CLI 1.8 (Public domain software, last official version is 1.2, I made changes to it based on Natalia's and David's suggestions)                                                                                                                                          
 - Prodigal 2.6.3 (GNU GPL v3)                                                                                                                                                                                                                                                  
 - GeneMarkS-2 >= 1.07 ([Academic license for GeneMark family software](http://topaz.gatech.edu/GeneMark/license_download.cgi))                                                                                                                                                 
 - Last >= 983 (GNU GPL v3)                                                                                                                                                                                                                                                     
 - HMMER 3.1b2 (3-clause BSD, I am using [Bill's thread optimized hmmsearch](https://github.com/Larofeticus/hpc_hmmsearch))                                                                                                                                                     
 - SignalP 4.1 (Academic)                                                                                                                                                                                                                                                       
 - TMHMM 2.0 (Academic)                                                                                                                                                                                                                                                         
                                                                                                                                                                                                                                                                                
#### Databases used (+ their licenses):                                                                                                                                                                                                                                         
 - Rfam ([Creative Commons Zero ("CC0")](http://creativecommons.org/publicdomain/zero/1.0/))                                                                                                                                                                                    
 - KEGG (Paid Subscription, getting KOs/ECs indirectly via IMG NR)                                                                                                                                                                                                              
 - SMART (Academic)                                                                                                                                                                                                                                                             
 - COG (Free, couldn't find one, HMMs created from the 2003 models)                                                                                                                                                                                                             
 - TIGRFAM (Free, couldn't find one)                                                                                                                                                                                                                                            
 - SUPERFAMILY (Academic)                                                                                                                                                                                                                                                       
 - Pfam (GNU Lesser General Public License, according to [its wikipedia page](https://en.wikipedia.org/wiki/Pfam))                                                                                                                                                                       
 - Cath-FunFam (Free, couldn't find one)                                                                                                                                                                                                                                        
