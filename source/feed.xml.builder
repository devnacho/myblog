xml.instruct!
xml.feed "xmlns" => "http://www.w3.org/2005/Atom" do
  xml.title "Ignacio Gutierrez's Blog"
  xml.subtitle "I write about Design, Startups and some other random stuff."
  xml.id "http://jgnatch.com/"
  xml.link "href" => "http://jgnatch.com/"
  xml.link "href" => "http://jgnatch.com/feed.xml", "rel" => "self"
  xml.updated blog.articles.first.date.to_time.iso8601
  xml.author { xml.name "Ignacio Julian Gutierrez" }

  blog.articles[0..5].each do |article|
    xml.entry do
      xml.title article.title
      xml.link "rel" => "alternate", "href" => article.url
      xml.id article.url
      xml.published article.date.to_time.iso8601
      xml.updated article.date.to_time.iso8601
      xml.author { xml.name "Ignacio J. Gutierrez" }
      # xml.summary article.summary, "type" => "html"
      xml.content article.body, "type" => "html"
    end
  end
end