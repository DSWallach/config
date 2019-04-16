# Issues with standardization within the scientific community

## Historical Research
I may not need to explain to you the importance of standardization. I think most of the people in my lab are aware of how it can cause problems but not everyone has experienced it first hand. For most of scientific history <!--- Find a better term ---> data was recorded by humans writing in notebooks. It was incredibly non-standard. What data was recorded and how it was recorded would vary wildly from one research organization to another. For most of history this was fine. Data was not freely shared between organizations so it didn't matter if method of record keeping differed. Additionally if data was shared it would have to be interpreted by a human before being used anyway, so that person could translate the data into the format used by their organization. Humans are incredibly good at creating abstract mental representations. Exactly the type of thinking necessary to understand how to translate data from one format to another without a clear guide.

## Current Research
Unfortunately this system has now become a bottleneck. Collaboration has become increasingly common between different labs. Large projects like the Human Genome Project and more recently the Human Microbiome Project would have been impossible without the cooperation of many different research institutions. These projects would also have been impossible without the proliferation of computational analysis in scientific research. Lab notebooks still exist but the majority of data collected today is recorded, stored, and analysed by computers. However, unless a prior standard is agreed upon and enforced it still requires a human to go in and manually translate data from the format it is received in to the format used for their analysis. This is impractical for the increasingly large data sets being collected. So you might think, why don't we just develop programs to automate this translation? The answer is that we are trying...and failing.

## Will Machine Learning save us?
Despite recent advancements in artificial intelligence abstract thinking is still out of reach for even the most advanced AI systems. This type of thinking has even been suggested as a improvement on the classic Turing test for intelligence. Known as the 'Winograd Schema Challenge' the test involves correctly determining who a pronoun is referring to in a sentence. For example consider these two sentences:

1) The city councilmen refused the demonstrators a permit because they feared violence.

2) The city councilmen refused the demonstrators a permit because they advocated violence.

Who does 'they' refer to in each sentence?
It's probably very easy for you to determine the correct answer ( 1. The councilman 2. The demonstrators) but the best a computer could do during a competition in 2016 was 58% accuracy (https://arxiv.org/abs/1611.04146). When you consider that this was the highest score in the competition it's comparable to a system that guesses randomly.

## Where standards are used
Since computers aren't currently capable of this type of logic it's up to us to translate our data into a format they can understand. In my field of microbiome research we have done this to a certain exist with data. The fasta and subsequent fastq formats for recording reads of bacterial DNA sequences are widely adopted. This allows data produced by any sequencing lab (Illumina, New York Genome Center, etc) to be analyzed by any analysis tool (qiime2, PICRUSt, etc) without any manual modification of the data files. Not all types of data have stepped into this bright new future however.

## Where they are not
Metadata, a set of data that describes or gives information about other data, is far from standard. 
