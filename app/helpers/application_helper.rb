module ApplicationHelper
  def tailwind_simple_form_for(object, *args, &block)
    simple_form_for(object, *args) do |f|
      content_tag(:div, class: "grid gap-y-4") do
        capture(f, &block)
      end
    end
  end
end
