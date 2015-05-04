module ApplicationHelper
  def sortable column, title=nil
    title ||= column.titleize
    direction = sort_direction == "desc" ? "asc" : "desc"
    link_to title, params.merge(sort: column, direction: direction, page:nil, remote: true)
  end
end