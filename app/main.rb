# TODO: Where do I put this code? That configures and initalizes everything?
service = Google::Apis::YoutubeV3::YouTubeService.new
service.key = 'AIzaSyAucOE_4_YtCcu2h9dDxZwEC8PM8YvtC-Q'

infomercials = playlist_items_by_id(
  service,
  'snippet, contentDetails',
  max_results: 25,
  playlist_id: 'PLOPel2v9Sg1OliqVlvEiUJC1aQ-o_ab5Q'
)

infomercials.items.each do |infomercial|
  title = infomercial.snippet.title
  youtube_vid_id = infomercial.content_details.video_id
  Infomercial.create(title: title, youtube_vid_id: youtube_vid_id)
end

# Gets list of videos on the informercials playlist. YouTube API
def playlist_items_by_id(service, part, **params)
  params = params.delete_if { |p, v| v == ''}
  response = service.list_playlist_items(part, params)
end

# Youtube API boilerplate code.
# Print response object as JSON
# def print_results(response)
#   puts response.to_json
# end
