
module SimpleFormInputExtensions
  def error_svg_with_container(wrapper_options = nil)
    visibility_class = object.errors[attribute_name].present? ? "" : "hidden"
    template.content_tag(:div, class: "#{visibility_class} absolute inset-y-0 right-0 flex items-center pe-3 pointer-events-none", id: "#{attribute_name}-error-icon") do
      template.content_tag(:svg, class: "size-5 text-red-500", width: "16", height: "16", fill: "currentColor", viewBox: "0 0 16 16", aria: {hidden: true}) do
        template.content_tag(:path, nil, d: "M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM8 4a.905.905 0 0 0-.9.995l.35 3.507a.552.552 0 0 0 1.1 0l.35-3.507A.905.905 0 0 0 8 4zm.002 6a1 1 0 1 0 0 2 1 1 0 0 0 0-2z")
      end
    end
  end

  def numeric_controls(wrapper_options = nil)
    template.content_tag(:div, class: "absolute inset-y-0 right-0 flex justify-end items-center gap-x-1.5 pe-3") do
      minus_button + plus_button
    end
  end

  def minus_button
    template.button_tag(type: 'button',
                        data: { action: "click->numeric-controls#decrement" },
                        class: "size-6 inline-flex justify-center items-center gap-x-2 text-sm font-medium rounded-full border border-gray-200 bg-white text-gray-800 shadow-sm hover:bg-gray-50 disabled:opacity-50 disabled:pointer-events-none dark:bg-neutral-900 dark:border-neutral-700 dark:text-white dark:hover:bg-neutral-800") do
      template.content_tag(:svg, class: "flex-shrink-0 size-3.5", width: 24, height: 24, fill: "none", viewBox: "0 0 24 24", stroke: "currentColor", stroke_width: "2", stroke_linecap: "round", stroke_linejoin: "round") do
        template.content_tag(:path, nil, d: "M5 12h14")
      end
    end
  end

  def plus_button
    template.button_tag(type: 'button',
                        data: { action: "click->numeric-controls#increment" },
                        class: "size-6 inline-flex justify-center items-center gap-x-2 text-sm font-medium rounded-full border border-gray-200 bg-white text-gray-800 shadow-sm hover:bg-gray-50 disabled:opacity-50 disabled:pointer-events-none dark:bg-neutral-900 dark:border-neutral-700 dark:text-white dark:hover:bg-neutral-800") do
      template.content_tag(:svg, class: "flex-shrink-0 size-3.5", width: 24, height: 24, fill: "none", viewBox: "0 0 24 24", stroke: "currentColor", stroke_width: "2", stroke_linecap: "round", stroke_linejoin: "round") do
        template.content_tag(:path, nil, d: "M5 12h14") +
        template.content_tag(:path, nil, d: "M12 5v14")
      end
    end
  end
end
SimpleForm::Inputs::Base.send :include, SimpleFormInputExtensions
