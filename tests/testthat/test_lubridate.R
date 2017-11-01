context("lubridate intervals")


test_that("lubridate intervals handle Etc timezones", {
  t1 <- as.POSIXct("2016-09-01 09:00:00", tz = "Etc/GMT+8")
  i1 <- lubridate::interval(as.POSIXct("2000-01-01 00:00:00"), as.POSIXct("2017-01-01 00:00:00"))
  i2 <- lubridate::interval(as.POSIXct("2000-01-01 00:00:00"), as.POSIXct("2015-01-01 00:00:00"))

  expect_true(lubridate::`%within%`(t1, i1))
  expect_false(lubridate::`%within%`(t1, i2))
})
