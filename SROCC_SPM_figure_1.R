# SROCC SPM Figure 1: Script for producing graphs for each panel in the figure
# Andrés Alegría (andres.alegria@ipcc-wg2.awi.de)
# Last update: 2019.08.23

# Start by setting R's working directory to where this file is stored, along with the spreadsheet titled SROCC_SPM_figure_1_data_tidy.xlsx
setwd("~/Dropbox/SROCC_SPM_Figures/SROCC_SPM_figure_1")

# Load packages:
library(readxl)
library(ggplot2)
library(dplyr)
library(tidyr)
library(svglite)
library(pdftools)

# Panel (a) Greenland ice sheet-----------------------------------------------------------------
# Reshape from long format to wide format
data <- data.frame(read_excel("SROCC_SPM_figure_1_data_tidy.xlsx", sheet = "(a) Greenland ice sheet"))
data <- spread(data, type, value)

title <- data[1,1]
unit <-   data[1,2]
relative <- data[1,3]
Author <- data[1,9]
SROCC_traceability <- !is.na(data[1,8])
Uncertainty <- data[1,10]
Source_cited <- !is.na(data[1,6])
Version <- data[1,11]

# Make the actual graph
Plot <- ggplot(data=data, aes(x=year, y=mean, ymin=lower, ymax=upper, fill=timeline)) +
  geom_line() + scale_x_continuous(limits = c(1950,2100)) +
  geom_ribbon(alpha=.5) + scale_fill_manual(values=c("Historical simulation"="brown", "observed"="green", "RCP2.6"="blue", "RCP8.5"="red")) +
  theme_minimal() + labs(x="", y=paste(unit)) +
  theme(legend.position="bottom", legend.box = "horizontal") +
  ggtitle(paste("Panel (a) ", title),
          subtitle = paste(relative,
                           "\n ", 
                           "\nAuthor(s):", Author, 
                           "\nTraceability ready:", SROCC_traceability, 
                           "\nCitation ready:", Source_cited,
                           "\nUncertainty used:", Uncertainty,
                           "\n ", 
                           "\nDate of last revision of data:", Version,
                           "\n "))
Plot
# Save to pdf
ggsave(file="a_GreenlandIce.pdf", plot=Plot, width=7, height=5)
# dev.off()


# Panel (b) Antarctica ice sheet-----------------------------------------------------------------
# Reshape from long format to wide format
data <- data.frame(read_excel("SROCC_SPM_figure_1_data_tidy.xlsx", sheet = "(b) Antarctica ice sheet"))
data <- spread(data, type, value)

title <- data[1,1]
unit <-   data[1,2]
relative <- data[1,3]
Author <- data[1,9]
SROCC_traceability <- !is.na(data[1,8])
Uncertainty <- data[1,10]
Source_cited <- !is.na(data[1,6])
Version <- data[1,11]

# Make the actual graph
Plot <- ggplot(data=data, aes(x=year, y=mean, ymin=lower, ymax=upper, fill=timeline)) +
  geom_line() + scale_x_continuous(limits = c(1950,2100)) +
  geom_ribbon(alpha=.5) + scale_fill_manual(values=c("Historical simulation"="brown", "observed"="green", "RCP2.6"="blue", "RCP8.5"="red")) +
  theme_minimal() + labs(x="", y=paste(unit)) +
  theme(legend.position="bottom", legend.box = "horizontal") +
  ggtitle(paste("Panel (b) ", title),
          subtitle = paste(relative,
                           "\n ", 
                           "\nAuthor(s):", Author, 
                           "\nTraceability ready:", SROCC_traceability, 
                           "\nCitation ready:", Source_cited,
                           "\nUncertainty used:", Uncertainty,
                           "\n ", 
                           "\nDate of last revision of data:", Version,
                           "\n "))
Plot
# Save to pdf
ggsave(file="b_AntarcticaIceSheet.pdf", plot=Plot, width=7, height=5)
# dev.off()


# Panel (c) Glacier mass-----------------------------------------------------------------
# Reshape from long format to wide format
data <- data.frame(read_excel("SROCC_SPM_figure_1_data_tidy.xlsx", sheet = "(c) Glacier mass"))
data <- spread(data, type, value)

title <- data[1,1]
unit <-   data[1,2]
relative <- data[1,3]
Author <- data[1,9]
SROCC_traceability <- !is.na(data[1,8])
Uncertainty <- data[1,10]
Source_cited <- !is.na(data[1,6])
Version <- data[1,11]

# Make the actual graph
Plot <- ggplot(data=data, aes(x=year, y=mean, ymin=lower, ymax=upper, fill=timeline)) +
  geom_line() + scale_x_continuous(limits = c(1950,2100)) +
  geom_ribbon(alpha=.5) + scale_fill_manual(values=c("Historical simulation"="brown", "observed_a"="chartreuse2","observed_b"="chartreuse3","observed_c"="chartreuse4", "RCP2.6"="blue", "RCP8.5"="red")) +
  theme_minimal() + labs(x="", y=paste(unit)) +
  theme(legend.position="bottom", legend.box = "horizontal") +
  ggtitle(paste("Panel (c) ", title),
          subtitle = paste(relative,
                           "\n ", 
                           "\nAuthor(s):", Author, 
                           "\nTraceability ready:", SROCC_traceability, 
                           "\nCitation ready:", Source_cited,
                           "\nUncertainty used:", Uncertainty,
                           "\n ", 
                           "\nDate of last revision of data:", Version,
                           "\n "))
Plot
# Save to pdf
ggsave(file="c_GlacierMass.pdf", plot=Plot, width=7, height=5)
# dev.off()


# Panel (d) Arctic snow -----------------------------------------------------------------
# Open Issue: Observed values not showing up properly when using the merged sheet, this is why a separate sheet was created for the anomaly data
# Reshape from long format to wide format
data <- data.frame(read_excel("SROCC_SPM_figure_1_data_tidy.xlsx", sheet = "(d) Arctic snow"))
data <- spread(data, type, value)

title <- data[1,1]
unit <-   data[1,2]
relative <- data[1,3]
Author <- data[1,9]
SROCC_traceability <- !is.na(data[1,8])
Uncertainty <- data[1,10]
Source_cited <- !is.na(data[1,6])
Version <- data[1,11]

# Make the actual graph
Plot <- ggplot(data=data, aes(x=year, y=mean_anomaly, ymin=lower_anomaly, ymax=upper_anomaly, fill=timeline)) +
  geom_line() + scale_x_continuous(limits = c(1950,2100)) +
  geom_ribbon(alpha=.5) + scale_fill_manual(values=c("Historical simulation"="brown", "observed"="green", "RCP2.6"="blue", "RCP8.5"="red")) +
  theme_minimal() + labs(x="", y=paste(unit)) +
  theme(legend.position="bottom", legend.box = "horizontal") +
  ggtitle(paste("Panel (d) ", title),
          subtitle = paste(relative,
                           "\n ", 
                           "\nAuthor(s):", Author, 
                           "\nTraceability ready:", SROCC_traceability, 
                           "\nCitation ready:", Source_cited,
                           "\nUncertainty used:", Uncertainty,
                           "\n ", 
                           "\nDate of last revision of data:", Version,
                           "\n "))
Plot
# Save to pdf
ggsave(file="d_ArcticSnow.pdf", plot=Plot, width=7, height=5)
# dev.off()


# Panel (e) Permafrost -----------------------------------------------------------------
# Reshape from long format to wide format
data <- data.frame(read_excel("SROCC_SPM_figure_1_data_tidy.xlsx", sheet = "(l) Permafrost"))
data <- spread(data, type, value)

title <- data[1,1]
unit <-   data[1,2]
relative <- data[1,3]
Author <- data[1,9]
SROCC_traceability <- !is.na(data[1,8])
Uncertainty <- data[1,10]
Source_cited <- !is.na(data[1,6])
Version <- data[1,11]

# Make the actual graph
Plot <- ggplot(data=data, aes(x=year, y=mean_anomaly, ymin=lower_anomaly, ymax=upper_anomaly, fill=timeline)) +
  geom_line() + scale_x_continuous(limits = c(1950,2100)) +
  geom_ribbon(alpha=.5) + scale_fill_manual(values=c("Historical simulation"="brown", "observed"="green", "RCP2.6"="blue", "RCP8.5"="red")) +
  theme_minimal() + labs(x="", y=paste(unit)) +
  theme(legend.position="bottom", legend.box = "horizontal") +
  ggtitle(paste("Panel (e) ", title),
          subtitle = paste(relative,
                           "\n ", 
                           "\nAuthor(s):", Author, 
                           "\nTraceability ready:", SROCC_traceability, 
                           "\nCitation ready:", Source_cited,
                           "\nUncertainty used:", Uncertainty,
                           "\n ", 
                           "\nDate of last revision of data:", Version,
                           "\n "))
Plot
# Save to pdf
ggsave(file="e_Permafrost.pdf", plot=Plot, width=7, height=5)
# dev.off()


# Panel (f) Arctic sea ice -----------------------------------------------------------------
# Reshape from long format to wide format
data <- data.frame(read_excel("SROCC_SPM_figure_1_data_tidy.xlsx", sheet = "(f) Arctic sea ice"))
data <- spread(data, type, value)

title <- data[1,1]
unit <-   data[1,2]
relative <- data[1,3]
Author <- data[1,9]
SROCC_traceability <- !is.na(data[1,8])
Uncertainty <- data[1,10]
Source_cited <- !is.na(data[1,6])
Version <- data[1,11]

# Make the actual graph
Plot <- ggplot(data=data, aes(x=year, y=mean_anomaly, ymin=lower_anomaly, ymax=upper_anomaly, fill=timeline)) +
  geom_line() + scale_x_continuous(limits = c(1950,2100)) +
  geom_ribbon(alpha=.5) + scale_fill_manual(values=c("Historical simulation"="brown", "observed"="green", "RCP2.6"="blue", "RCP8.5"="red")) +
  theme_minimal() + labs(x="", y=paste(unit)) +
  theme(legend.position="bottom", legend.box = "horizontal") +
  ggtitle(paste("Panel (f) ", title),
          subtitle = paste(relative,
                           "\n ", 
                           "\nAuthor(s):", Author, 
                           "\nTraceability ready:", SROCC_traceability, 
                           "\nCitation ready:", Source_cited,
                           "\nUncertainty used:", Uncertainty,
                           "\n ", 
                           "\nDate of last revision of data:", Version,
                           "\n "))
Plot
# Save to pdf
ggsave(file="f_ArcticIce.pdf", plot=Plot, width=7, height=5)
# dev.off()


# Panel (g) GMST-----------------------------------------------------------------
# Reshape from long format to wide format
data <- data.frame(read_excel("SROCC_SPM_figure_1_data_tidy.xlsx", sheet = "(g) GMST"))
data <- spread(data, type, value)

title <- data[1,1]
unit <-   data[1,2]
relative <- data[1,3]
Author <- data[1,9]
SROCC_traceability <- !is.na(data[1,8])
Uncertainty <- data[1,10]
Source_cited <- !is.na(data[1,6])
Version <- data[1,11]

# Make the actual graph
Plot <- ggplot(data=data, aes(x=year, y=mean, ymin=lower, ymax=upper, fill=timeline)) +
  geom_line() + scale_x_continuous(limits = c(1950,2100)) +
  geom_ribbon(alpha=.5) + scale_fill_manual(values=c("Historical simulation"="brown", "observed"="green", "RCP2.6"="blue", "RCP8.5"="red")) +
  theme_minimal() + labs(x="", y=paste(unit)) +
  theme(legend.position="bottom", legend.box = "horizontal") +
  ggtitle(paste("Panel (g) ", title),
          subtitle = paste(relative,
                           "\n ", 
                           "\nAuthor(s):", Author, 
                           "\nTraceability ready:", SROCC_traceability, 
                           "\nCitation ready:", Source_cited,
                           "\nUncertainty used:", Uncertainty,
                           "\n ", 
                           "\nDate of last revision of data:", Version,
                           "\n "))
Plot
# Save to pdf
ggsave(file="g_GMST.pdf", plot=Plot, width=7, height=5)
# dev.off()

  
# Panel (h) SST-----------------------------------------------------------------
# Reshape from long format to wide format
data <- data.frame(read_excel("SROCC_SPM_figure_1_data_tidy.xlsx", sheet = "(h) SST"))
data <- spread(data, type, value)

title <- data[1,1]
unit <-   data[1,2]
relative <- data[1,3]
Author <- data[1,9]
SROCC_traceability <- !is.na(data[1,8])
Uncertainty <- data[1,10]
Source_cited <- !is.na(data[1,6])
Version <- data[1,11]

# Make the actual graph
Plot <- ggplot(data=data, aes(x=year, y=mean, ymin=lower, ymax=upper, fill=timeline)) +
  geom_line() + scale_x_continuous(limits = c(1950,2100)) +
  geom_ribbon(alpha=.5) + scale_fill_manual(values=c("Historical simulation"="brown", "observed"="green", "RCP2.6"="blue", "RCP8.5"="red")) +
  theme_minimal() + labs(x="", y=paste(unit)) +
  theme(legend.position="bottom", legend.box = "horizontal") +
  ggtitle(paste("Panel (h) ", title),
          subtitle = paste(relative,
                           "\n ", 
                           "\nAuthor(s):", Author, 
                           "\nTraceability ready:", SROCC_traceability, 
                           "\nCitation ready:", Source_cited,
                           "\nUncertainty used:", Uncertainty,
                           "\n ", 
                           "\nDate of last revision of data:", Version,
                           "\n "))
Plot
# Save to pdf
ggsave(file="h_SST.pdf", plot=Plot, width=7, height=5)
# dev.off()


# Panel (i) Sea Level-----------------------------------------------------------------
# Reshape from long format to wide format
data <- data.frame(read_excel("SROCC_SPM_figure_1_data_tidy.xlsx", sheet = "(i) Sea Level"))
data <- spread(data, type, value)

title <- data[1,1]
unit <-   data[1,2]
relative <- data[1,3]
Author <- data[1,9]
SROCC_traceability <- !is.na(data[1,8])
Uncertainty <- data[1,10]
Source_cited <- !is.na(data[1,6])
Version <- data[1,11]

# Make the actual graph
Plot <- ggplot(data=data, aes(x=year, y=mean, ymin=lower, ymax=upper, fill=timeline)) +
  geom_line() + scale_x_continuous(limits = c(1950,2100)) +
  geom_ribbon(alpha=.5) + scale_fill_manual(values=c("Historical simulation"="brown", "observed"="green", "RCP2.6"="blue", "RCP8.5"="red")) +
  theme_minimal() + labs(x="", y=paste(unit)) +
  theme(legend.position="bottom", legend.box = "horizontal") +
  ggtitle(paste("Panel (i) ", title),
          subtitle = paste(relative,
                           "\n ", 
                           "\nAuthor(s):", Author, 
                           "\nTraceability ready:", SROCC_traceability, 
                           "\nCitation ready:", Source_cited,
                           "\nUncertainty used:", Uncertainty,
                           "\n ", 
                           "\nDate of last revision of data:", Version,
                           "\n "))
Plot
# Save to pdf
ggsave(file="i_SeaLevel.pdf", plot=Plot, width=7, height=5)
# dev.off()


# Panel (j) Ocean heat content-----------------------------------------------------------------
# Reshape from long format to wide format
data <- data.frame(read_excel("SROCC_SPM_figure_1_data_tidy.xlsx", sheet = "(j) OHC"))
data <- spread(data, type, value)

title <- data[1,1]
unit <-   data[1,2]
relative <- data[1,3]
Author <- data[1,9]
SROCC_traceability <- !is.na(data[1,8])
Uncertainty <- data[1,10]
Source_cited <- !is.na(data[1,6])
Version <- data[1,11]

# Make the actual graph
Plot <- ggplot(data=data, aes(x=year, y=mean, ymin=lower, ymax=upper, fill=timeline)) +
  geom_line() + scale_x_continuous(limits = c(1950,2100)) +
  geom_ribbon(alpha=.5) + scale_fill_manual(values=c("Historical simulation"="brown", "observed_a"="chartreuse2","observed_b"="chartreuse3","observed_c"="chartreuse4", "RCP2.6"="blue", "RCP8.5"="red")) +
  theme_minimal() + labs(x="", y=paste(unit)) +
  theme(legend.position="bottom", legend.box = "horizontal") +
  ggtitle(paste("Panel (j) ", title),
          subtitle = paste(relative,
                           "\n ", 
                           "\nAuthor(s):", Author, 
                           "\nTraceability ready:", SROCC_traceability, 
                           "\nCitation ready:", Source_cited,
                           "\nUncertainty used:", Uncertainty,
                           "\n ", 
                           "\nDate of last revision of data:", Version,
                           "\n "))
Plot
# Save to pdf
ggsave(file="j_OHC.pdf", plot=Plot, width=7, height=5)
# dev.off()


# Panel (k) Marine heat waves-----------------------------------------------------------------
# Reshape from long format to wide format
data <- data.frame(read_excel("SROCC_SPM_figure_1_data_tidy.xlsx", sheet = "(k) Marine heat waves"))
data <- spread(data, type, value)
data <- subset(data, relative_to == "surface ocean, relative to 1986-2005")

title <- data[1,1]
unit <-   data[1,2]
relative <- data[1,3]
Author <- data[1,9]
SROCC_traceability <- !is.na(data[1,8])
Uncertainty <- data[1,10]
Source_cited <- !is.na(data[1,6])
Version <- data[1,11]

# Make the actual graph
Plot <- ggplot(data=data, aes(x=year, y=mean, ymin=lower, ymax=upper, fill=timeline)) +
  geom_line() + scale_x_continuous(limits = c(1950,2100)) +
  geom_ribbon(alpha=.5) + scale_fill_manual(values=c("Historical simulation"="brown", "observed"="green", "RCP2.6"="blue", "RCP8.5"="red")) +
  theme_minimal() + labs(x="", y=paste(unit)) +
  theme(legend.position="bottom", legend.box = "horizontal") +
  ggtitle(paste("Panel (k) ", title),
          subtitle = paste(relative,
                           "\n ", 
                           "\nAuthor(s):", Author, 
                           "\nTraceability ready:", SROCC_traceability, 
                           "\nCitation ready:", Source_cited,
                           "\nUncertainty used:", Uncertainty,
                           "\n ", 
                           "\nDate of last revision of data:", Version,
                           "\n "))
Plot
# Save to pdf
ggsave(file="k_MHW.pdf", plot=Plot, width=7, height=5)
# dev.off()


# Panel (l) Surface Ocean pH-----------------------------------------------------------------
# Script not yet working
# Reshape from long format to wide format
data <- data.frame(read_excel("SROCC_SPM_figure_1_data_tidy.xlsx", sheet = "(l) pH"))
data <- spread(data, type, value)

title <- data[1,1]
unit <-   data[1,2]
relative <- data[1,3]
Author <- data[1,9]
SROCC_traceability <- !is.na(data[1,8])
Uncertainty <- data[1,10]
Source_cited <- !is.na(data[1,6])
Version <- data[1,11]

# Make the actual graph
Plot <- ggplot(data=data, aes(x=year, y=mean, ymin=lower, ymax=upper, fill=timeline)) +
  geom_line() + scale_x_continuous(limits = c(1950,2100)) +
  geom_ribbon(alpha=.5) + scale_fill_manual(values=c("Historical simulation"="brown", "observed"="green", "RCP2.6"="blue", "RCP8.5"="red")) +
  theme_minimal() + labs(x="", y=paste(unit)) +
  theme(legend.position="bottom", legend.box = "horizontal") +
  ggtitle(paste("Panel (l) ", title),
          subtitle = paste(relative,
                           "\n ", 
                           "\nAuthor(s):", Author, 
                           "\nTraceability ready:", SROCC_traceability, 
                           "\nCitation ready:", Source_cited,
                           "\nUncertainty used:", Uncertainty,
                           "\n ", 
                           "\nDate of last revision of data:", Version,
                           "\n "))
Plot
# Save to pdf
ggsave(file="l_pH.pdf", plot=Plot, width=7, height=5)
# dev.off()


# Panel (m) Ocean Oxygen -----------------------------------------------------------------
# Reshape from long format to wide format
data <- data.frame(read_excel("SROCC_SPM_figure_1_data_tidy.xlsx", sheet = "(m) Oxygen"))
data <- spread(data, type, value)

title <- data[1,1]
unit <-   data[1,2]
relative <- data[1,3]
Author <- data[1,9]
SROCC_traceability <- !is.na(data[1,8])
Uncertainty <- data[1,10]
Source_cited <- !is.na(data[1,6])
Version <- data[1,11]

# Make the actual graph
Plot <- ggplot(data=data, aes(x=year, y=mean, ymin=lower, ymax=upper, fill=timeline)) +
  geom_line() + scale_x_continuous(limits = c(1950,2100)) +
  geom_ribbon(alpha=.5) + scale_fill_manual(values=c("Historical simulation"="brown", "observed"="green", "RCP2.6"="blue", "RCP8.5"="red")) +
  theme_minimal() + labs(x="", y=paste(unit)) +
  theme(legend.position="bottom", legend.box = "horizontal") +
  ggtitle(paste("Panel (m) ", title),
          subtitle = paste(relative,
                           "\n ", 
                           "\nAuthor(s):", Author, 
                           "\nTraceability ready:", SROCC_traceability, 
                           "\nCitation ready:", Source_cited,
                           "\nUncertainty used:", Uncertainty,
                           "\n ", 
                           "\nDate of last revision of data:", Version,
                           "\n "))
Plot
# Save to pdf
ggsave(file="m_Oxygen.pdf", plot=Plot, width=7, height=5)
# dev.off()


# Save all graphs into a singöle pdf-----------------------------------------------------------------
pdf_combine(c("a_GreenlandIce.pdf",
              "b_AntarcticaIceSheet.pdf",
              "c_GlacierMass.pdf",
              "d_ArcticSnow.pdf",
              "e_Permafrost.pdf",
              "f_ArcticIce.pdf",
              "g_GMST.pdf",
              "h_SST.pdf", 
              "i_SeaLevel.pdf", 
              "j_OHC.pdf",
              "k_MHW.pdf",
              "l_pH.pdf",
              "m_Oxygen.pdf"), 
              output = "SROCC_SPM_figure_1_graphs.pdf")

# Clean-up
file.remove("a_GreenlandIce.pdf",
            "b_AntarcticaIceSheet.pdf",
            "c_GlacierMass.pdf",
            "d_ArcticSnow.pdf",
            "e_Permafrost.pdf",
            "f_ArcticIce.pdf",
            "g_GMST.pdf",
            "h_SST.pdf", 
            "i_SeaLevel.pdf", 
            "j_OHC.pdf",
            "k_MHW.pdf",
            "l_pH.pdf",
            "m_Oxygen.pdf")