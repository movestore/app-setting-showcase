library('move')

rFunction = function(
    testTimestamp,
    testNumber,
    testString,
    testDropdown,
    testRadioButtons,
    testCheckbox,
    testDouble,
    testLocalFile,
    testUserFile,
    forceError,
    data
) {
  printArg("testTimestamp", testTimestamp)
  printArg("testNumber", testNumber)
  printArg("testString", testString)
  printArg("testDropdown", testDropdown)
  printArg("testRadioButtons", testRadioButtons)
  printArg("testCheckbox", testCheckbox)
  printArg("testDouble", testDouble)
  printArg("testLocalFile", testLocalFile)
  printArg("testUserFile", testUserFile)

  localFile <- paste0(getAppFilePath("testLocalFile", fallback=FALSE), "expected.txt")
  printFileInfo("testLocalFile", localFile)

  userFile <- paste0(getAppFilePath("testUserFile", fallback=FALSE), testUserFile)
  printFileInfo("testUserFile", userFile)

  if (forceError) {
    logger.warn("I will now force an error (as you requested!)")
    stop("as you wish")
  }
  return(data)
}

printArg <- function(name, value) {
  v <- if (is.null(value)) 'null-value' else value
  logger.info("%s: '%s'", name, v)
}

printFileInfo <- function(settingId, file) {
  info <- file.info(file)
  logger.info("%s: %s", settingId, toString(info))
}