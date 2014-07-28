require 'rails_helper'

describe SchedulesController  do
  describe '#index' do
    it 'responds successfully with an HTTP 200 status code' do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
      end

    it 'loads all of the user schedules into @schedules' do
      schedule1, schedule2 = build(:schedule), build(:schedule)
      get :index

      expect(assigns(:schedules)).to match_array([schedule1, schedule2])
    end
  end

  describe '#new' do

  end
end