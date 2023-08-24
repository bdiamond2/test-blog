-- This file was created with substantial help from ChatGPT
-- Create the Authors table
CREATE TABLE Authors (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    profile_text TEXT
);

-- Create the Tags table
CREATE TABLE Tags (
    id SERIAL PRIMARY KEY,
    tag_name VARCHAR(100) NOT NULL
);

-- Create the BlogPosts table
CREATE TABLE BlogPosts (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    content TEXT,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_updated_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create the AuthorBlogPosts relationship table
CREATE TABLE AuthorBlogPosts (
    post_id INTEGER REFERENCES BlogPosts(id) ON DELETE CASCADE,
    author_id INTEGER REFERENCES Authors(id),
    PRIMARY KEY (post_id, author_id)
);

-- Create the BlogPostTags relationship table
CREATE TABLE BlogPostTags (
    post_id INTEGER REFERENCES BlogPosts(id) ON DELETE CASCADE,
    tag_id INTEGER REFERENCES Tags(id),
    PRIMARY KEY (post_id, tag_id)
);

-- Create the Comments table
CREATE TABLE Comments (
    id SERIAL PRIMARY KEY,
    post_id INTEGER REFERENCES BlogPosts(id) ON DELETE CASCADE,
    content TEXT NOT NULL,
    like_count INTEGER DEFAULT 0,
    dislike_count INTEGER DEFAULT 0
);

