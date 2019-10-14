#' Detect plink exe for operating system
#'
#' Returns error if not found
#'
#' @export
#' @return path to plink binary
get_plink_exe <- function()
{
    os <- Sys.info()['sysname']
    a <- paste0("bin/plink_", os)
    if(os == "Windows") a <- paste0(a, ".exe")
    plink_bin <- system.file(a, package="ieugwasr")
	if(!file.exists(plink_bin))
	{
		stop("No plink2 executable available for OS '", os, "'. Please provide your own plink2 executable file using the plink_bin argument.")
	}
	return(plink_bin)
}
