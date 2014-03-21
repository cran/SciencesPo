\encoding{UTF-8}
\name{fptp2av}
\alias{fptp2av}

\title{FPTP to AV
}
\description{Performs simulations for the likely AV election votes based on the actual FPTP votes.
}
\usage{
fptp2av(data = NULL, link = NULL)
}

\arguments{
  \item{data}{A flat table or data frame containing FPTP votes for each district. 
  	}
  	\item{link}{A link function containing a structure for candidates/parties relations. 
}
}

\value{A data frame containing FPTP votes for each district.
}

\references{ Marcelino, Daniel (2013). \emph{SciencesPo: A Tool Set for Analyzing Political Behaviour Data}. Available at SSRN: \url{http://dx.doi.org/10.2139/ssrn.2320547}
}

\author{Daniel Marcelino <dmarcelino@live.com>
}

\note{This function is a very beta so it may present issues. Moreover, for the algorithm to work properly, the data set must have the same format (flat table) as the example here presented. Besides the data, a ``link'' structure input for party/candidates relations is necessary. See the example above.
}

\examples{
# Feeding data:
data(ge2010)

# Let's take a small portion of the data.
IR <-ge2010[ge2010$Region=="Northern Ireland",]

## First, create some vectors for candidates/parties link 
## Here I considered everyone who fielded more than 10 candidates

APNI<- c("SF", "DUP", "SDLP", "TUV", "UCUNF")
BNP<-c("Ch P", "Con", "CPA", "NF", "UKIP");
Ch_P<-c("BNP", "CPA", "Con", "ED") #Christian Party;
Con<-c("LD", "UKIP", "ED", "Ch P", "CPA") #Conservative Party;
CPA<-c("BNP", "Ch P", "Con", "ED") 
DUP<-c("SDLP", "TUV", "UCUNF", "APNI") 
ED<-c("Con", "BNP", "NF", "CPA", "Ch P") #English Democrats;
Grn<-c("LD", "Lab", "SDLP", "PC", "SSP", "TUSC", "TUV") 
Lab<-c("LD", "Grn", "SDLP", "Soc", "SSP", "TUSC", "TUV") 
LD<-c("Lab", "Con", "Grn", "PC", "SDLP") #Lib Dem;
MRLP<-c("Con", "Lab", "LD", "Grn", "PC", "SDLP", "SNP", "SSP", "UKIP")
NF<-c("BNP", "Con", "ED", "UKIP") #National Front;
PC<-c("Con", "Lab", "LD") 
Respect<-c("Con", "Lab", "LD") 
SDLP<-c("Grn", "Lab", "LD") #Social Democratic & Labour Party;
SF<-c("APNI", "USUNF") 
Soc<-c("Lab", "SSP", "SDLP", "TUSC", "TUV") #Lab Socialist Labour Party;
SNP<-c("Ch P", "CPA", "UKIP") #Scottish National Party;
SSP<-c("Grn", "Lab", "LD", "SDLP", "TUSC", "TUV") 
TUSC<-c("SDLP", "Soc", "SSP", "TUV") 
TUV<-c("SDLP", "Soc", "SSP", "TUSC") 
UCUNF<-c("APNI", "SF", "DUP") 
UKIP<-c("BNP", "NF", "Con") 

## vector with candidate relations:
candidate_relations<-structure(list(APNI,BNP,Ch_P,Con,CPA,DUP,ED,Grn,
	Lab,LD,MRLP,NF,PC,Respect,SDLP,SF,Soc,SNP,SSP,TUSC,TUV,UCUNF,
	UKIP), .Names = c("APNI","BNP","Ch_P","Con","CPA","DUP","ED","Grn","Lab",
"LD","MRLP","NF","PC","Respect","SDLP","SF","Soc","SNP","SSP","TUSC",
"TUV","UCUNF","UKIP" ));

## Run the algorithm
 \dontrun{fptp2av(data=IR, link=candidate_relations)}

}

\keyword{ electoral systems }
\keyword{ simulation }
