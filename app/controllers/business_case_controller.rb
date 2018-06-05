class BusinessCaseController < ApplicationController
  def index
    @business_cases = BusinessCase.all
  end

  def new
    puts 'coucouuuuuuuuuu'
  end

  def create
    @business_case = BusinessCase.create(
      title: params["title"],
      client_problem: params["business_case"]["client_problem"],
      methodology: params["business_case"]["methodology"],
      results: params["business_case"]["results"],
      client_comments: params["business_case"]["client_comments"],
      localisation: params["localisation"],
      corporate_size: params["corporate_size"],
      industry: params["industry"],
      expertise: params["expertise"]
      )
    puts params
    if @business_case.valid?
      puts 'VALIDE'
      redirect_to "/business_case"
    else
      puts @business_case.errors.messages
      render 'new'
    end
  end

  def show
    id = params["id"]
    @business_case = BusinessCase.where(id: id).first
  end

  def edit


    id = params["id"]
    @business_case = BusinessCase.where(id: id).first
  end



  def update
    id = params["id"]

    @business_case = BusinessCase.where(id: id).first

    puts params
    @business_case.title = params["title"]
    @business_case.industry = params["industry"]
    @business_case.corporate_size = params["corporate_size"]
    @business_case.localisation = params["localisation"]
    @business_case.expertise = params["expertise"]
    @business_case.client_problem = params["business_case"]["client_problem"]
    @business_case.methodology = params["business_case"]["methodology"]
    @business_case.results = params["business_case"]["results"]
    @business_case.client_comments = params["business_case"]["client_comments"]
    if @business_case.save
      puts 'update OK'
      redirect_to "/business_case/#{id}"
    else
      puts 'update pas OK'
      puts @business_case.errors.messages
      render 'edit'
    end
  end

  def delete
    id = params["id"]
    @business_case = BusinessCase.where(id: id).first
  end



  def destroy
    id = params["id"]
    business_case = BusinessCase.where(id: id).first
    business_case.destroy
    redirect_to "/business_case"
  end

end
