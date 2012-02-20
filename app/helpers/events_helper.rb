module EventsHelper

  def display_if(condition)
    @show = "display:none"
    if (condition)
      @show = "display:block"
    end
    @show
  end
end
