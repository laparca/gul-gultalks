module BreadcrumbsHelper

  # Renders breadcrumbs for event views
  def event_breadcrumbs(conference, event, action="")
    crumbs = []

    crumbs.push({ "text": conference.title, "link": conference_path(conference) })

    unless event.nil?
      crumbs.push({ "text": event.title, "link": conference_event_path(conference, event) })
    end

    if action.eql? "edit"
      crumbs.push({ "text": t("views.event.edit_event") })

    elsif action.eql? "new"
      crumbs.push({ "text": t("views.event.new_event") })

    elsif action.eql? "speaker"
      crumbs.push({ "text": t("views.speaker.propose") })

    elsif action.eql? "vote"
      crumbs.push({ "text": t("views.event.to_vote")} )

    end

    render "partials/breadcrumbs", crumbs: crumbs
  end

  # Renders breadcrumbs for conference views
  def home_breadcrumbs(action="")
    crumbs = []

    crumbs.push({ "text": t("defaults.home"), "link": root_path })

    if action.eql? "api"
      crumbs.push({ "text": "API" })

    elsif action.eql? "conferences"
      crumbs.push({ "text": t("views.conference.list") })
    end

    render "partials/breadcrumbs", crumbs: crumbs
  end
end
