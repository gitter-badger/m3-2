# frozen_string_literal: true

require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe UsesController, type: :controller do
  # This should return the minimal set of attributes required to create a valid
  # Use. As you add validations to Use, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    attributes_for :use
  end

  let(:invalid_attributes) do
    attributes_for :use, :invalid
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # UsesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  let(:import_file) do
    fixture_file_upload('spec/fixtures/csv/use.csv', 'text/comma-separated-values')
  end

  let(:mismatch_import_file) do
    fixture_file_upload('spec/fixtures/csv/use_mismatch.csv', 'text/comma-separated-values')
  end

  describe 'POST #import' do
    context 'with valid import data' do
      it 'csv file upload' do
        expect do
          post :import, params: { file: import_file }, session: valid_session
        end.to change(Use, :count).by(2)
        expect(response).to redirect_to(uses_url)
        expect(controller.notice).to eq(I18n.t('controller.success_import', model: Use.model_name.human))
      end
    end

    context 'with invalid import data' do
      it 'not upload file' do
        expect do
          post :import, params: { file: nil }, session: valid_session
        end.to change(Use, :count).by(0)
        expect(response).to redirect_to(uses_url)
        expect(controller.alert).to eq(I18n.t('controller.unsuccess_import_no_choose', model: Use.model_name.human))
      end

      it 'import format mismatch' do
        expect do
          post :import, params: { file: mismatch_import_file }, session: valid_session
        end.to change(Use, :count).by(0)
        expect(response).to redirect_to(uses_url)
        expect(controller.alert).to(
          eq(I18n.t('controller.unsuccess_import_record_invalid', model: Use.model_name.human))
        )
      end
    end
  end

  describe 'GET #export' do
    before do
      get :import, params: { file: import_file }, session: valid_session
    end

    context 'export data exists' do
      it 'export redirect to format csv' do
        get :export, params: {}, session: valid_session
        expect(response.status).to eq(302)
        expect(response.headers.to_hash['Location']).to match(%r{uses/export.csv})
      end

      it 'csv file export' do
        get :export, params: { format: 'csv' }, session: valid_session
        expect(response).to be_successful
        expect(response.headers['Content-Disposition']).to(
          match(/attachment; filename=\"#{Use.model_name.human}.csv\"/)
        )
        expect(response.content_type).to match(%r{text/csv})
        expect(response.content_type).to match(/cp932/)
      end
    end
  end
end
