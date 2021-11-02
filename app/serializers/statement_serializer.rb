class StatementSerializer < ActiveModel::Serializer
  attributes :id, :cashFlow, :balanceSheet, :incomeStatement, :overview, :date, :year, :quarter
end
