module ApplicationHelper
  def markdown
    renderer = Redcarpet::Render::HTML.new(filter_html: true, hard_wrap: true)
    #filter_html: true 过滤用户输入的html标签，考虑安全
    #hard_wrap: true 用户如有换行，直接显示出来
    options = {
      autolink: true,
      no_intra_emphasis: true,
      fenced_code_blocks: true,
      lax_html_blocks: true,
      strikethrough: true,
      superscript: true
    }
    Redcarpet::Markdown.new(renderer, options).render(text).html_safe
  end
end
