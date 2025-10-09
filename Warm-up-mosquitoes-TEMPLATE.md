Warm-up mini-Report: Mosquito Blood Hosts in Salt Lake City, Utah
================
Mason Gagner
2025-09-25

- [ABSTRACT](#abstract)
- [BACKGROUND](#background)
- [STUDY QUESTION and HYPOTHESIS](#study-question-and-hypothesis)
  - [Questions](#questions)
  - [Hypothesis](#hypothesis)
  - [Prediction](#prediction)
- [METHODS](#methods)
  - [Fill in first analysis](#fill-in-first-analysis)
  - [Fill in second analysis/plot](#fill-in-second-analysisplot)
- [DISCUSSION](#discussion)
  - [Interpretation - fill in
    analysis](#interpretation---fill-in-analysis)
  - [Interpretation - fill in
    analysis/plot](#interpretation---fill-in-analysisplot)
- [CONCLUSION](#conclusion)
- [REFERENCES](#references)

# ABSTRACT

Fill in abstract at the end after we have finished the methods, results,
discussion, conclusions and know what our data “says”.

# BACKGROUND

<!--Fill in some text here that provides background info on the WNV system, the blood meal DNA extractions, PCR, sequencing, etc. and the foundation for our question/hypothesis.
&#10;For example, we can use the viremia duration (Komar et al., 2003) bar plot (make sure to reference sources!!!)  to illustrate the potential importance of house finches in WNV transmission and as the logical foundation for our hypothesis that house finches serve as amplifying hosts for WNV... and the prediction that locations with more house finches in our blood host analysis are also the same locations with higher positive tests for WNV in mosquito pools... 
&#10;NOTE: Examples of data you can plot for the background info at https://github.com/saarman/BIOL3070/ -->

West Nile Virus (WNV) is transmitted via mosquito bites. This is not a
contagious virus by airborne means and only 1 out of 5 individuals
exhibit signs or symptoms while having the infection. This can include
fever, headache, body aches, or other flu-like symptoms (What is West
Nile virus?, 2025). The virus is maintained in nature by a cycle of
mosquito bites transferring WNV from reservoir host species . Through
research, birds have been determined to be a rather large contributor to
the maintenance of WNV and its spread. House Finches (Haemorhous
mexicanus) prove to be one of the largest contributors due to the
longevity of the virus present in its system as well as the potency in
which it exists (Komar et al., 2003).

``` r
# Manually transcribe duration (mean, lo, hi) from the last table column
duration <- data.frame(
  Bird = c("Canada Goose","Mallard", 
           "American Kestrel","Northern Bobwhite",
           "Japanese Quail","Ring-necked Pheasant",
           "American Coot","Killdeer",
           "Ring-billed Gull","Mourning Dove",
           "Rock Dove","Monk Parakeet",
           "Budgerigar","Great Horned Owl",
           "Northern Flicker","Blue Jay",
           "Black-billed Magpie","American Crow",
           "Fish Crow","American Robin",
           "European Starling","Red-winged Blackbird",
           "Common Grackle","House Finch","House Sparrow"),
  mean = c(4.0,4.0,4.5,4.0,1.3,3.7,4.0,4.5,5.5,3.7,3.2,2.7,1.7,6.0,4.0,
           4.0,5.0,3.8,5.0,4.5,3.2,3.0,3.3,6.0,4.5),
  lo   = c(3,4,4,3,0,3,4,4,4,3,3,1,0,6,3,
           3,5,3,4,4,3,3,3,5,2),
  hi   = c(5,4,5,5,4,4,4,5,7,4,4,4,4,6,5,
           5,5,5,7,5,4,3,4,7,6)
)

# Choose some colors
cols <- c(rainbow(30)[c(10:29,1:5)])  # rainbow colors

# horizontal barplot
par(mar=c(5,12,2,2))  # wider left margin for names
bp <- barplot(duration$mean, horiz=TRUE, names.arg=duration$Bird,
              las=1, col=cols, xlab="Days of detectable viremia", xlim=c(0,7))

# add error bars
arrows(duration$lo, bp, duration$hi, bp,
       angle=90, code=3, length=0.05, col="black", xpd=TRUE)
```

<img src="Warm-up-mosquitoes-TEMPLATE_files/figure-gfm/viremia-1.png" style="display: block; margin: auto auto auto 0;" />
(Komar et al., 2003)

To connect real-world-transmission data to laboratory findings,
molecular tools are used. Polymerase chain reaction (PCR) is a method of
DNA amplification used to determine what host species mosquitos have
blood fed on by extracting the blood from the mosquito and sequencing
the amplified DNA fragments. Primers are used in the amplification to
make many copies of the DNA strands for better reading (Polymerase Chain
Reaction (PCR), n.d.). Identifying the host correctly allows for
connections to be made to determine feeding patterns and infection
outcomes.

# STUDY QUESTION and HYPOTHESIS

## Questions

<!--Fill in here, the question we want to answer... e.g. What bird species is acting as WNV amplifying host in Salt Lake City?-->

What bird species are acting as the largest amplifying reservoir host
species?

## Hypothesis

<!--Fill in hypothesis... e.g. House finches are acting as important amplifying hosts of WNV in Salt Lake City.-->

## Prediction

<!--Fill in prediction... e.g. If house finches are acting as important amplifying hosts, we predict that trapping locations where mosquitoes feed on house finches will also have higher rates of confirmed WNV in tested mosquito pools.-->

# METHODS

<!--Fill in here, including overview of procedure and methods used for this project.-->

## Fill in first analysis

``` r
# put code for analysis here
```

## Fill in second analysis/plot

``` r
# put code for plotting here
```

# DISCUSSION

## Interpretation - fill in analysis

## Interpretation - fill in analysis/plot

# CONCLUSION

# REFERENCES

1.  What is West Nile virus?. Cleveland Clinic. (2025, September 12).
    <https://my.clevelandclinic.org/health/diseases/10939-west-nile-virus>

2.  Komar N, Langevin S, Hinten S, Nemeth N, Edwards E, Hettler D, Davis
    B, Bowen R, Bunning M. Experimental infection of North American
    birds with the New York 1999 strain of West Nile virus. Emerg Infect
    Dis. 2003 Mar;9(3):311-22. <https://doi.org/10.3201/eid0903.020628>

3.Polymerase chain Reaction (PCR). (n.d.). Genome.gov.
<https://www.genome.gov/genetics-glossary/Polymerase-Chain-Reaction-PCR>

4.  ChatGPT. OpenAI, version Sep 2025. Used as a reference for functions
    such as plot() and to correct syntax errors. Accessed 2025-09-25.
