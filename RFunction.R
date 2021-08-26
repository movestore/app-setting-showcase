library('move')

rFunction = function(
    testTimestamp,
    testNumber,
    testString,
    testDropdown,
    testRadioButtons,
    testCheckbox,
    testDouble,
    forceError
    data
) {
  print(paste("testTimestamp Value: ", testTimestamp))
  print(paste("testNumber Value: ", testNumber))
  print(paste("testString Value: ", testString))
  print(paste("testDropdown Value: ", testDropdown))
  print(paste("testRadioButtons Value: ", testRadioButtons))
  print(paste("testCheckbox Value: ", testCheckbox))
  print(paste("testDouble value: ", testDouble))

  if (forceError) {
    3 / 0
  }
  data
}
