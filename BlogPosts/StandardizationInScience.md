# Issues with standardization within the scientific community

## Historical Research
I may not need to explain to you the importance of standardization. I think most of the people in my lab are aware of how it can cause problems but not everyone has experienced it first-hand. For most of scientific history <!--- Find a better term ---> data was recorded by humans writing in notebooks. It was incredibly non-standard. What data was recorded and how it was recorded would vary wildly from one research organization to another. Initially this didn't cause any problems. Data was not freely shared between organizations so it didn't matter if method of record keeping differed. If data was shared it would have to be interpreted by a human before being used anyway, so that person could translate the data into the format used by their organization. Humans are incredibly good at creating abstract mental representations. Exactly the type of thinking necessary to understand how to translate data from one format to another without a clear guide.

## Current Research
Unfortunately this system has now become a bottleneck. Collaboration has become increasingly common between different labs. Large projects like the Human Genome Project and more recently the Human Microbiome Project would have been impossible without the cooperation of several discrete research institutions. These projects would also have been impossible without the proliferation of computational analysis in scientific research. Lab notebooks still exist but the majority of data collected today is recorded, stored, and analysed by computers. However, unless a prior standard is agreed upon and enforced it still requires a human to go in and manually translate data from the format it is received in to the format used for their analysis. This is impractical for the increasingly large data sets being collected. So you might think, why don't we just develop programs to automate this translation? The answer is that we are trying...and failing.

## Will Machine Learning save us?
Despite recent advancements in artificial intelligence abstract thinking is still out of reach for even the most advanced AI systems. This type of thinking has even been suggested as an improvement on the classic Turing test for intelligence. Known as the 'Winograd Schema Challenge' the test involves correctly determining who a pronoun is referring to in a sentence. For example consider these two sentences:

1) The city councilmen refused the demonstrators a permit because they feared violence.

2) The city councilmen refused the demonstrators a permit because they advocated violence.

Who does 'they' refer to in each sentence?
It's probably very easy for you to determine the correct answer (1. The councilman 2. The demonstrators) but the best a computer could do during a competition in 2016 was 58% accuracy (https://arxiv.org/abs/1611.04146). Considering that this was the highest score in the competition it's comparable to a system that guesses randomly.

## Where standards are used
Since computers aren't currently capable of this type of logic it's up to us to translate our data into a format they can understand. In my field of microbiome research we have done this to a certain exist with data. The fasta and subsequent fastq formats for recording reads of bacterial DNA sequences are widely adopted. This allows data produced by any sequencing lab (Illumina, New York Genome Center, etc) to be processed by any analysis tool (qiime2, PICRUSt, etc) without any manual modification of the data files. Not all types of data have stepped into this bright new future however.

## Where they are not
Metadata, a set of data that describes or gives information about other data, is far from standard. Data is essentially useless without good metadata to accompany it. It's not useful to know what bacteria are found in a sample if you don't know what the sample is. There are several ways in which metadata lacks standardization:

1) What fields are collected
Short of the fields required by analysis tools (such as SampleID and BarcodeSequence) there little overlap between the metadata collected by different labs, or even different studies conducted by the same lab. Are relatively common such as Weight and Age but even in those cases the metadata cannot be easy combined.
2) Units
There is no standardization for what units are used in any particular column. There are the SI base units, but they are not always followed. Depending on the study age could be in years, months, or days. Weight could be in grams or kilograms.
3) How values are represented
Even for simple boolean columns, True could be indicated by 'T', 'True', 'Yes', 'Present', or any number of phrases that all indicate the same thing. If data doesn't exist for a particular column it may be represented by 'N/A', 'Not Available', 'Unknown', or even just left blank.
4) What format this information is stored in
The most common setup is for each row to correspond to a particular sample and each column to a particular category of metadata but I've seen that reversed. Units might be included in column titles, in their own column, or worst of all missing entirely. Sometimes information is grouped in a way that looks nice in a spreadsheet but makes it impossible to process as a typical CSV.

## Implications
Designing a program to comprehensively deal with any one of these issues would be a formidable task, let alone all of them together. These inconsistencies make it needlessly difficult to use existing datasets for new analysis. Many datasets are uploaded to databases such as MG-RAST and Qiita but without standardization there is no good way to search for datasets that contain the metadata that would be relevant to your analysis. If you can find a dataset that works for your purposes you have to write a custom parser pretty much every time. I should know, I've spent many more hours than I'd like doing exactly this.

## Where we go from here
With standardization you could perform an SQL query to find all the relevant datasets, download them all in a single format, and run them through the last metadata parser you'd ever need to write. It could be that easy. It should be that easy. My lab at is working on a project that will make it that easy. We can't do it alone however. A standard is meaningless if nobody uses it. When our design and service is ready for public use, I'll update this post with a like. I hope you're as excited for the future as I am.
