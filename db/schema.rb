# This file is autogenerated. Instead of editing this file, please use the
# migrations feature of ActiveRecord to incrementally modify your database, and
# then regenerate this schema definition.

ActiveRecord::Schema.define(:version => 39) do

  create_table "avatars", :force => true do |t|
    t.column "parent_id",       :integer
    t.column "content_type",    :string
    t.column "filename",        :string
    t.column "thumbnail",       :string
    t.column "size",            :integer
    t.column "width",           :integer
    t.column "height",          :integer
    t.column "user_id",         :integer
    t.column "current_user_id", :integer
    t.column "created_at",      :datetime
    t.column "updated_at",      :datetime
  end

  create_table "categories", :force => true do |t|
    t.column "name",     :string
    t.column "position", :integer, :default => 0
  end

  create_table "events", :force => true do |t|
    t.column "title",       :string
    t.column "description", :text
    t.column "date",        :datetime
    t.column "private",     :boolean,  :default => false
    t.column "reminder",    :boolean
    t.column "user_id",     :integer
    t.column "created_at",  :datetime
    t.column "updated_at",  :datetime
  end

  create_table "forums", :force => true do |t|
    t.column "category_id",  :integer
    t.column "name",         :string
    t.column "description",  :text
    t.column "topics_count", :integer,  :default => 0
    t.column "posts_count",  :integer,  :default => 0
    t.column "position",     :integer,  :default => 0
    t.column "last_post_id", :integer
    t.column "last_post_at", :datetime
    t.column "last_post_by", :integer
    t.column "created_at",   :datetime
    t.column "updated_at",   :datetime
  end

  create_table "headers", :force => true do |t|
    t.column "parent_id",    :integer
    t.column "content_type", :string
    t.column "filename",     :string
    t.column "thumbnail",    :string
    t.column "size",         :integer
    t.column "width",        :integer
    t.column "height",       :integer
    t.column "description",  :text
    t.column "user_id",      :integer
    t.column "created_at",   :datetime
    t.column "updated_at",   :datetime
    t.column "votes",        :integer,  :default => 0
  end

  create_table "options", :force => true do |t|
    t.column "site_title",      :string
    t.column "site_tagline",    :string
    t.column "footer_left",     :text
    t.column "footer_right",    :text
    t.column "invitation_only", :boolean, :default => false
    t.column "private_site",    :boolean, :default => false
    t.column "admin_rank",      :string
    t.column "avatars_path",    :string
    t.column "login_image",     :string
    t.column "announcement",    :text
    t.column "advertisement",   :text
    t.column "newest_user",     :string
  end

  create_table "posts", :force => true do |t|
    t.column "user_id",    :integer
    t.column "topic_id",   :integer
    t.column "body",       :text
    t.column "created_at", :datetime
    t.column "updated_at", :datetime
    t.column "updated_by", :integer
  end

  create_table "ranks", :force => true do |t|
    t.column "title",     :string
    t.column "min_posts", :integer
  end

  create_table "sessions", :force => true do |t|
    t.column "session_id", :string
    t.column "data",       :text
    t.column "updated_at", :datetime
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "topics", :force => true do |t|
    t.column "user_id",      :integer
    t.column "title",        :string
    t.column "created_at",   :datetime
    t.column "updated_at",   :datetime
    t.column "views",        :integer,  :default => 0
    t.column "posts_count",  :integer,  :default => 0
    t.column "last_post_id", :integer
    t.column "last_post_at", :datetime
    t.column "last_post_by", :integer
    t.column "private",      :boolean,  :default => false
    t.column "closed",       :boolean,  :default => false
    t.column "sticky",       :boolean,  :default => false
    t.column "forum_id",     :integer
  end

  create_table "uploads", :force => true do |t|
    t.column "parent_id",    :integer
    t.column "content_type", :string
    t.column "filename",     :string
    t.column "thumbnail",    :string
    t.column "size",         :integer
    t.column "width",        :integer
    t.column "height",       :integer
    t.column "user_id",      :integer
    t.column "created_at",   :datetime
    t.column "updated_at",   :datetime
  end

  create_table "users", :force => true do |t|
    t.column "login",              :string
    t.column "email",              :string
    t.column "password_hash",      :string
    t.column "created_at",         :datetime
    t.column "last_login_at",      :datetime
    t.column "admin",              :boolean,  :default => false
    t.column "posts_count",        :integer,  :default => 0
    t.column "signature",          :string
    t.column "bio",                :text
    t.column "topics_count",       :integer,  :default => 0
    t.column "updated_at",         :datetime
    t.column "profile_updated_at", :datetime
    t.column "online_at",          :datetime
    t.column "headers_count",      :integer,  :default => 0
    t.column "events_count",       :integer,  :default => 0
    t.column "uploads_count",      :integer,  :default => 0
    t.column "banned_until",       :datetime
    t.column "ban_message",        :string
    t.column "avatars_count",      :integer,  :default => 0
    t.column "avatar_id",          :integer
  end

end
