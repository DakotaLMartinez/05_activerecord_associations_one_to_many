require "sinatra/activerecord"
require "require_all"
require "pry"


ActiveRecord::Base.establish_connection(
  adapter: "sqlite3",
  database: "db/activerecord_associations_one_to_many.sqlite"
)
ActiveRecord::Base.default_timezone = :utc
Time.zone = "UTC"

require_all "lib/activerecord_associations_one_to_many"

