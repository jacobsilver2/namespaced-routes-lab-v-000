class Admin::PreferencesController < ApplicationController
  def index
    @preference = Preference.new(allow_new_artists: true, allow_new_songs: true, song_sort_order: "DESC", artist_sort_order: "DESC")
  end
end

def update
  @preference = Preference.find(params[:id])
  @preference.update(preference_params)
  redirect_to admin_preferences_path
end

private

def preference_params
  params.require(:preference).permit(:allow_new_songs, :allow_new_artists, :song_sort_order, :artist_sort_order)
end