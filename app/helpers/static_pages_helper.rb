module StaticPagesHelper
  def fulltitle( pagetitle="")
    if pagetitle.empty?
      return "Ruby on Rails"
    else
      return pagetitle + " | Ruby on Rails"
    end
  end
end
