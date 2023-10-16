Copyright Nabil Alikhan 2010-2011.
BRIG is a cross-platform (Windows/Mac/Unix) application that can display circular 
comparisons between a large number of genomes, with a focus on handling genome 
assembly data.

MAJOR FEATURES:
* Images show similarity between a central reference sequence and other sequences
  as concentric rings.
* BRIG will perform all BLAST comparisons and file parsing automatically via a
  simple GUI.
* Contig boundaries and read coverage can be displayed for draft genomes; 
  customized graphs and annotations can be displayed.
• Using a user-defined set of genes as input, BRIG can display gene presence, 
  absence, truncation or sequence variation in a set of complete genomes, 
  draft genomes or even raw, unassembled sequence data.
* BRIG also accepts SAM-formatted read-mapping files enabling genomic regions 
  present in unassembled sequence data from multiple samples to be compared 
  simultaneously

Available @ http://sourceforge.net/projects/brig/


CHANGE-LOG
Version 0.95
*    Added SVG support
*    Added .fa & .fasta as default fasta extentions.
*    Changed 'Covert graph' module to use 454-Allcontigs.fna produced by Newbler.
*	Contig mapping now accepts multi-FASTA as query.
*	Improved graph modules to work better with BLAST+.
*	Fixed errors loading custom annotations from tab-delimited files 
	made by Microsoft Excel
*	Fixed sorting error for showing red/blue boundaries in graphs
*	Users can load boundaries in Multi-FASTA files in custom annotations
	(selecting colour as alternating red/blue)
*	Users can load individual files into data pool.

INSTALLATION
You require:
* Java 1.6 or greater installed.
* NCBI BLAST+ or BLAST legacy installed.

To run it you need to:
1.   Unzip BRIG-x.xx-dist.zip to a desired location
2.   Run BRIG.jar

LICENCE
This program is free software: you can redistribute it and/or modify it under the terms 
of the GNU General Public License as published by the Free Software Foundation, either
version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR 
PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this 
program.  If not, see <http://www.gnu.org/licenses/>.
