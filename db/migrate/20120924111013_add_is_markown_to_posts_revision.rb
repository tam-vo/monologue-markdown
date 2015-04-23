class AddIsMarkownToPostsRevision < ActiveRecord::Migration
  def up
    # add_column :monologue_posts_revisions, :is_markdown, :boolean
    # ::Monologue::PostsRevision.update_all(:is_markdown => false)
    add_column :monologue_posts, :is_markdown, :boolean, default: false
    ::Monologue::Posts.update_all(:is_markdown => false)
  end

  def down
    remove_column :monologue_posts, :is_markdown
  end
end
