SQLite format 3   @                                                                     -�%   �    �����                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        �=/�/indexunique_schema_migrationsschema_migrationsCREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version")q//�tableschema_migrationsschema_migrationsCREATE TABLE "schema_migrations" ("versio                  : �������p^L:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            )20140829092552
)20140826143607	)20140820111218)20140817115736)20140719183706)20140713100350)20140712165832)20140712165831)20140712165830)20140712165829)20140604232743
   0 ������|iVC0                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  )20140829092552)20140826143607
)20140820111218	)20140817115736)20140719183706)20140713100350)20140712165832)20140712165831)20140712165830)20140712165829)	20140604232743                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ��      q//�tableschema_migrationsschema_migrationsCREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL)�=/�/indexunique_schema_migrationsschema_migrationsCREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version")�##�stableconferencesconferencesCREATE TABLE "conferences" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar(128) NOT NULL, "description" text(1024) NOT NULL, "location" varchar(32) NOT NULL, "start_date" date NOT NULL, "end_date" date NOT NULL, "coordinator" varchar(255) NOT NULL, "active" boolean NOT NULL, "call_for_papers_enabled" boolean NOT NULL, "voting_enabled" boolean NOT NULL, "show_calendar" boolean NOT NULL, "call_for_papers_start_date" date NOT NULL, "call_for_papers_end_date" date NOT NULL, "voting_start_date" date NOT NULL, "voting_end_date" date NOT NULL, "slug" varchar(255), "created_at" datetime, "updated_at" datetime)P++Ytablesqlite_sequencesqlite_sequenceCREATE TABLE sqlite_sequence(name,seq)   � �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      #	admin_users                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |  |"�( * &                   �U��indexindex_taggings_on_taggable_id_and_taggable_type_and_contexttagging��	tabletagstagsCREATE TABLE "tags" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "taggings_count" integer DEFAULT 0)��mtabletaggingstaggings	CREATE TABLE "taggings" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "tag_id" integer, "taggable_id" integer, "taggable_type" varchar(255), "tagger_id" integer, "tagger_type" varchar(255), "context" varchar(128), "created_at" datetime)^	1�indexindex_tags_on_nametagsCREATE UNIQUE INDEX "index_tags_on_name" ON "tags" ("name")�#
%�indextaggings_idxtaggingsCREATE UNIQUE INDEX "taggings_idx" ON "taggings" ("tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type")�U��indexindex_taggings_on_taggable_id_and_taggable_type_and_contexttaggings
CREATE INDEX "index_taggings_on_taggable_id_and_taggable_type_and_context" ON "taggings" ("taggable_id", "taggable_type", "context")                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                �  � �                                                                                                                                                                                                                          ��tableeventseventsCREATE TABLE "events" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar(128) NOT NULL, "summary" varchar(255) NOT NULL, "description" text(1400) NOT NULL, "subclass" integer DEFAULT 0 NOT NULL, "level" integer DEFAULT 2 NOT NULL, "content_url" varchar(128), "language" varchar(2), "notes" text(300), "votes" integer DEFAULT 0 NOT NULL, "live_video" varchar(128), "video" varchar(128), "code_url" varchar(128), "location" varchar(64), "room" varchar(255), "date" date, "start_time" time, "end_time" time, "shown" boolean DEFAULT 'f', "verified" boolean DEFAULT 'f', "cancelled" boolean DEFAULT 'f', "accepted" boolean DEFAULT 'f', "assisted_by" varchar(255), "slug" varchar(255), "conference_id" integer, "created_at" datetime, "updated_at" datetime)   l l                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  � /�       AAadmin@example.com$2a$10$kcdcz7jBHNv7EIZAAVu4nOp0nFkUXR72HNd.QboeRJFwW93EVId2y2014-09-04 11:56:54.8616782014-09-04 11:56:54.861678    �  ��S �                                                                                                                                             �3##�-tableadmin_usersadmin_usersCREATE TABLE "admin_users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar(255) DEFAULT '' NOT NULL, "encrypted_password" varchar(255) DEFAULT '' NOT NULL, "reset_password_token" varchar(255), "reset_password_sent_at" datetime, "remember_created_at" datetime, "sign_in_count" integer DEFAULT 0 NOT NULL, "current_sign_in_at" datetime, "last_sign_in_at" datetime, "current_sign_in_ip" varchar(255), "last_sign_in_ip" varchar(255), "role" integer DEFAULT 1 NOT NULL, "created_at" datetime, "updated_at" datetime)}A#�#indexindex_admin_users_on_emailadmin_usersCREATE UNIQUE INDEX "index_admin_users_on_email" ON "admin_users" ("email")�*_#�_indexindex_admin_users_on_reset_password_tokenadmin_usersCREATE UNIQUE INDEX "index_admin_users_on_reset_password_token" ON "admin_users" ("reset_password_token")
   � �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 /	admin@example.com
   � �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 � ��� a                                                                                    �/�1tablecommentscommentsCREATE TABLE "comments" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(64) NOT NULL, "email" varchar(64), "content" text(256), "ancestry" varchar(255), "commentable_id" integer, "commentable_type" varchar(255), "created_at" datetime, "updated_at�/�1tablecommentscommentsCREATE TABLE "comments" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(64) NOT NULL, "email" varchar(64), "content" text(256), "ancestry" varchar(255), "commentable_id" integer, "commentable_type" varchar(255), "created_at" datetime, "updated_at" datetime)�?�MtableverifiersverifiersCREATE TABLE "verifiers" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar(255) NOT NULL, "event_id" integer NOT NULL, "token" varchar(32) NOT NULL, "verified" boolean DEFAULT 'f' NOT NULL, "verify_type" varchar(255) NOT NULL, "created_at" datetime, "updated_at" datetime)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              8�                                                                                                                                                                                                                                                                   yE�indexindex_sessions_on_updated_atsessionsCREATE INDEX "index_sessions_on_updated_at" ON "sessions" ("updated_at")� E�+indexindex_sessions_on_session_idsessionsCREATE UNIQUE INDEX "index_sessions_on_session_id" ON "sessions" ("session_id")�$�tablespeakersspeakersCREATE TABLE "speakers" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(28) NOT NULL, "surname" varchar(36), "email" varchar(64) NOT NULL, "event_id" integer NOT NULL, "confirmed" boolean DEFAULT 't', "created_at" datetime, "updated_at" datetime)�E�]tablesessionssessionsCREATE TABLE "sessions" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "session_id" varchar(255) NOT NULL, "data" text, "created_at" datetime, "updated_at" datetime)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           