context("lubridate intervals")


test_that("lubridate intervals handle Etc timezones", {
  t1 <- as.POSIXct("2016-09-01 09:00:00", tz = "Etc/GMT+8")
  i1 <- lubridate::interval(as.POSIXct("2000-01-01 00:00:00"), as.POSIXct("2017-01-01 00:00:00"))
  i2 <- lubridate::interval(as.POSIXct("2000-01-01 00:00:00"), as.POSIXct("2015-01-01 00:00:00"))

  expect_true(lubridate::`%within%`(t1, i1))
  expect_false(lubridate::`%within%`(t1, i2))
})

test_that("lubridate with_tz UTC", {
  t1 <- as.POSIXct("2016-09-01 09:00:00", tz = "Etc/GMT+8")
  expect_silent(lubridate::with_tz(t1, tzone = "UTC"))
})

test_that("lubridate with_tz America/Vancouver", {
  t1 <- as.POSIXct("2016-09-01 09:00:00", tz = "Etc/GMT+8")
  expect_silent(lubridate::with_tz(t1, tzone = "America/Vancouver"))
})

test_that("lubridate with_tz America/Toronto", {
  t1 <- as.POSIXct("2016-09-01 09:00:00", tz = "Etc/GMT+8")
  expect_silent(lubridate::with_tz(t1, tzone = "America/Toronto"))
})

test_that("lubridate with_tz Etc/GMT+8", {
  t1 <- as.POSIXct("2016-09-01 09:00:00", tz = "UTC")
  expect_silent(lubridate::with_tz(t1, tzone = "Etc/GMT+8"))
})
