#
# This class build svg tags for the OmniNav navbar. Using svg tags allows us to sidestep the
# hassling of packaging image files and getting the URL wired correctly for each project using
# the navbar.
#
# Paths for icons found here:
# https://blogs.chapman.edu/wp-content/plugins/cu-wp-customization/omni-nav/omni-nav.svg
#
# For Chapman logo path, see
# app/assets/images/chapman_logo_horizontal_color.svg
#
#
module Omninav
  class SvgImage
    #
    # Constants
    #
    # rubocop:disable Metrics/LineLength
    ICON_FORMAT = '<svg %<class_attr>sviewbox="0 0 %<px>s %<px>s"><path d="%<d>s"></path></svg>'.freeze
    # rubocop:enable Metrics/LineLength

    #
    # Logo Class Methods
    #
    # rubocop:disable Layout/IndentHeredoc
    def self.chapman_horizontal_color_logo
      <<-SVG_TAG
<svg id="chapman_logo" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 273.7 28.1" data-name="Layer 1">
  <defs>
    <style>.cls-1{fill:#a50034;}.cls-2{fill:#231f20;}</style>
  </defs>
<title>Chapman University</title>
<path id="window" class="cls-1" d="M13,14.5,0,27.5v-13ZM0,13.6V.6l13,13ZM27.5,0l-13,13V0ZM13.6,13,.6,0h13Zm1.5.6,13-13v13Zm13,.9v13l-13-13Zm-14.5.6-13,13h13Zm.9,0v13h13Z"/><g id="chapman-university">
<path class="cls-2" d="M48,10.3c-.7-2.5-2.1-3.2-4.2-3.2-3.9,0-5.7,3-5.7,6.4,0,4.2,2.2,7,5.7,7,2.5,0,3.6-1.2,4.7-3.5l.5.1c-.3.9-.8,2.7-1.1,3.5a18.44,18.44,0,0,1-4.1.6c-5.5,0-7.9-3.8-7.9-7.2,0-4.5,3.5-7.7,8.3-7.7a13.86,13.86,0,0,1,4,.6c.2,1.2.3,2.2.4,3.3ZM61.7,13V9.9c0-2.4-.2-2.5-1.9-2.7V6.7h5.8v.5c-1.8.1-2,.3-2,2.7v7.9c0,2.4.2,2.5,2,2.7V21h-6v-.5c1.9-.1,2.1-.3,2.1-2.7V13.9H54.1v3.9c0,2.4.2,2.5,2,2.7V21H50.3v-.5c1.8-.1,2-.3,2-2.7V9.9c0-2.4-.2-2.5-2.1-2.7V6.7H56v.5c-1.7.1-1.9.3-1.9,2.7V13Zm13.6,7.5.7-.1c.8-.1.9-.3.7-1-.2-.5-.8-2.2-1.4-3.8H70.9c-.2.6-.8,2.3-1.1,3.2-.4,1.3-.2,1.6.8,1.6l.7.1V21H66.6v-.5c1.4-.1,1.6-.3,2.4-2.2L73.5,6.6l.5-.2,1.6,4.2c1,2.8,2,5.6,2.8,7.8.7,1.8,1,2,2.3,2.1V21H75.4l-.1-.5Zm-4.2-5.8H75L73,9.3Zm14.1,3.1c0,2.4.2,2.5,2.3,2.7V21H81.4v-.5c1.8-.1,2-.3,2-2.7V9.9c0-2.4-.2-2.5-1.9-2.7V6.7H87a5.56,5.56,0,0,1,3.6.9,3.48,3.48,0,0,1,1.4,3A4.49,4.49,0,0,1,87.7,15h-1l-1.6-.4v3.2Zm0-3.8a4.53,4.53,0,0,0,1.6.3c1.4,0,3.2-.7,3.2-3.6,0-2.4-1.2-3.3-3.5-3.3a3.75,3.75,0,0,0-1.1.1c-.1,0-.2.2-.2.6V14ZM97.5,6.7,102.8,18,108,6.7h3.6v.5c-1.9.2-2,.2-2,2.7l.2,7.9c.1,2.5.1,2.5,2.1,2.7V21h-5.8v-.5c1.9-.2,1.9-.2,1.9-2.7L107.9,9h-.1l-5.4,11.8h-.6L96.9,9.3l-.2,6.1a25.39,25.39,0,0,0,0,3.9c.1.8.6,1,2.1,1.1V21H93.6v-.5c1.2-.1,1.7-.3,1.8-1.1.2-1.4.3-2.8.4-4.2l.3-4.6c.2-2.9,0-3.2-2.1-3.3V6.7Zm24.1,13.8.7-.1c.8-.1.9-.3.7-1-.2-.5-.8-2.2-1.4-3.8h-4.4c-.2.6-.8,2.3-1.1,3.2-.4,1.3-.2,1.6.8,1.6l.7.1V21h-4.7v-.5c1.4-.1,1.6-.3,2.4-2.2l4.5-11.7.5-.2,1.6,4.2c1,2.8,2,5.6,2.8,7.8.7,1.8,1,2,2.3,2.1V21h-5.3l-.1-.5Zm-4.2-5.8h3.9l-1.9-5.4Zm23.3,6.4h-.6L130.6,9.5v5.6a29.54,29.54,0,0,0,.2,4.2c.1.8.7,1.1,2.1,1.1V21h-5.3v-.5c1.2,0,1.8-.4,1.9-1.1.1-1.4.2-2.8.2-4.2V10.4c0-1.6,0-1.9-.4-2.4a2.73,2.73,0,0,0-1.9-.8V6.7h3.2l9.2,11V12.5a29.54,29.54,0,0,0-.2-4.2c-.1-.8-.7-1.1-2.1-1.1V6.7h5.3v.5c-1.2,0-1.8.4-1.9,1.1-.1,1.4-.2,2.8-.2,4.2v8.6ZM154.8,6.7v.5c-1.8.1-1.9.3-1.9,2.7v4.6a7.43,7.43,0,0,0,.9,4.2,3.56,3.56,0,0,0,3.2,1.5,3.89,3.89,0,0,0,3.2-1.6,9.22,9.22,0,0,0,1-4.9V12.5c0-1.4-.1-2.8-.2-4.2-.1-.8-.7-1.1-2.1-1.1V6.7h5.3v.5c-1.2,0-1.8.4-1.9,1.1-.1,1.4-.2,2.8-.2,4.2V14c0,2.5-.4,4.3-1.7,5.7a6.17,6.17,0,0,1-7.6.5c-1.2-.9-1.7-2.4-1.7-4.9V9.9c0-2.4-.2-2.5-2-2.7V6.7Zm23.5,14.4h-.6L168.2,9.5v5.6a29.54,29.54,0,0,0,.2,4.2c.1.8.7,1.1,2.1,1.1V21h-5.3v-.5c1.2,0,1.8-.4,1.9-1.1.1-1.4.2-2.8.2-4.2V10.4c0-1.6,0-1.9-.4-2.4a2.28,2.28,0,0,0-1.9-.7V6.7h3.2l9.2,11V12.5a29.54,29.54,0,0,0-.2-4.2c-.1-.8-.7-1.1-2.1-1.1V6.7h5.3v.5c-1.2,0-1.8.4-1.9,1.1-.1,1.4-.2,2.8-.2,4.2v8.6Zm7.2-3.3c0,2.4.2,2.5,2,2.7V21h-5.8v-.5c1.8-.1,2-.3,2-2.7V9.9c0-2.4-.2-2.5-2-2.7V6.7h5.8v.5c-1.8.1-2,.3-2,2.7v7.9Zm9.7,3.3c-1.5-3.9-3.6-9.3-4.5-11.8-.7-1.8-1-2-2.3-2.1V6.7h5.3v.5l-.7.1c-.8.1-.9.3-.7,1,.6,1.6,2.3,5.9,3.9,10,1.1-3,3-8,3.5-9.4.4-1.2.2-1.5-.8-1.6l-.7-.1V6.7H203v.5c-1.5.2-1.7.3-2.5,2.2-.3.7-3,7.2-4.6,11.6l-.7.1ZM205.9,9.9c0-2.4-.2-2.5-1.9-2.7V6.7h9.6c0,.4.1,2,.2,3.2l-.6.1a3.86,3.86,0,0,0-.8-2c-.4-.4-1.1-.5-2.4-.5h-1.7c-.6,0-.7,0-.7.7v5h2.3c1.9,0,2-.1,2.2-1.8h.6v4.3h-.6a2.1,2.1,0,0,0-.5-1.5,2.49,2.49,0,0,0-1.7-.3h-2.2v3.9c0,1.2.1,1.9.6,2.2a5.58,5.58,0,0,0,2.2.3,4.33,4.33,0,0,0,2.8-.6,8.42,8.42,0,0,0,1.1-2.1l.6.1a33.83,33.83,0,0,1-.8,3.4H203.8v-.5c2-.1,2.1-.3,2.1-2.7v-8ZM220,17.8c0,2.4.2,2.5,2,2.7V21h-5.8v-.5c1.8-.1,2-.3,2-2.7V9.9c0-2.4-.2-2.5-1.9-2.7V6.7h5.6a6.23,6.23,0,0,1,3.5.8,3.13,3.13,0,0,1,1.4,2.8,4,4,0,0,1-2.9,3.8,31.46,31.46,0,0,0,2,3.1c.6.8,1.2,1.7,1.8,2.4a2.92,2.92,0,0,0,1.6,1.1v.4H229c-2.5-.1-3.3-.8-4.1-2-.7-1-1.6-2.6-2.2-3.6a1.6,1.6,0,0,0-1.4-.8H220Zm0-3.7h1.3a2.86,2.86,0,0,0,2.2-.6,3.6,3.6,0,0,0,1.3-2.9,3,3,0,0,0-2.9-3.2h-.4a4.87,4.87,0,0,0-1.2.1c-.1,0-.2.2-.2.6l-.1,6Zm10.6,3c.4,1,1.5,3.5,3.8,3.5a2.56,2.56,0,0,0,2.7-2.4v-.4c0-1.9-1.4-2.6-2.8-3.3-.7-.4-3.7-1.4-3.7-4,0-2.2,1.6-4,4.5-4a5.66,5.66,0,0,1,1.8.3,2.35,2.35,0,0,0,.8.2c.1.8.2,1.6.4,3l-.6.1c-.4-1.3-1-2.8-3-2.8a2.26,2.26,0,0,0-2.4,2.2v.2c0,1.6,1.2,2.3,2.8,3.1,1.4.6,3.8,1.5,3.8,4.3,0,2.5-2.1,4.4-4.9,4.4a7.61,7.61,0,0,1-2.1-.3c-.6-.2-.9-.4-1.2-.5-.2-.6-.4-2.1-.6-3.3Zm13.7.7c0,2.4.2,2.5,2,2.7V21h-5.8v-.5c1.8-.1,2-.3,2-2.7V9.9c0-2.4-.2-2.5-2-2.7V6.7h5.8v.5c-1.8.1-2,.3-2,2.7Zm10.4,0c0,2.4.2,2.5,2.3,2.7V21h-6.4v-.5c2.1-.1,2.2-.3,2.2-2.7V7.5h-1c-2,0-2.5.3-2.9.7a6.39,6.39,0,0,0-.8,1.9h-.6c.1-1.3.2-2.7.3-3.9h.3a1.08,1.08,0,0,0,1.1.6h9a1.1,1.1,0,0,0,1-.6h.3c0,.9.1,2.5.2,3.8h-.6a5,5,0,0,0-.8-2c-.4-.4-1-.6-2.4-.6h-1.5l.3,10.4Zm13.3,0c0,2.4.2,2.5,2.3,2.7V21H264v-.5c2-.1,2.2-.3,2.2-2.7V15.3a2.11,2.11,0,0,0-.5-1.3c-1-1.7-1.8-3.3-2.8-4.9s-1-1.7-2.3-1.8V6.7h5.3v.5l-1,.1c-.5.1-.7.3-.3,1,1,1.8,2,3.7,3.1,5.5.9-1.8,1.9-3.6,2.7-5.4.4-.8.2-1-.6-1.1l-.9-.1V6.7h4.8v.5c-1.5.1-1.6.4-2.5,1.9s-1.8,3-2.8,4.8a1.75,1.75,0,0,0-.4,1.2v2.7Z"/></g></svg>
SVG_TAG
    end
    # rubocop:enable Layout/IndentHeredoc

    #
    # Icon Class Methods
    #
    def self.icon(params={})
      # Default params
      path_descriptions = params.fetch(:path_descriptions, [])
      classes = params.fetch(:classes, []) + ['svg-icon']
      px_size = params.fetch(:size, 512)

      attrs = {
        class_attr: format('class="%s" ', classes.uniq.join(' ')),
        px: px_size,
        d: path_descriptions.join('')
      }
      format(ICON_FORMAT, attrs)
    end

    def self.email_icon
      path_descriptions = [
        "M480,64H32C14.4,64,0,78.4,0,96v320c0,17.6,14.399,32,32,32h448c17.6,0,32-14.4,32-",
        "32V96C512,78.4,497.6,64,480,64zM448,128v23L256,264.143L64,151v-23H448z M64,384V2",
        "06.714l192,113.144l192-113.144V384H64z"
      ]
      icon(path_descriptions: path_descriptions, classes: ['email'])
    end

    def self.chapman_window_icon
      path_descriptions = [
        "M237.543,263.319L-0.266,501.073V263.319H237.543z M-0.266,248.073V10.26l237.81,23",
        "7.813H-0.266zM501.276-0.455L263.518,237.291V-0.455H501.276z M248.299,237.291L10.",
        "507-0.455h237.792V237.291z M274.291,248.073L512.032,10.26v237.813H274.291z M512.",
        "032,263.319v237.754L274.291,263.319H512.032z M248.299,274.025L10.507,511.831h237",
        ".792V274.025zM263.518,274.025v237.806h237.725L263.518,274.025z"
      ]
      icon(path_descriptions: path_descriptions, classes: ['chapman_window'])
    end

    # rubocop:disable Metrics/MethodLength
    def self.chapman_monogram_icon
      path_descriptions = [
        "M423,230h89c-0.6-3.9-1.4-11.7-2.5-17.9c-5.5-31.9-16.9-60.1-33-87.4h-86.7v85.8H41",
        "9C420.7,218.3,422,226.1,423,230   L423,230z M304,210.5v-85.8H36.8c-16.1,27.3-27.",
        "5,55.9-33,87.8C1.3,226.9,0,241.4,0,256.4c0,15.1,1.3,30.3,3.8,44.6   c5.5,31.9,16",
        ".9,61.5,33,88.8h87.9v-89.7H94.2c-3.8-15.6-5.9-29.5-5.9-44.8c0-15.3,2.1-29.2,5.9-",
        "44.8H304L304,210.5z M419,300.2   H214.4v89.7h262.1c16.1-27.3,27.5-57.4,33-89.3c1",
        ".1-6.2,1.9-12.1,2.5-19.9h-89C422,288.5,420.7,292.4,419,300.2L419,300.2z    M124.",
        "7,124.8h11.7V98.9c-3.9-1.6-15.6-4.2-19.5-4.8V52.5c31.2-21,66.3-35.3,105.2-40.8v6",
        "9c-3.9,0.8-8,1.7-11.8,2.7l-7.7,2v39.4   h11.7V93.1c3.9-1,7.4-1.8,11.1-2.6l8.4-1.",
        "6V0l-11.9,1.7c-38.7,5.6-76.2,20.3-108.5,42.5l-4.3,3v55.2l7.4,1.6l8.2,2.5   C124.",
        "7,106.4,124.7,124.7,124.7,124.8L124.7,124.8z M214.4,388.7V210.5h-11.7v215.1l8.1,",
        "2c15.3,4.1,31.4,6.2,47.2,6.2   c15.8,0,31.3-2.1,46.6-6.2l7.2-2v-35.8H304v28.1c-1",
        "5.6,3.9-29.9,5.9-44.8,5.9c-14.9,0-29.2-2-44.8-5.9L214.4,388.7L214.4,388.7z    M3",
        "04,93.1v207.1h7.8V85.4l-7.7-2c-3.8-1-7.9-1.9-11.8-2.7v-69c39,5.5,74.1,19.8,105.2",
        ",40.8V94c-3.9,0.6-11.7,3.3-15.6,4.8v201.3   h7.8V106.4c3.9-1.1,8.7-2.2,10.2-2.5l",
        "9.3-1.6V47.1l-5-3C372,21.9,334.6,7.2,295.9,1.7L284.5,0v88.9l8.4,1.6   C296.6,91.",
        "3,300.1,92.1,304,93.1L304,93.1z M136.4,300.3v-89.8h-11.7v264.7l5.6,2.9C169,500.3",
        ",213.3,512,258.1,512   c44.8,0,88.4-11.7,127-33.9l4.7-2.9v-85.3H382v79.5c-39,20.",
        "7-78.2,32.6-122.8,32.6c-44.6,0-87.7-11.8-122.8-32.6   C136.4,469.4,136.4,300.3,1",
        "36.4,300.3L136.4,300.3z"
      ]
      icon(path_descriptions: path_descriptions, classes: ['chapman_monogram'])
    end
    # rubocop:enable Metrics/MethodLength

    # rubocop:disable Metrics/MethodLength
    def self.blackboard_icon
      large_b_path_descriptions = [
        "M50.397,174.237c-3.241-62.081-49.365-34.905-50.363-56.097c-0.499-8.228,4.488-6.7",
        "31,7.729-6.981c1.745,0,4.986,1.247,26.179,0.25c39.143-2.244,76.542-5.735,113.939",
        "-7.729c110.949-5.984,114.439,60.834,114.937,70.558c1.496,29.42-13.463,54.601-45.",
        "376,66.319v1.745c56.097,9.973,73.798,33.658,76.042,74.298c3.242,60.336-35.403,99",
        ".978-108.704,103.966c-66.818,3.74-89.755,3.241-112.444,4.488c-11.469,0.498-22.68",
        "8,2.992-32.412,3.491c-9.724,0.498-14.71,0.747-14.959-5.735c-0.748-14.709,38.895-",
        "5.485,36.65-49.365L50.397,174.237L50.397,174.237z M108.49,220.112c1.246,21.191,6",
        ".233,24.184,32.412,24.434l26.179-1.496c34.157-1.747,46.374-20.444,44.628-53.106c",
        "-2.493-42.384-36.65-68.313-77.29-66.07c-29.42,1.496-30.168,17.951-28.672,44.13L1",
        "08.49,220.112L108.49,220.112zM115.471,350.507c2.244,42.384,14.46,54.851,58.341,5",
        "2.357c44.13-2.493,65.322-32.91,62.829-77.04c-1.496-26.179-16.705-66.07-98.232-61",
        ".582c-26.179,1.495-27.176,12.965-25.93,35.651L115.471,350.507L115.471,350.507z"
      ]
      small_b_path_descriptions = [
        "M321.908,138.085c-1.745-32.661-28.423-11.469-29.42-27.924c-0.499-11.469,20.943-5",
        ".983,61.832-34.406c3.241-1.745,4.736-3.491,7.978-3.74c4.986-0.249,3.74,9.724,3.9",
        "9,12.965l9.723,177.766c16.954-17.203,35.902-32.909,58.591-34.156c52.108-2.742,74",
        ".298,41.637,75.794,72.802c3.739,68.563-33.41,106.46-88.759,109.452c-40.64,2.244-",
        "54.851-14.96-61.333-14.711c-8.228,0.499-11.968,18.7-21.94,19.198c-3.241,0.249-4.",
        "986-1.246-5.235-4.737c-0.25-3.241,2.493-13.214,1.246-36.151L321.908,138.085L321.",
        "908,138.085z M380.748,350.756c1.994,37.398,36.65,43.881,49.864,43.133c37.398-1.9",
        "94,43.631-38.396,42.136-67.566c-1.745-34.156-19.946-65.82-62.331-63.577c-12.964,",
        "0.749-33.658,9.973-32.91,26.429L380.748,350.756L380.748,350.756z"
      ]
      large_b_path = large_b_path_descriptions.join('')
      small_b_path = small_b_path_descriptions.join('')

      template = '<svg class="blackboard svg-icon" viewbox="0 0 512 512"><path d="%s">' \
                 '</path><path d="%s"></svg>'
      format(template, small_b_path, large_b_path)
    end
    # rubocop:enable Metrics/MethodLength

    def self.user_icon
      path_descriptions = [
        "M4 5c0-2.209 1.791-4 4-4s4 1.791 4 4c0 2.209-1.791 4-4 4s-4-1.791-4-4zM12 10h-8c" \
        "-2.209 0-4 1.791-4 4v1h16v-1c0-2.209-1.791-4-4-4z"
      ]
      icon(path_descriptions: path_descriptions, classes: ['user'], size: 16)
    end

    def self.graduation_cap_icon
      path_descriptions = [
        "M278.1,349.9c-6,3-13.5,4.5-21,4.5c-7.5,0-15-1.5-21-4.5l-87-37.5l-31.5-13.5v60l0,",
        "0c0,1.5,0,1.5,0,3c0,42,63,78,141,78   s141-34.5,141-78v-63l-31.5,13.5L278.1,349.",
        "9z M510.5,195.5C510.5,194,510.5,194,510.5,195.5c-1.5-3-1.5-4.5-3-6l0,0   c-1.5-1",
        ".5-3-3-4.5-4.5c0,0,0,0-1.5-1.5c-1.5-1.5-3-1.5-4.5-3l0,0l0,0l0,0L264.6,80c-6-3-12",
        "-3-18,0L14.2,182c-7.5,3-13.5,12-13.5,21   s6,16.5,13.5,21l102,43.5l69,30l63,27c3",
        ",1.5,6,1.5,9,1.5c3,0,6,0,9-1.5l63-27l69-30l70.5-30v166.5c0,12,10.5,22.5,22.5,22.",
        "5   c12,0,22.5-10.5,22.5-22.5V203C512,198.5,512,197,510.5,195.5z"
      ]
      icon(path_descriptions: path_descriptions, classes: ['graduation-cap'])
    end

    def self.building_icon
      path_descriptions = [
        "M256,0L0,160h512L256,0z M400,192l16,32v192h64V224l16-32H400z M272,192l16,32v192h",
        "64V224l16-32H272z M144,192l16,32v192   h64V224l16-32H144z M16,192l16,32v192h64V2",
        "24l16-32H16z M16,448L0,512h512l-16-64H16z M288,96c0,17.7-14.3,32-32,32s-32-14.3-",
        "32-32   s14.3-32,32-32S288,78.3,288,96z"
      ]
      icon(path_descriptions: path_descriptions, classes: ['building'])
    end

    def self.calendar_icon
      path_descriptions = [
        "M416,96h-32v64h-96V96h-96v64H96V96H64c-17.6,0-32,14.4-32,32v352c0,17.6,14.4,32,3",
        "2,32h352c17.6,0,32-14.4,32-32V128   C448,110.4,433.6,96,416,96z M128,480H64.1c0,",
        "0,0,0-0.1-0.1V416h64V480z M128,384H64v-64h64V384z M128,288H64v-64h64V288z M224,4",
        "80   h-64v-64h64V480z M224,384h-64v-64h64V384z M224,288h-64v-64h64V288z M320,480",
        "h-64v-64h64V480z M320,384h-64v-64h64V384z M320,288   h-64v-64h64V288z M416,479.9",
        "C416,480,416,480,416,479.9l-64,0.1v-64h64V479.9z M416,384h-64v-64h64V384z M416,2",
        "88h-64v-64h64V288z    M160,64c0-8.8-7.2-16-16-16s-16,7.2-16,16v64h32V64z M352,64",
        "c0-8.8-7.2-16-16-16s-16,7.2-16,16v64h32V64z"
      ]
      icon(path_descriptions: path_descriptions, classes: ['calendar'])
    end

    def self.newspaper_icon
      path_descriptions = [
        "M448,128V64H0v352c0,17.7,14.3,32,32,32h432c26.5,0,48-21.5,48-48V128H448z M416,41",
        "6H32V96h384V416z M64,160h320v32H64V160   z M256,224h128v32H256V224z M256,288h128",
        "v32H256V288z M256,352h96v32h-96V352z M64,224h160v160H64V224z"
      ]
      icon(path_descriptions: path_descriptions, classes: ['newspaper'])
    end

    def self.chat_icon
      path_descriptions = [
        "M213.3,28.5c117.8,0,213.3,77.3,213.3,172.6s-95.5,172.6-213.3,172.6c-11.3,0-22.4-",
        "0.7-33.3-2.1   c-45.8,45.6-98.7,53.8-151.6,55v-11.2C57,401.5,80,376.1,80,347.1c0",
        "-4-0.3-8-0.9-11.9C30.8,303.6,0,255.3,0,201.1   C0,105.8,95.5,28.5,213.3,28.5z M4",
        "42.7,415.4c0,24.9,16.1,46.6,40.9,58.6v9.6c-45.8-1-87.9-8-127.6-47.2c-9.4,1.2-19,",
        "1.8-28.8,1.8   c-42.4,0-81.5-11.4-112.7-30.7c64.3-0.2,125-20.8,171-58.1c23.2-18.",
        "8,41.5-40.8,54.4-65.5c13.7-26.2,20.6-54,20.6-82.8   c0-4.6-0.2-9.3-0.6-13.8c32.3",
        ",26.6,52.1,62.9,52.1,102.9c0,46.4-26.7,87.9-68.6,115C442.9,408.5,442.7,411.9,442",
        ".7,415.4   L442.7,415.4z"
      ]
      icon(path_descriptions: path_descriptions, classes: ['chat'])
    end

    def self.hamburger_icon
      path_descriptions = [
        "M1 3h14v2h-14v-2z",
        "M1 7h14v2h-14v-2z",
        "M1 11h14v2h-14v-2z"
      ]
      template = '<svg class="hamburger svg-icon" viewbox="0 0 16 16"><path d="%s">' \
                 '</path><path d="%s"></path><path d="%s"></path></svg>'
      format(template, path_descriptions[0], path_descriptions[1], path_descriptions[2])
    end

    def self.big_mac_icon
      # This is a rounder version of hamburger_icon.
      path_descriptions = [
        "M4,10h24c1.104,0,2-0.896,2-2s-0.896-2-2-2H4C2.896,6,2,6.896,2,8S2.896,10,4,10z M",
        "28,14H4c-1.104,0-2,0.896-2,2  s0.896,2,2,2h24c1.104,0,2-0.896,2-2S29.104,14,28,1",
        "4z M28,22H4c-1.104,0-2,0.896-2,2s0.896,2,2,2h24c1.104,0,2-0.896,2-2  S29.104,22,",
        "28,22z"
      ]
      icon(path_descriptions: path_descriptions, classes: ['hamburger'], size: 32)
    end
  end
end
