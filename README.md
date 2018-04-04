Awesome Series @ Planet Ruby

[Rubies (Virtual Machines, Compilers, ...)](https://github.com/planetruby/awesome-rubies) • 
[ActiveRecord](https://github.com/planetruby/awesome-activerecord)  •
[Webframeworks (Micro, Macro, APIs, ...)](https://github.com/planetruby/awesome-webframeworks) •
[Events (Conferences, Camps, Meetups, ...)](https://github.com/planetruby/awesome-events) •
[Blogs (News, Opinions, Podcasts, ...)](https://github.com/planetruby/awesome-blogs)


# ActiveRecord

A collection of awesome ActiveRecord goodies, libraries, tools, extensions, guides, etc.

---

[ANNOUNCEMENT] Looking for awesome world data (countries, cities, flags, languages, currencies, etc.)? See the [Awesome World List @ Planet Open Data](https://github.com/planetopendata/awesome-world). 

---

#### _Contributions welcome. Anything missing? Send in a pull request. Thanks._

Note: :congratulations: stands for the Gem of the Week article in the [Gem of the Week Series @ Planet Ruby](http://planetruby.github.io/gems).


[ActsAsList     - Sortable](#) •
[ActsAsTree     - Hierarchy / Nested](#) •
[ActsAsTaggable - Tags & Taggings, Categories & Categorizations](#) •
[Date / Time](#)

<!-- todo: add all categories; fix anchors -->


## ActiveRecord HQ

- **ActiveRecord** (gem: [activerecord](https://rubygems.org/gems/activerecord), github: [rails/rails/activerecord](https://github.com/rails/rails/tree/master/activerecord))
   - 2014: 4.2.0 (Dec/20); 4.1.0 (Apr/8) ++ 2013: 4.0.0 (Jun/25) ++ 2012: 3.2.0 (Jan/20) ++  2011: 3.1.0 (Aug/31) ++ 2010: 3.0.0 (Aug/29) ++  2007: 2.0.0 (Dec/6) ++ 2004: 1.0.0 (Oct/25)

Documentation

- [RDoc @ RubyDoc.info](http://www.rubydoc.info/gems/activerecord)
- [Article - 20,000 Leagues Under ActiveRecord](http://patshaughnessy.net/2014/9/17/20000-leagues-under-activerecord) - by Pat Shaughnessy

<!--
    - [ActiveRecord::Base](http://www.rubydoc.info/gems/activerecord/ActiveRecord/Base)
    - [ActiveRecord::Associations::ClassMethods](http://www.rubydoc.info/gems/activerecord/ActiveRecord/Associations/ClassMethods) - belongs_to, has_one, has_many, has_and_belongs_to_many and friends
-->

Rails Guides Series

- [Active Record Basics](http://guides.rubyonrails.org/active_record_basics.html)
- [Active Record Migrations](http://guides.rubyonrails.org/active_record_migrations.html)
- [Active Record Validations](http://guides.rubyonrails.org/active_record_validations.html)
- [Active Record Callbacks](http://guides.rubyonrails.org/active_record_callbacks.html)
- [Active Record Associations](http://guides.rubyonrails.org/association_basics.html)
- [Active Record Query Interface](http://guides.rubyonrails.org/active_record_querying.html)


## ActsAsList - Sortable

- **ActsAsList** (gem: [acts_as_list](https://rubygems.org/gems/acts_as_list), github: [swanandp/acts_as_list](https://github.com/swanandp/acts_as_list)) - extension provides the capabilities for sorting and reordering a number of objects in a list 
- **ranked-model** (gem: [ranked-model](https://rubygems.org/gems/ranked-model), github: [mixonic/ranked-model](https://github.com/mixonic/ranked-model))


## ActsAsTree - Hierarchy / Nested

- **ActsAsTree** (gem: [acts_as_tree](https://rubygems.org/gems/acts_as_tree), github: [amerine/acts_as_tree](https://github.com/amerine/acts_as_tree)) - extends ActiveRecord to add support for organizing items into parent–children relationships
- **Ancestry** (gem: [ancestry](https://rubygems.org/gems/ancestry), github: [stefankroes/ancestry](https://github.com/stefankroes/ancestry)) - organise ActiveRecord model into a tree structure


## ActsAsTaggable - Tags & Taggings, Categories & Categorizations

- **ActsAsTaggableOn**  (gem: [acts-as-taggable-on](https://rubygems.org/gems/acts-as-taggable-on), github: [mbleigh/acts-as-taggable-on](https://github.com/mbleigh/acts-as-taggable-on)) - a tagging plugin for ActiveRecord that allows for custom tagging along dynamic contexts
- **TagUtils** (gem: [tagutils](https://rubygems.org/gems/tagutils), github: [rubylibs/tagutils](https://github.com/rubylibs/tagutils)) -  tag utilities (tag, taggings, tag list, etc.) 
- **Gutentag** (gem: [gutentag](https://rubygems.org/gems/gutentag), github: [pat/gutentag](https://github.com/pat/gutentag)) - a good, simple, solid tagging extension for ActiveRecord


## Date / Time

- **ByStar** (gem: [by_star](https://rubygems.org/gems/by_star), github: [radar/by_star](https://github.com/radar/by_star)) - easily and reliably query ActiveRecord objects based on time e.g. by_year, yesterday, before( Date.today )
- **Season** (gem: [season](https://rubygems.org/gems/season), github [joaodiogocosta/season](https://github.com/joaodiogocosta/season)) - automatically creates scopes for ActiveRecord date, datetime and timestamp attributes
- **Groupdate** (gem: [groupdate](https://rubygems.org/gems/groupdate), github: [ankane/groupdate](https://github.com/ankane/groupdate)) - easily and reliably group ActiveRecord objects based on time e.g. day, week, hour of the day and more; has time zone support


## Attachments

- **Paperclip** (gem: [paperclip](https://rubygems.org/gems/paperclip), github: [thoughtbot/paperclip](https://github.com/thoughtbot/paperclip)) - easy file attachment management for ActiveRecord


## Default Values

- **default_value_for** (gem: [default_value_for](https://rubygems.org/gems/default_value_for), github: [FooBarWidget/default_value_for](https://github.com/FooBarWidget/default_value_for)) - a way to specify default values for ActiveRecord models


## Validations

- **ActiveValidators** (gem: [activevalidators](https://rubygems.org/gems/activevalidators), github: [franckverrot/activevalidators](https://github.com/franckverrot/activevalidators)) - a collection of off-the-shelf ActiveRecord validations 
- **validates_email_format_of** (gem: [validates_email_format_of](https://rubygems.org/gems/validates_email_format_of), github: [validates-email-format-of/validates_email_format_of ](https://github.com/validates-email-format-of/validates_email_format_of)) - validate e-mail addresses against RFC 2822 and RFC 3696


## Pagination

- **Kaminari** (gem: [kaminari](https://rubygems.org/gems/kaminari), github: [amatsuda/kaminari](https://github.com/amatsuda/kaminari)) - a scope and engine based, clean, powerful, customizable and sophisticated paginator
- **will_paginate** (gem: [will_paginate](https://rubygems.org/gems/will_paginate), github: [mislav/will_paginate](https://github.com/mislav/will_paginate)) - a pagination library
- **order_query** (gem: [order_query](https://rubygems.org/gems/order_query), github: [glebm/order_query](https://github.com/glebm/order_query)) - uses no offset; finds the next or previous record(s) relative to the current one efficiently using keyset pagination, e.g. for navigation or infinite scroll


## ActsAsVersioned - Versioning / Auditing

- [PaperTrail :octocat:](https://github.com/airblade/paper_trail), [:gem:](https://rubygems.org/gems/paper_trail) - lets you track changes to your models' data
- [Audited :octocat:](https://github.com/collectiveidea/audited), [:gem:](https://rubygems.org/gems/audited) - formerly acts_as_audited; logs all changes to your Rails models
- [Vestal Versions :octocat:](https://github.com/laserlemon/vestal_versions), [:gem:](https://rubygems.org/gems/vestal_versions) - keep a history of your ActiveRecord models' changes
- [Espinata :octocat:](https://github.com/continuum/espinita), [:gem:](https://rubygems.org/gems/espinita) - audits activerecord models 
- [Auditable :octocat:](https://github.com/harley/auditable), [:gem:](https://rubygems.org/gems/auditable) - a simple(r) auditing / version tracking library for ActiveRecord
- [acts_as_versioned :octocat:](https://github.com/technoweenie/acts_as_versioned), [:gem:](https://rubygems.org/gems/acts_as_versioned) - adds simple versioning to an ActiveRecord module


## ActsAsParanoid - Soft Delete / Keep Deleted Records

- [Paranoia :octocat:](https://github.com/radar/paranoia), [:gem:](https://rubygems.org/gems/paranoia) - a re-implementation of acts_as_paranoid
- [ActsAsParanoid :octocat:](https://github.com/ActsAsParanoid/acts_as_paranoid), [:gem:](https://rubygems.org/gems/acts_as_paranoid) - soft delete; hide records instead of deleting them, making them recoverable later
- [PermanentRecords :octocat:](https://github.com/JackDanger/permanent_records), [:gem:](https://rubygems.org/gems/permanent_records) - soft-delete your ActiveRecord records; it's like an explicit version of ActsAsParanoid 
- [DestroyedAt :octocat:](https://github.com/dockyard/ruby-destroyed_at), [:gem:](https://rubygems.org/gems/destroyed_at) - ActiveRecord mixin for safe destroys
- [Immortal :octocat:](https://github.com/teambox/immortal), [:gem:](https://rubygems.org/gems/immortal) - make any ActiveRecord model paranoid by just including Immortal, and instead of being deleted from the database, the object will just marked as deleted with a boolean field in the database 
- [ActsAsArchive :octocat:](https://github.com/winton/acts_as_archive), [:gem:](https://rubygems.org/gems/acts_as_archive) - don't delete your records, move them to a different table
- [SoftDeletion :octocat:](https://github.com/grosser/soft_deletion), [:gem:](https://rubygems.org/gems/soft_deletion) - adds a new soft_delete method with callbacks and dependents support
- [Discard :octocat:](https://github.com/jhawthorn/discard), [:gem:](https://rubygems.org/gems/discard) - "Soft deletes for ActiveRecord done right"


## ActsAsStateMachine - State Machines 

- [AASM :octocat:](https://github.com/aasm/aasm), [:gem:](https://rubygems.org/gems/aasm) - formerly acts_as_state_machine; state machines for Ruby and ActiveRecord
- [:congratulations:](http://planetruby.github.io/gems/state-machine.html) [State Machines :octocat:](https://github.com/state-machines/state_machines-activerecord), [:gem:](https://rubygems.org/gems/state_machines-activerecord) - state machines for ActiveRecord

## Search

- [Ransack :octocat:](https://github.com/activerecord-hackery/ransack), [:gem:](https://rubygems.org/gems/ransack) - object-based searching

##  Query Builder

- [BabySqueel :octocat:](https://github.com/rzane/baby_squeel), [:gem:](https://rubygems.org/gems/baby_squeel) - an expressive query DSL for Active Record 4 and 5
- [Squeel :octocat:](https://github.com/activerecord-hackery/squeel), [:gem:](https://rubygems.org/gems/squeel) - lets you write your Active Record queries with fewer strings, and more Ruby

##  Dynamic Attributes
- [dynabute](https://github.com/Liooo/dynabute), [:gem:](https://rubygems.org/gems/dynabute) - dynamically add attributes on ActiveRecord without hash serialization
- [dynamic_attributes](https://github.com/moiristo/dynamic_attributes), [:gem"](https://rubygems.org/gems/dynamic_attributes) - lets you dynamically specify attributes on ActiveRecord models

## Geocoding

- [Geocoder :octocat:](https://github.com/alexreisner/geocoder), [:gem:](https://rubygems.org/gems/geocoder) - lookup latitude/longitude based on an address defined in your model or an IP address; search for nearby locations


## Multi Tenancy

- [ActsAsTenant :octocat:](https://github.com/ErwinM/acts_as_tenant), [:gem:](https://rubygems.org/gems/acts_as_tenant) - easy multi-tenancy in a shared database setup
- [Apartment :octocat:](https://github.com/influitive/apartment), [:gem:](https://rubygems.org/gems/apartment) - database multi-tenancy for ActiveRecord
 - [ActiveRecord Shards](https://github.com/zendesk/active_record_shards), [:gem:](https://rubygems.org/gems/active_record_shards) - sharded database and slaves

## Performance / Profiling / Debugging

- [Bullet :octocat:](https://github.com/flyerhzm/bullet), [:gem:](https://rubygems.org/gems/apartment) - help to kill N+1 queries and unused eager loading
- [Goldiloader :octocat:](https://github.com/salsify/goldiloader), [:gem:](https://rubygems.org/gems/goldiloader) - automatically eager loads associations as they're traversed (helping to avoid N+1 queries)
- [marginalia :octocat:](https://github.com/basecamp/marginalia), [:gem:](https://rubygems.org/gems/marginalia) - attach comments to your ActiveRecord queries; helps when searching log files for queries, and seeing where slow queries came from

## Seeds / Data Migrations

- [SeedMigration :octocat:](https://github.com/harrystech/seed_migration),  [:gem:](https://rubygems.org/gems/seed_migration) - a way to manage changes to seed data similar way to how schema migrations are handled


## Bulk / Batch Importer

- [activerecord-import :octocat:](https://github.com/zdennis/activerecord-import), [:gem:](https://rubygems.org/gems/activerecord-import) - activerecord-import is a library for bulk inserting data using ActiveRecord
- [activerecord-importer :octocat:](https://github.com/rubylibs/activerecord-importer), [:gem:](https://rubygems.org/gems/activerecord-importer) - another simple data importer for activerecord in ruby
- [bulk_insert :octocat:](https://github.com/jamis/bulk_insert), [:gem:](https://rubygems.org/gems/bulk_insert) - insert lots of rows in a single insert statement


## ActiveRecord and PostgreSQL

- [ActiveRecord and PostgreSQL @ Rails Guides](http://guides.rubyonrails.org/active_record_postgresql.html) - PostgreSQL specific usage of Active Record (e.g. use PostgreSQL's datatypes - hstore, json, array etc.; use UUID primary keys; use full text search with PostgreSQL and more)

## Arel / A Relational Algebra / Arel Really Exasperates Logicians

- [Arel Gem :gem:](https://rubygems.org/gems/arel), [:octocat:](https://github.com/rails/arel) - a SQL AST manager for Ruby; simplifies the generation of complex SQL queries and adapts to various SQL flavors

Documentation

- [RDoc @ RubyDoc.info](http://www.rubydoc.info/gems/arel)
- [Article - How Arel Converts Ruby Queries Into SQL Statements](http://patshaughnessy.net/2014/9/23/how-arel-converts-ruby-queries-into-sql-statements) - by Pat Shaughnessy


## Database Browser

- [dbbrowser :octocat:](https://github.com/rubylibs/dbbrowser), [:gem:](https://rubygems.org/gems/dbbrowser) - database browser (connections, schema, tables, records, etc.) as mountable web app 
- [rails_db :octocat:](https://github.com/igorkasyanchuk/rails_db), [:gem:](https://rubygems.org/gems/rails_db) - Rails database viewer and SQL Query runner in browser

## Database Admin / Scaffold

- [ActiveAdmin](http://activeadmin.info) - [:octocat:](https://github.com/activeadmin), [:gem:](https://rubygems.org/gems/activeadmin)
- [RailsAdmin :octocat:](https://github.com/sferik/rails_admin), [:gem:](https://rubygems.org/gems/rails_admin)
- [Typus :octocat:](https://github.com/typus), [:gem:](https://rubygems.org/gems/typus) - admin panels and more
- [Upmin Admin :octocat:](https://github.com/upmin/upmin-admin-ruby), [:gem:](https://rubygems.org/gems/upmin-admin) 
- [Administrate :octocat:](https://github.com/thoughtbot/administrate), [:gem:](https://rubygems.org/gems/administrate)
- [Godmin :octocat:](https://github.com/varvet/godmin), [:gem:](https://rubygems.org/gems/godmin)

## Text-to-SQL

- [:congratulations:](http://planetruby.github.io/gems/datapak.html) [Datapak :octocat:](https://github.com/textkit/datapak), [:gem:](https://rubygems.org/gems/datapak) -  a library to work with tabular data packages (*.csv files w/ datapackage.json) in SQL via ActiveRecord
- [data_miner :octocat:](https://github.com/seamusabshere/data_miner), [:gem:](https://rubygems.org/gems/data_miner) - download, pull out of a ZIP/TAR/GZ/BZ2 archive, parse, correct, and import XLS, ODS, XML, CSV, HTML, etc. into your ActiveRecord models 


## Schema Documentation / Annotations / Diagrams 

- [:congratulations:](http://planetruby.github.io/gems/annotate.html) [Annotate / AnnotateModels :octocat:](https://github.com/ctran/annotate_models), [:gem:](https://rubygems.org/gems/annotate) - adds annotations (comments about the table schema) to your models
- [:congratulations:](http://planetruby.github.io/gems/rails-erd.html) [rails-erd :octocat:](https://github.com/voormedia/rails-erd), [:gem:](https://rubygems.org/gems/rails-erd) - generate entity-relationship diagrams (ERD) for your activerecord models
- [:congratulations:](http://planetruby.github.io/gems/schemadoc.html) [schemadoc :octocat:](https://github.com/rubylibs/schemadoc), [:gem:](https://rubygems.org/gems/schemadoc) - auto-generate your database schema docs for tables, columns, etc.


## Schema Extensions

- [SchemaPlus :octocat:](https://github.com/SchemaPlus), [:gem:](https://rubygems.org/gems/schema_plus) - foreign key constraints, indexes, (auto-)validations and much more

## Ready-to-Use (Instant) Models / Schemas

- [world.db Models :octocat:](https://github.com/worlddb/world.db.models), [:gem:](https://rubygems.org/gems/worlddb-models) - place, continent, country, state, muni, city, district, language, name, etc.
- [sport.db Models :octocat:](https://github.com/sportdb/sport.db.models), [:gem:](https://rubygems.org/gems/sportdb-models) - team, competition, season, league, match, round, group, squad, player, goal, etc.
- [:congratulations:](http://planetruby.github.io/gems/beerdb.html) [beer.db Models :octocat:](https://github.com/beerkit/beer.db.models), [:gem:](https://rubygems.org/gems/beerdb-models) - beer, brand, brewery, etc.


## Misc 

- [activerecord-utils :octocat:](https://github.com/rubylibs/activerecord-utils), [:gem:](https://rubygems.org/gems/activerecord-utils) - utilities (e.g. random, alias_attr, etc.) for activerecord 
- [props-activerecord :octocat:](https://github.com/rubylibs/props-activerecord), [:gem:](https://rubygems.org/gems/props-activerecord) - manage setting hierachies addon for activerecord (ConfDb, Props Model, etc.)
- [:congratulations:](http://planetruby.github.io/gems/logutils.html) [logutils-activerecord :octocat:](https://github.com/rubylibs/logutils-activerecord), [:gem:](https://rubygems.org/gems/logutils-activerecord) - another logger addon for activerecord (LogDb, Log Model etc.) 


## Databases

**SQLite**

- [Awesome SQLite @ Planet Open Data :octocat:](https://github.com/planetopendata/awesome-sqlite)

**MySQL / MariaDB**

- [Awesome MySQL :octocat:](https://github.com/shlomi-noach/awesome-mysql)


## Datasets / Plain Text Fixtures

- [Awesome World @ Planet Open Data :octocat:](https://github.com/planetopendata/awesome-world) - countries, cities, languages, flags, latitude/longitude, etc.

## Alternatives

_More Object-relational (O/R) mapping libraries_

- [Sequel](http://sequel.jeremyevans.net) - [:octocat:](https://github.com/jeremyevans/sequel), [:gem:](https://rubygems.org/gems/sequel) -  a simple, flexible, and powerful SQL database access toolkit for Ruby
- [DataMapper](http://datamapper.org) - [:octocat:](https://github.com/datamapper), [:gem:](https://rubygems.org/gems/datamapper)


## Thanks

Jacob Burenstam • Ian Irving • Scott P • Joel Turkel


## Meta

**License**

The awesome list is dedicated to the public domain. Use it as you please with no restrictions whatsoever.

**Questions? Comments?**

Send them along to the ruby-talk mailing list. Thanks!
