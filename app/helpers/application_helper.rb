module ApplicationHelper

  def show_company_name
#    
    if current_user.company_id.nil?
      link_to "You have to create a company", new_company_path
    else
      @company_find = Company.find(current_user.company_id)
      @company_name = @company_find.company_name
      link_to @company_name, @company_find
    end
    
  end

  def show_user_name
    if current_user.first_name.nil?
      "No Name Assigned"
    else
      @first_name = current_user.first_name
      @last_name = current_user.last_name
      @first_name +" " + @last_name
    end
  end
  
end
