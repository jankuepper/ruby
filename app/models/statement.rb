class Statement < ApplicationRecord
    @@balanceSheet = Array.new
    @@cashFlow = Array.new
    @@incomeStatement = Array.new
    @@overview = Array.new
    @@date
    @@year
    @@quarter
    attr_accessor :balanceSheet, :cashFlow, :incomeStatement, :overview, :date, :year, :quarter
end
