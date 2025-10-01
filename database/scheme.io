Table follows {
  following_user_id integer [not null]
  followed_user_id integer [not null]
  created_at timestamp [not null]
  deleted_at timestamp

  Indexes {
    (following_user_id, followed_user_id)
  }
}

Table users {
  id integer [primary key]
  first_name varchar
  last_name varchar
  city varchar
  avatar_url text
  created_at timestamp [not null]
  updated_at timestamp [not null]
  deleted_at timestamp
}

Table posts {
  id integer [primary key]
  user_id integer [not null]
  location_id integer
  photo_url text
  description varchar(1000)
  created_at timestamp [not null]
  updated_at timestamp [not null]
  deleted_at timestamp
}

Table post_likes {
  post_id integer [not null]
  user_id integer [not null]
  created_at timestamp [not null]
  deleted_at timestamp

  Indexes {
    (post_id, user_id)
  }
}

Table post_comments {
  id integer [primary key]
  post_id integer [not null]
  comment_text varchar(200) [not null]
  user_id integer [not null]
  created_at timestamp [not null]
  updated_at timestamp [not null]
  deleted_at timestamp
}

Table locations {
  id integer [primary key]
  name varchar [not null]
  latitude numeric [not null]
  longitude numeric [not null]
  created_at timestamp
  updated_at timestamp
  deleted_at timestamp
}

Ref: posts.id < post_comments.post_id

Ref: users.id < post_comments.user_id

Ref user_posts: posts.user_id > users.id

Ref: users.id < follows.following_user_id

Ref: users.id < follows.followed_user_id

Ref: locations.id < posts.location_id

Ref: posts.id < post_likes.post_id