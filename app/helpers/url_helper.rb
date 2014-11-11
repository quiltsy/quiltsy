module UrlHelper
  def self.url_with_protocol(url)
    unless url.blank?
      /^http/.match(url) ? url : "http://#{url}"
    end
  end
end