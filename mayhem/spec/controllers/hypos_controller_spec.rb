require 'rails_helper'

describe HyposController do

  describe HyposController do
    let!(:hypo){ Hypo.create(title: "This rep got what he deserved!", 
      law_name: "No shopping on Sundays", 
      law_sponsor_date: 2011-09-23, 
      sponsor_name: "Senator Kris Jenner", 
      sponsor_city: "Los Angeles", 
      sponsor_state: "CA", 
      precip_amount: 14, 
      is_tornado: true, 
      is_hurricane: false, 
      is_flood: true, 
      vote_count: 0 )}

    context "routing" do
      it "routes / to hypos#index" do
        expect(:get => "/").to route_to(controller:"hypos", action:"index")
      end
    end

    context "index" do
      it "assigns all hypos to a variable" do
        get :index
        expect(assigns(:hypos)).to eq Hypo.all
      end

      it "renders the index template" do
        get :index
        expect(response).to render_template("index")
      end
    end

    context "show" do
      before do
        get :show, :id=> hypoo.id
      end

      it "assigns the hypo to a variable" do
        expect(assigns(:hypo)).to be
      end

      it "renders the show template" do
        expect(response).to render_template("show")
      end
    end

    context "create" do
      context "with a valid hypo" do
        before do
          post :create, :hypo=> { :title=> "Socialized Medicine" }
        end
        it "creates a new valid hypo" do
          expect(Hypo.last.title).to eq("Socialized Medicine")
        end

        it { should respond_with(:redirect) }
        it { should redirect_to(assigns(:hypo)) }
      end

      context "an invalid hypo" do
        before do
          post :create, :hypoo=> { :title=> ""}
        end

        it "returns an error" do
          expect(assigns(:hypo).errors).not_to be_empty
        end

        it { should render_template('hypos/index') }
      end
    end

  end
end