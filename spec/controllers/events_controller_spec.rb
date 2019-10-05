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

RSpec.describe EventsController, type: :controller do
  # This should return the minimal set of attributes required to create a valid
  # Event. As you add validations to Event, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    build(:event).attributes
  end

  let(:invalid_attributes) do
    build(:invalid_event).attributes
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # EventsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe 'GET #index' do
    it 'assigns all events as @events' do
      event = Event.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:events)).to eq([event])
    end
  end

  describe 'GET #show' do
    it 'assigns the requested event as @event' do
      event = Event.create! valid_attributes
      get :show, params: { id: event.to_param }, session: valid_session
      expect(assigns(:event)).to eq(event)
    end
  end

  describe 'GET #new' do
    it 'assigns a new event as @event' do
      get :new, params: {}, session: valid_session
      expect(assigns(:event)).to be_a_new(Event)
    end
  end

  describe 'GET #edit' do
    it 'assigns the requested event as @event' do
      event = Event.create! valid_attributes
      get :edit, params: { id: event.to_param }, session: valid_session
      expect(assigns(:event)).to eq(event)
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Event' do
        expect do
          post :create, params: { event: valid_attributes }, session: valid_session
        end.to change(Event, :count).by(1)
      end

      it 'assigns a newly created event as @event' do
        post :create, params: { event: valid_attributes }, session: valid_session
        expect(assigns(:event)).to be_a(Event)
        expect(assigns(:event)).to be_persisted
      end

      it 'redirects to the created event' do
        post :create, params: { event: valid_attributes }, session: valid_session
        expect(response).to redirect_to(Event.last)
      end
    end

    context 'with invalid params' do
      it 'assigns a newly created but unsaved event as @event' do
        post :create, params: { event: invalid_attributes }, session: valid_session
        expect(assigns(:event)).to be_a_new(Event)
      end

      it "re-renders the 'new' template" do
        post :create, params: { event: invalid_attributes }, session: valid_session
        expect(response).to render_template('new')
      end
    end
  end

  describe 'PUT #update' do
    context 'with valid params' do
      let(:new_attributes) do
        build(:update_event).attributes
      end

      it 'updates the requested event' do
        event = Event.create! valid_attributes
        put :update, params: { id: event.to_param, event: new_attributes }, session: valid_session
        event.reload
        expect(controller.notice).to eq(I18n.t('controller.success_update', model: Event.model_name.human))
      end

      it 'assigns the requested event as @event' do
        event = Event.create! valid_attributes
        put :update, params: { id: event.to_param, event: valid_attributes }, session: valid_session
        expect(assigns(:event)).to eq(event)
      end

      it 'redirects to the event' do
        event = Event.create! valid_attributes
        put :update, params: { id: event.to_param, event: valid_attributes }, session: valid_session
        expect(response).to redirect_to(event)
      end
    end

    context 'with invalid params' do
      it 'assigns the event as @event' do
        event = Event.create! valid_attributes
        put :update, params: { id: event.to_param, event: invalid_attributes }, session: valid_session
        expect(assigns(:event)).to eq(event)
      end

      it "re-renders the 'edit' template" do
        event = Event.create! valid_attributes
        put :update, params: { id: event.to_param, event: invalid_attributes }, session: valid_session
        expect(response).to render_template('edit')
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the requested event' do
      event = Event.create! valid_attributes
      expect do
        delete :destroy, params: { id: event.to_param }, session: valid_session
      end.to change(Event, :count).by(-1)
    end

    it 'redirects to the events list' do
      event = Event.create! valid_attributes
      delete :destroy, params: { id: event.to_param }, session: valid_session
      expect(response).to redirect_to(events_url)
    end
  end
end
