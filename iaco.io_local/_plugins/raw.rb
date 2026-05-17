module Jekyll
    class RawContent < Generator
        def generate(site)
            site.posts.docs.each do |post|
                post.data['raw_content'] = post.content
            end
            site.pages.each do |page|
                page.data['raw_content'] = page.content
            end
        end
    end
end
