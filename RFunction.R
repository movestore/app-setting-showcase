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
  print(paste("testTimestamp Value: ", testTimestamp))
  print(paste("testNumber Value: ", testNumber))
  print(paste("testString Value: ", testString))
  print(paste("testDropdown Value: ", testDropdown))
  print(paste("testRadioButtons Value: ", testRadioButtons))
  print(paste("testCheckbox Value: ", testCheckbox))
  print(paste("testDouble value: ", testDouble))
  print(paste("testLocalFile value: ", testLocalFile))

  if (forceError) {
    logger.warn("I will now force an error (as you requested!)")
    stop("as you wish")
  }
  return(data)
}
