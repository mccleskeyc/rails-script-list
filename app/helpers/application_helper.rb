module ApplicationHelper

    def render_nav_links
        content_tag("ul") do
            if user_signed_in? # is logged in
                content_tag("li") do
                    link_to("Home", root_path)
                end +

                content_tag("li") do
                  link_to("Scripts", scripts_path)
                end + 

                content_tag("li") do
                  link_to("Add Script", new_script_path)
                end +

                content_tag("li") do
                    link_to("Formats", departments_path)
                end +

                content_tag("li") do
                    link_to("Add a Format", new_department_path)
                end +

                content_tag("li") do
                    link_to("Log Out", destroy_user_session_path)
                end 
            else
                content_tag("li") do
                    link_to("Home", root_path)
                end +
                content_tag("li") do
                    link_to("Log In", new_user_session_path)
                end + 
                content_tag("li") do
                    link_to("Sign Up", new_user_registration_path)
                end
            end
          end
    end

end
