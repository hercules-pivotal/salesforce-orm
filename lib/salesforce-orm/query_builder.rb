require 'active_record'
require 'nulldb/core'

module SalesforceOrm
  class QueryBuilder < ActiveRecord::Base

    DUMMY_TABLE_NAME = 'table_name'

    self.table_name = DUMMY_TABLE_NAME
    NullDB.configure {|ndb| ndb.project_root = "./"}

    establish_connection(
      adapter: :nulldb,
      schema: 'spec/fixtures/schema.rb'
    )
  end
end
