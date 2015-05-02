# awesome-activerecord

A collection of awesome ActiveRecord goodies, libraries, tools, extensions, guides, etc.

---

[ANNOUNCEMENT] Looking for awesome Ruby events (meetups, conferences, camps, etc.) from around the world)? See the [Awesome Events List @ Planet Ruby](https://github.com/planetruby/awesome-events). 

---

Contributions welcome. Anything missing? Send in a pull request. Thanks.


## ActiveRecord

- [ActiveRecord Gem](https://rubygems.org/gems/activerecord), [:octocat:](https://github.com/rails/rails/tree/master/activerecord)
   - 2014: 4.2.0 (Dec/20); 4.1.0 (Apr/8)
   - 2013: 4.0.0 (Jun/25)
   - 2012: 3.2.0 (Jan/20)
   - 2011: 3.1.0 (Aug/31)
   - 2010: 3.0.0 (Aug/29) 
   - 2007: 2.0.0 (Dec/6)
   - 2004: 1.0.0 (Oct/25)

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

- [ActsAsList :octocat:](https://github.com/swanandp/acts_as_list) - extension provides the capabilities for sorting and reordering a number of objects in a list 

## ActsAsTree - Hierarchy / Nested

- [ActsAsTree :octocat:](https://github.com/amerine/acts_as_tree) - extends ActiveRecord to add support for organizing items into parent–children relationships

## Tags & Taggings, Categories & Categorizations

- [ActsAsTaggableOn :octocat:](https://github.com/mbleigh/acts-as-taggable-on) - a tagging plugin for ActiveRecord that allows for custom tagging along dynamic contexts
- [TagUtils :octocat:](https://github.com/rubylibs/tagutils) -  tag utilities (tag, taggings, tag list, etc.) 
- [Gutentag :octocat:](https://github.com/pat/gutentag) - a good, simple, solid tagging extension for ActiveRecord

## Pagination

- [Kaminari :octocat:](https://github.com/amatsuda/kaminari) - a scope and engine based, clean, powerful, customizable and sophisticated paginator
- [will_paginate :octocat:](https://github.com/mislav/will_paginate) - a pagination library
- [order_query :octocat:](https://github.com/glebm/order_query) - uses no offset; finds the next or previous record(s) relative to the current one efficiently using keyset pagination, e.g. for navigation or infinite scroll

## ActsAsVersioned - Versioning / Auditing

- [PaperTrail :octocat:](https://github.com/airblade/paper_trail) - lets you track changes to your models' data
- [Audited :octocat:](https://github.com/collectiveidea/audited) - formerly acts_as_audited; logs all changes to your Rails models
- [Vestal Versions :octocat:](https://github.com/laserlemon/vestal_versions) - keep a history of your ActiveRecord models' changes
- [Espinata :octocat:](https://github.com/continuum/espinita) - audits activerecord models 
- [Auditable :octocat:](https://github.com/harley/auditable) - a simple(r) auditing / version tracking library for ActiveRecord
- [acts_as_versioned :octocat:](https://github.com/technoweenie/acts_as_versioned) - adds simple versioning to an ActiveRecord module


## ActsAsParanoid - Soft Delete / Keep Deleted Records

- [Paranoia :octocat:](https://github.com/radar/paranoia) - a re-implementation of acts_as_paranoid
- [ActsAsParanoid :octocat:](https://github.com/ActsAsParanoid/acts_as_paranoid) - soft delete; hide records instead of deleting them, making them recoverable later
- [PermanentRecords :octocat:](https://github.com/JackDanger/permanent_records) - soft-delete your ActiveRecord records; it's like an explicit version of ActsAsParanoid 
- [DestroyedAt :octocat:](https://github.com/dockyard/ruby-destroyed_at) - ActiveRecord mixin for safe destroys
- [Immortal :octocat:](https://github.com/teambox/immortal) - make any ActiveRecord model paranoid by just including Immortal, and instead of being deleted from the database, the object will just marked as deleted with a boolean field in the database 
- [ActsAsArchive :octocat:](https://github.com/winton/acts_as_archive) - don't delete your records, move them to a different table


## ActsAsStateMachine - State Machines 

- [AASM](https://github.com/aasm/aasm) - formerly acts_as_state_machine; state machines for Ruby and ActiveRecord
- [State Machines](https://github.com/state-machines/state_machines-activerecord) - state machines for ActiveRecord



## Database Browser

- [dbbrowser :octocat:](https://github.com/rubylibs/dbbrowser) - database browser (connections, schema, tables, records, etc.) as mountable web app 

## Database Admin / Scaffold

- [ActiveAdmin](http://activeadmin.info), [:octocat:](https://github.com/activeadmin)
- [RailsAdmin :octocat:](https://github.com/sferik/rails_admin)
- [Typus :octocat:](https://github.com/typus) - admin panels and more
- [Upmin Admin :octocat:](https://github.com/upmin/upmin-admin-ruby) 

## Bulk / Batch Importer

- [activerecord-import :octocat:](https://github.com/zdennis/activerecord-import) - activerecord-import is a library for bulk inserting data using ActiveRecord
- [activerecord-importer :octocat:](https://github.com/rubylibs/activerecord-importer) - another simple data importer for activerecord in ruby


## ActiveRecord and PostgreSQL

- [ActiveRecord and PostgreSQL @ Rails Guides](http://guides.rubyonrails.org/active_record_postgresql.html) - PostgreSQL specific usage of Active Record (e.g. use PostgreSQL's datatypes - hstore, json, array etc.; use UUID primary keys; use full text search with PostgreSQL and more)

## Arel / A Relational Algebra / Arel Really Exasperates Logicians

- [Arel Gem](https://rubygems.org/gems/arel), [:octocat:](https://github.com/rails/arel) - a SQL AST manager for Ruby; simplifies the generation of complex SQL queries and adapts to various SQL flavors

Documentation

- [RDoc @ RubyDoc.info](http://www.rubydoc.info/gems/arel)
- [Article - How Arel Converts Ruby Queries Into SQL Statements](http://patshaughnessy.net/2014/9/23/how-arel-converts-ruby-queries-into-sql-statements) - by Pat Shaughnessy



## Text-to-SQL

- [Datapak :octocat:](https://github.com/textkit/datapak) -  a library to work with tabular data packages (*.csv files w/ datapackage.json) in SQL via ActiveRecord


## Schema Documentation / Annotations / Diagrams 

- [schemadoc :octocat:](https://github.com/rubylibs/schemadoc) - auto-generate your database schema docs for tables, columns, etc.
- [rails-erd :octocat:](https://github.com/voormedia/rails-erd) - generate entity-relationship diagrams (ERD) for your activerecord models
- [Annotate / AnnotateModels :octocat:](https://github.com/ctran/annotate_models) - adds annotations (comments about the table schema) to your models


## Schema Extensions

- [SchemaPlus :octocat:](https://github.com/SchemaPlus) - foreign key constraints, indexes, (auto-)validations and much more

## Ready-to-Use (Instant) Models / Schemas

- [world.db Models :octocat:](https://github.com/worlddb/world.db.models) - place, continent, country, state, muni, city, district, language, name, etc.
- [sport.db Models :octocat:](https://github.com/sportdb/sport.db.models) - team, competition, season, league, match, round, group, squad, player, goal, etc.
- [beer.db Models :octocat:](https://github.com/beerkit/beer.db.models) - beer, brand, brewery, etc.


## Misc 

- [activerecord-utils :octocat:](https://github.com/rubylibs/activerecord-utils) - utilities (e.g. random, alias_attr, etc.) for activerecord 
- [props-activerecord :octocat:](https://github.com/rubylibs/props-activerecord) - manage setting hierachies addon for activerecord (ConfDb, Props Model, etc.)
- [logutils-activerecord :octocat:](https://github.com/rubylibs/logutils-activerecord) - another logger addon for activerecord (LogDb, Log Model etc.) 


## Databases

**SQLite**

- [Awesome SQLite @ Planet Open Data :octocat:](https://github.com/planetopendata/awesome-sqlite)

**MySQL / MariaDB**

- [Awesome MySQL :octocat:](https://github.com/shlomi-noach/awesome-mysql)


## Datasets / Plain Text Fixtures

- [Awesome World @ Planet Open Data :octocat:](https://github.com/planetopendata/awesome-world) - countries, cities, languages, flags, latitude/longitude, etc.

## Alternatives

- [Sequel](http://sequel.jeremyevans.net), [:octocat:](https://github.com/jeremyevans/sequel) -  a simple, flexible, and powerful SQL database access toolkit for Ruby
- [DataMapper](http://datamapper.org), [:octocat:](https://github.com/datamapper) 

## Meta

**License**

The awesome list is dedicated to the public domain. Use it as you please with no restrictions whatsoever.

**Questions? Comments?**

Send them along to the ruby-talk mailing list. Thanks!
