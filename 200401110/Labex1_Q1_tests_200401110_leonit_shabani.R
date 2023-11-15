library(testthat)

# Q 2-2
rm(list = ls())
if(file.exists("MapsThatChangedOurWorld_StoryMap_Data.csv")){
  file.remove("MapsThatChangedOurWorld_StoryMap_Data.csv")
}

# Q 2-3
source("Labex1_Q1_200401110_leonit_shabani.R")

# Q 2-4
test_that("Test : MapsThatChangedOurWorld_StoryMap_Data.csv adlı dosya aktif dizinde mevcuttur", {
  expect_identical(file.exists("MapsThatChangedOurWorld_StoryMap_Data.csv"), T)
})

#Q 2-5
test_that("Test : maps adlı değiken Global Workspace’de mevcuttur.", {
  expect_identical(exists("maps"), T)
})

# Q 2-6
test_that("Test: maps nesnesi bir data.frame’dir.", {
  expect_identical(class(maps) == "data.frame", T)
})

# Q 2-7
test_that("Test: maps adlı data.frame’in ilk sütunun adı “City” olmalıdır.", {
  expect_identical(colnames(maps)[1] == "City", T)
})

# Q 2-8
test_that("Test: maps adlı data.frame’in 5. sütunun adında “Title” kelimesi geçmelidir.", {
  expect_identical(grepl( "Title", colnames(maps)[5], fixed = TRUE), T)
})

# Q 2-9
test_that("Test: Latitude adlı sütün numeric değerlerden oluşmalıdır.", {
  expect_identical(is.numeric(maps$Latitude), T)
})

# Q 2-10
test_that("Test: Longitude adlı sütün numeric değerlerden oluşmalıdır.", {
  expect_identical(is.numeric(maps$Longitude), T)
})