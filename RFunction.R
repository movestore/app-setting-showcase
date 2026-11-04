rFunction = function(
    testTimestamp,
    testNumber,
    testString,
    testSecret,
    testDropdown,
    testRadioButtons,
    testCheckbox,
    testDouble,
    testUserFile,
    forceError,
    data
) {
  printArg("testTimestamp", testTimestamp)
  printArg("testNumber", testNumber)
  printArg("testString", testString)
  printArg("testSecret", testSecret)
  printArg("testDropdown", testDropdown)
  printArg("testRadioButtons", testRadioButtons)
  printArg("testCheckbox", testCheckbox)
  printArg("testDouble", testDouble)
  printArg("testUserFile", testUserFile)

  userFile <- getAuxiliaryFilePath("testUserFile", fallback=TRUE)
  printFileInfo("testUserFile", userFile)

  if (forceError) {
    logger.warn("I will now force an error (as you requested!)")
    stop("as you wish")
  }
  return(data)
}

printArg <- function(name, value) {
  v <- if (is.null(value)) 'null-value' else value
  logger.info("[%s]: '%s'", name, v)
}

printFileInfo <- function(settingId, file) {
  if (!is.null(file) && file.exists(file)) {
    logger.info("[%s]: %s", settingId, readChar(file, file.info(file)$size))
  } else {
    logger.info("[%s]: %s", settingId, "file is not present!")
  }
}