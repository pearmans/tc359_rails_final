module PostsHelper
  def imgur_tag imgur_path
    link_to("Card", imgur_path, class: "embedly-card") +
    javascript_include_tag("//cdn.embedly.com/widgets/platform.js")
  end

  def parse_post_content(html)
    # Add nokogiri gem to Gemfile, then something like this...
    # Nokogiri::HTML(html).css('body').children.map(&:text).join(" ")
  end
end
