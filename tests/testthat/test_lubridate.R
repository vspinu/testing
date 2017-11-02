context("lubridate timezones")

test_that("with_tz UTC", {
  t1 <- as.POSIXct("2016-09-01 09:00:00", tz = "Etc/GMT+8")
  expect_equal(lubridate::with_tz(t1, tzone = "UTC"),
               as.POSIXct("2016-09-01 17:00:00", tz = "UTC"))
})

test_that("with_tz America/Vancouver", {
  t1 <- as.POSIXct("2016-09-01 09:00:00", tz = "Etc/GMT+8")
  expect_equal(lubridate::with_tz(t1, tzone = "America/Vancouver"),
               as.POSIXct("2016-09-01 10:00:00", tz = "America/Vancouver"))
})

test_that("with_tz Etc/GMT+8", {
  t1 <- as.POSIXct("2016-09-01 09:00:00", tz = "UTC")
  expect_equal(lubridate::with_tz(t1, tzone = "Etc/GMT+8"),
               as.POSIXct("2016-09-01 01:00:00", tz = "Etc/GMT+8"))
})


test_that("with_tz America/New_York", {
  t1 <- as.POSIXct("2016-09-01 09:00:00", tz = "UTC")
  expect_equal(lubridate::with_tz(t1, tzone = "America/New_York"),
               as.POSIXct("2016-09-01 05:00:00", tz = "America/New_York"))
})

test_that("with_tz Europe/Amsterdam", {
  t1 <- as.POSIXct("2016-09-01 09:00:00", tz = "UTC")
  expect_equal(lubridate::with_tz(t1, tzone = "Europe/Amsterdam"),
               as.POSIXct("2016-09-01 11:00:00", tz = "Europe/Amsterdam"))
})

test_that("with_tz America/New_York", {
  t1 <- as.POSIXct("2016-09-01 09:00:00", tz = "UTC")
  expect_equal(lubridate::with_tz(t1, tzone = "EST"),
               as.POSIXct("2016-09-01 04:00:00", tz = "EST"))
})

test_that("with_tz Europe/Amsterdam", {
  t1 <- as.POSIXct("2016-09-01 09:00:00", tz = "UTC")
  expect_equal(lubridate::with_tz(t1, tzone = "Europe/Amsterdam"),
               as.POSIXct("2016-09-01 11:00:00", tz = "Europe/Amsterdam"))
})

test_that("force_tz with_tz UTC", {
  t1 <- as.POSIXct("2016-09-01 09:00:00", tz = "Etc/GMT+8")
  expect_equal(lubridate::force_tz(t1, tzone = "UTC"),
               as.POSIXct("2016-09-01 09:00:00", tz = "UTC"))
})

test_that("force_tz with_tz America/Vancouver", {
  t1 <- as.POSIXct("2016-09-01 09:00:00", tz = "Etc/GMT+8")
  expect_equal(lubridate::force_tz(t1, tzone = "America/Vancouver"),
               as.POSIXct("2016-09-01 09:00:00", tz = "America/Vancouver"))
})

test_that("force_tz Etc/GMT+8", {
  t1 <- as.POSIXct("2016-09-01 09:00:00", tz = "UTC")
  expect_equal(lubridate::force_tz(t1, tzone = "Etc/GMT+8"),
               as.POSIXct("2016-09-01 09:00:00", tz = "Etc/GMT+8"))
})


test_that("force_tz America/New_York", {
  t1 <- as.POSIXct("2016-09-01 09:00:00", tz = "UTC")
  expect_equal(lubridate::force_tz(t1, tzone = "America/New_York"),
               as.POSIXct("2016-09-01 09:00:00", tz = "America/New_York"))
})

test_that("force_tz Europe/Amsterdam", {
  t1 <- as.POSIXct("2016-09-01 09:00:00", tz = "UTC")
  expect_equal(lubridate::force_tz(t1, tzone = "Europe/Amsterdam"),
               as.POSIXct("2016-09-01 09:00:00", tz = "Europe/Amsterdam"))
})
