const defaultTheme = require("tailwindcss/defaultTheme");

module.exports = {
  content: [
    "./public/*.html",
    "./app/helpers/**/*.rb",
    "./app/javascript/**/*.js",
    "./app/views/**/*.{erb,haml,html,slim}",
  ],
  safelist: [
    "block",
    "text-sm",
    "mt-2",
    "mb-2",
    "relative",
    "absolute",
    "py-3",
    "px-4",
    "pe-3",
    "w-full",
    "border-gray-200",
    "rounded-lg",
    "rounded-full",
    "border-blue-500",
    "ring-blue-500",
    "focus:border-blue-500",
    "focus:ring-blue-500",
    "size-5",
    "text-xs",
    "text-red-500",
    "text-red-600",
    "inset-y-0",
    "right-0",
    "hidden",
    "flex",
    "grid",
    "items-center",
    "pointer-events-none",
    "gap-y-4",
    "form-input",
    "font-medium",
    "font-semibold",
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ["Inter var", ...defaultTheme.fontFamily.sans],
      },
    },
  },
  plugins: [
    require("@tailwindcss/forms"),
    require("@tailwindcss/aspect-ratio"),
    require("@tailwindcss/typography"),
    require("@tailwindcss/container-queries"),
  ],
};
