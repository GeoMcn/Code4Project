#module ApplicationHelper
#    def avatar_url(user)
#        gravatar_url.id = Digest::MD5::hexdigest(user.email).downcase "https://www.gravatar.com/avatar/#{gravatar_id}.jpg?d=identicon&s=40"
#    end
#end

module ApplicationHelper
def avatar_url(user, size)
gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
gravatar_url= "https://secure.gravatar.com/avatar/#{gravatar_id}.png?d=identicon&s=#{size}"
image_tag(gravatar_url, alt: user.name, class: "circle responsive_img")
end
    
    class CodeRayify < Redcarpet::Render::HTML
        def block_code(code, language)
            CodeRay.scan(code, language).div(:line_numbers => :table)
        end
    end
    
    def markdown(text)
        coderayified = CodeRayify.new(:filter_html => true, :hard_wrap => true)
        options = {
            :fenced_code_blocks => true,
            :no_intra_emphasis => true,
            :autolink => true,
            :strikethrough => true,
            :lax_html_blcoks => true,
            :superscript => true
            }
        
        markdown_to_html = Redcarpet::Markdown.new(coderayified, options)
        markdown_to_html.render(text).html_safe
    end
end
