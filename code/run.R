#' ---
#' title: 'The best report ever'
#' author: 'Me, Myself, and I'
#' purpose: Run Scripts and R Markdown Files
#' start date: 2022-07-22
#' date modified: 2022-07-22                                          # CHANGE
#' Notes:                                                               # CHANGE
#' ---

# START ------------------------------------------------------------------------

# *** REPORT KNOWNS ------------------------------------------------------------
report_title <- 'The best report ever'
report_authors <- 'Me, Myself, and I'
report_yr <- substr(x = Sys.Date(), start = 1, stop = 4)            # SUGGESTION

# *** OUTPUT TYPE --------------------------------------------------------------
#Is this for InDesign?
indesign_flowin <- FALSE

# *** SOURCE SUPPORT SCRIPTS ---------------------------------------------------

source('./code/directories.R')

source('./code/functions.R')

source('./code/dataDL.R')

source('./code/data.R')



# *** RENV: SAVE PACKAGES USED TO CREATE THIS REPORT ---------------------------
# renv::init()
# renv::snapshot()

# *** SIGN INTO GOOGLE DRIVE----------------------------------------------------

# googledrive::drive_deauth()
# googledrive::drive_auth()
# 1

# RUN FIGURES, TABLES, & EQUATIONS FOR REPORT ----------------------------------

if (TRUE) {
  cnt_chapt_content<-"000"
  filename0<-paste0(cnt_chapt, "_")
  rmarkdown::render(paste0(dir_code, "/0_figtab.Rmd"),
                    output_dir = dir_out_ref,
                    output_file = paste0(filename0, cnt_chapt_content, ".docx"))

  save(list_figures, file=paste0(dir_out_figures, "/report_figures.rdata"))
  save(list_tables, file=paste0(dir_out_tables, "/report_tables.rdata"))
  save(list_equations, file=paste0(dir_out_tables, "/report_equations.rdata"))
}

load(file = paste0(dir_out_figures, "/report_figures.rdata"))
load(file = paste0(dir_out_tables, "/report_tables.rdata"))
load(file = paste0(list_equations, "/report_equations.rdata"))

# RUN EACH REPORT SECTION ------------------------------------------------------

# *** RUN EACH REPORT SECTION --------------------------------------------------


# *** 0 - Example ------------------------
cnt_chapt<-auto_counter(cnt_chapt)
cnt_chapt_content<-"001"
filename0<-paste0(cnt_chapt, "_example_")
rmarkdown::render(paste0(dir_code, "/0_example.Rmd"),
                  output_dir = dir_out_chapters,
                  output_file = paste0(filename0, cnt_chapt_content, ".docx"))


# *** 1 - Abstract ------------------------
cnt_chapt<-auto_counter(cnt_chapt)
cnt_chapt_content<-"001"
filename0<-paste0(cnt_chapt, "_abstract_")
rmarkdown::render(paste0(dir_code, "/1_abstract.Rmd"),
                  output_dir = dir_out_chapters,
                  output_file = paste0(filename0, cnt_chapt_content, ".docx"))


# *** 2 - Introduction ------------------------
cnt_chapt<-auto_counter(cnt_chapt)
cnt_chapt_content<-"001"
filename0<-paste0(cnt_chapt, "_introduction_")
rmarkdown::render(paste0(dir_code, "/2_introduction.Rmd"),
                  output_dir = dir_out_chapters,
                  output_file = paste0(filename0, cnt_chapt_content, ".docx"))


# *** 3 - History ------------------------
cnt_chapt<-auto_counter(cnt_chapt)
cnt_chapt_content<-"001"
filename0<-paste0(cnt_chapt, "_history_")
rmarkdown::render(paste0(dir_code, "/3_history.Rmd"),
                  output_dir = dir_out_chapters,
                  output_file = paste0(filename0, cnt_chapt_content, ".docx"))


# *** 4 - Methods ------------------------
cnt_chapt<-auto_counter(cnt_chapt)
cnt_chapt_content<-"001"
filename0<-paste0(cnt_chapt, "_methods_")
rmarkdown::render(paste0(dir_code, "/4_methods.Rmd"),
                  output_dir = dir_out_chapters,
                  output_file = paste0(filename0, cnt_chapt_content, ".docx"))


# *** 5 - Results ------------------------
cnt_chapt<-auto_counter(cnt_chapt)
cnt_chapt_content<-"001"
filename0<-paste0(cnt_chapt, "_results_")
rmarkdown::render(paste0(dir_code, "/5_results.Rmd"),
                  output_dir = dir_out_chapters,
                  output_file = paste0(filename0, cnt_chapt_content, ".docx"))


# *** 6 - Results_discussion ------------------------
cnt_chapt<-auto_counter(cnt_chapt)
cnt_chapt_content<-"001"
filename0<-paste0(cnt_chapt, "_results_discussion_")
rmarkdown::render(paste0(dir_code, "/6_results_discussion.Rmd"),
                  output_dir = dir_out_chapters,
                  output_file = paste0(filename0, cnt_chapt_content, ".docx"))


# *** 7 - Endmatter ------------------------
cnt_chapt<-auto_counter(cnt_chapt)
cnt_chapt_content<-"001"
filename0<-paste0(cnt_chapt, "_endmatter_")
rmarkdown::render(paste0(dir_code, "/7_endmatter.Rmd"),
                  output_dir = dir_out_chapters,
                  output_file = paste0(filename0, cnt_chapt_content, ".docx"))


# *** 8 - Presentation ------------------------
cnt_chapt<-auto_counter(cnt_chapt)
cnt_chapt_content<-"001"
filename0<-paste0(cnt_chapt, "_presentation_")
rmarkdown::render(paste0(dir_code, "/8_presentation.Rmd"),
                  output_dir = dir_out_chapters,
                  output_file = paste0(filename0, cnt_chapt_content, ".pptx"))



# MAKE MASTER DOCX -------------------------------------------------------------

#USE GUIDENCE FROM THIS LINK
#https://support.microsoft.com/en-us/help/2665750/how-to-merge-multiple-word-documents-into-one

# SAVE METADATA ----------------------------------------------------------------

con <- file(paste0(dir_out_todaysrun, "metadata.log"))
sink(con, append=TRUE)
sessionInfo()
sink() # Restore output to console
# cat(readLines("notes.log"), sep="\n") # Look at the log

