module PostsHelper
  def post_summary post
    output = h truncate(remove_html_tags(post.body), :length => 600, :omission => '...')
    output += link_to('[more]', post_path(post)) if post.body.size > 600
    output.html_safe
  end
  
  def remove_html_tags(text)
    plain_text = strip_tags(text)
  end
end
