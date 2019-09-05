# SROCC SPM Figure 1: Script for producing graphs for each panel in the figure
# Andrés Alegría (andres.alegria@ipcc-wg2.awi.de)
# Last update: 2019.08.23

# Start by setting R's working directory to where this file is stored, along with the spreadsheet titled SROCC_SPM_figure_1_data.xlsx
setwd("~/Dropbox/SROCC_SPM_Figures/SROCC_SPM_figure_1")

# Load packages:
library(readxl)
library(ggplot2)
library(dplyr)
library(tidyr)
library(svglite)
library(pdftools)


# Panel (a) GMST-----------------------------------------------------------------
# Reshape from long format to wide format
data <- data.frame(read_excel("SROCC_SPM_figure_1_data.xlsx", sheet = "(a) GMST"))
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
ggsave(file="a_GMST.pdf", plot=Plot, width=7, height=5)
# dev.off()

  
# Panel (b) SST-----------------------------------------------------------------
# Reshape from long format to wide format
data <- data.frame(read_excel("SROCC_SPM_figure_1_data.xlsx", sheet = "(b) SST"))
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
ggsave(file="b_SST.pdf", plot=Plot, width=7, height=5)
# dev.off()


# Panel (c) Sea Level-----------------------------------------------------------------
# Reshape from long format to wide format
data <- data.frame(read_excel("SROCC_SPM_figure_1_data.xlsx", sheet = "(c) Sea Level"))
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
ggsave(file="c_SeaLevel.pdf", plot=Plot, width=7, height=5)
# dev.off()


# Panel (d) Marine heat waves-----------------------------------------------------------------
# Reshape from long format to wide format
data <- data.frame(read_excel("SROCC_SPM_figure_1_data.xlsx", sheet = "(d) Marine heat waves"))
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
ggsave(file="d_MHW.pdf", plot=Plot, width=7, height=5)
# dev.off()


# Panel (e) Ocean heat content-----------------------------------------------------------------
# Reshape from long format to wide format
data <- data.frame(read_excel("SROCC_SPM_figure_1_data.xlsx", sheet = "(e) OHC"))
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
ggsave(file="e_OHC.pdf", plot=Plot, width=7, height=5)
# dev.off()


# Panel (f) Surface Ocean pH-----------------------------------------------------------------
# Script not yet working
# Reshape from long format to wide format
data <- data.frame(read_excel("SROCC_SPM_figure_1_data.xlsx", sheet = "(f) pH"))
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
ggsave(file="f_pH.pdf", plot=Plot, width=7, height=5)
# dev.off()


# Panel (g) Greenland ice sheet-----------------------------------------------------------------
# Reshape from long format to wide format
data <- data.frame(read_excel("SROCC_SPM_figure_1_data.xlsx", sheet = "(g) Greenland ice sheet"))
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
ggsave(file="g_GreenlandIce.pdf", plot=Plot, width=7, height=5)
# dev.off()


# Panel (h) Arctic sea ice-----------------------------------------------------------------
# Reshape from long format to wide format
data <- data.frame(read_excel("SROCC_SPM_figure_1_data.xlsx", sheet = "(h) Arctic sea ice"))
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
ggsave(file="h_ArcticIce.pdf", plot=Plot, width=7, height=5)
# dev.off()


# Panel (h) Arctic sea ice (Anomaly)-----------------------------------------------------------------
# Reshape from long format to wide format
data <- data.frame(read_excel("SROCC_SPM_figure_1_data.xlsx", sheet = "(h) Arctic sea ice"))
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
ggsave(file="h_ArcticIce_Anomaly.pdf", plot=Plot, width=7, height=5)
# dev.off()


# Panel (i) Antarctica ice sheet-----------------------------------------------------------------
# Reshape from long format to wide format
data <- data.frame(read_excel("SROCC_SPM_figure_1_data.xlsx", sheet = "(i) Antarctica ice sheet"))
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
ggsave(file="i_AntarcticSeaIce.pdf", plot=Plot, width=7, height=5)
# dev.off()


# Panel (j) Arctic snow -----------------------------------------------------------------
# Reshape from long format to wide format
data <- data.frame(read_excel("SROCC_SPM_figure_1_data.xlsx", sheet = "(j) Arctic snow"))
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
ggsave(file="j_ArcticSnow.pdf", plot=Plot, width=7, height=5)
# dev.off()


# Panel (j) Arctic snow (Anomaly)-----------------------------------------------------------------
# Open Issue: Observed values not showing up properly when using the merged sheet, this is why a separate sheet was created for the anomaly data
# Reshape from long format to wide format
data <- data.frame(read_excel("SROCC_SPM_figure_1_data.xlsx", sheet = "(j) Arctic snow (Anomaly)"))
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
ggsave(file="j_ArcticSnow_Anomaly.pdf", plot=Plot, width=7, height=5)
# dev.off()


# Panel (k) Glacier mass-----------------------------------------------------------------
# Reshape from long format to wide format
data <- data.frame(read_excel("SROCC_SPM_figure_1_data.xlsx", sheet = "(k) Glacier mass"))
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
ggsave(file="k_GlacierMass.pdf", plot=Plot, width=7, height=5)
# dev.off()


# Panel (l) Permafrost-----------------------------------------------------------------
# Reshape from long format to wide format
data <- data.frame(read_excel("SROCC_SPM_figure_1_data.xlsx", sheet = "(l) Permafrost"))
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
ggsave(file="l_Permafrost.pdf", plot=Plot, width=7, height=5)
# dev.off()


# Panel (l) Permafrost (Anomaly)-----------------------------------------------------------------
# Reshape from long format to wide format
data <- data.frame(read_excel("SROCC_SPM_figure_1_data.xlsx", sheet = "(l) Permafrost"))
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
ggsave(file="l_Permafrost_Anomaly.pdf", plot=Plot, width=7, height=5)
# dev.off()


# Panel (m) Ocean Oxygen -----------------------------------------------------------------
# Reshape from long format to wide format
data <- data.frame(read_excel("SROCC_SPM_figure_1_data.xlsx", sheet = "(m) Oxygen"))
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
pdf_combine(c("a_GMST.pdf",
              "b_SST.pdf", 
              "c_SeaLevel.pdf", 
              "d_MHW.pdf",
              "e_OHC.pdf",
              "f_pH.pdf",
              "g_GreenlandIce.pdf",
#             "h_ArcticIce.pdf",
              "h_ArcticIce_Anomaly.pdf",
              "i_AntarcticSeaIce.pdf",
#             "j_ArcticSnow.pdf",
              "j_ArcticSnow_Anomaly.pdf",
              "k_GlacierMass.pdf",
#             "l_Permafrost.pdf",
              "l_Permafrost_Anomaly.pdf",
              "m_Oxygen.pdf"), 
              output = "SROCC_SPM_figure_1_graphs.pdf")

# Clean-up
file.remove("a_GMST.pdf",
            "b_SST.pdf", 
            "c_SeaLevel.pdf", 
            "d_MHW.pdf",
            "e_OHC.pdf",
            "f_pH.pdf",
            "g_GreenlandIce.pdf",
            "h_ArcticIce.pdf",
            "h_ArcticIce_Anomaly.pdf",
            "i_AntarcticSeaIce.pdf",
            "j_ArcticSnow.pdf",
            "j_ArcticSnow_Anomaly.pdf",
            "k_GlacierMass.pdf",
            "l_Permafrost.pdf",
            "l_Permafrost_Anomaly.pdf",
            "m_Oxygen.pdf")


