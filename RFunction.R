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