module ApplicationHelper

  def chart id, interval, start, data, target
    options = {id: id, data: {interval: interval,
                              "point-start" => start,
                              "chart-data" => data,
                              target: [target]*data.size}}
    tag(:div, options,true) + "</div>".html_safe
  end
end
