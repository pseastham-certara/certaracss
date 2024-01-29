
certaraPNG = function() {system.file("extdata", "logo", "Certara_CB.png", package="certaracss")}
styleCSS   = function() {system.file("extdata", "css",  "certara.css",    package="certaracss")}
ICONDIR    = function() {system.file("extdata", "icons",                  package="certaracss")}

# return as raw HTML
cat_raw_html = function(obj_) {
  cat(htmltools::HTML(as.character(obj_)))
}

add_certara_logo = function() {
  img_ = htmltools::img(src   = knitr::image_uri(certaraPNG()),
                        alt   = 'logo',
                        style = 'position:fixed; top:0; right:0; padding:10px; width:300px; z-index: -9;')

  # return as raw HTML
  cat_raw_html(img_)
}

grep_icondir_path = function(charvec,
                             special_dir="__ICONDIR__",
                             calculated_ICONDIR=ICONDIR()) {
  charvec = gsub(special_dir, calculated_ICONDIR, charvec)
  return(charvec)
}

load_certara_css = function() {
  # load in css as character
  stylesheet = readr::read_file(styleCSS())

  # add appropriate tags to character vector
  css_prefix  = '<style type="text/css">'
  css_postfix = '</style>'
  stylesheet = paste0(css_prefix,
                      stylesheet,
                      css_postfix)

  # grep ICONDIR placeholder to actual path on user system
  stylesheet = grep_icondir_path(stylesheet)

  # return as raw HTML
  cat_raw_html(stylesheet)
}

print_footer = function() {
  text       = "" # insert text here to put at footer
  prefix     = '<div style = "position:fixed; bottom: 0; right: 0; z-index: -9;"><p>'
  postfix    = '</p></div>'
  stylesheet = paste0(prefix,
                      text,
                      postfix)

  # return as raw HTML
  cat_raw_html(stylesheet)
}

activate_certara_style = function() {
  load_certara_css()
  add_certara_logo()
  print_footer()
}

activate_certara_style_if_not_interactive = function() {
  if (!interactive()) {
    activate_certara_style()
  }
}
