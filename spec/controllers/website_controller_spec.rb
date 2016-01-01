require 'rails_helper'

RSpec.describe WebsiteController do
  let(:websites) { [FactoryGirl.create(:website)] }

  describe 'GET show' do
    before do
      allow(Website).to receive(:find).with('1').and_return(websites.first)
      get :show, id: websites.first.id
    end

    it 'gets website' do
      expect(assigns(:website)).to eq websites.first
    end
  end

  describe 'PUT update' do
    let(:website) { websites.first }
    let(:new_url) { 'myurl.com' }

    context 'when website updates succesfully' do
      before do
        put :update, { url: new_url,
                      rank: website.rank,
                      page_views_per_user: website.page_views_per_user,
                      page_views_per_million:website.page_views_per_million,
                    }
      end

      it 'updates website' do
        is_expected.to respond_with(200)
        expect(Website.find_by(url: new_url)).not_to be_nil
      end

      it 'returns 200' do
        is_expected.to respond_with(200)
      end
    end

    context 'when website updates succesfully' do
      before do
        put :update, { url: '',
                      rank: website.rank,
                      page_views_per_million:website.page_views_per_million,
                    }
      end

      it 'returns 500' do
        is_expected.to respond_with(500)
      end
    end

  end
end
