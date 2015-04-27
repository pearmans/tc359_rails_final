module PostsHelper
  def imgur_tag imgur_path
    link_to("Card", imgur_path, class: "embedly-card") +
    javascript_include_tag("//cdn.embedly.com/widgets/platform.js")
  end
end
