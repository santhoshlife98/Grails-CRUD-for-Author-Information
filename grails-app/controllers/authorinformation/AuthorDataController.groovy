package authorinformation

import java.text.SimpleDateFormat

class AuthorDataController {

    def index() { 
        render(view : "index")
    }
    
    def create(AuthorData authorInstance) { 
    }
    
    def save (AuthorData authorInstance){
        
        AuthorData ad = new AuthorData(params)
        println(params)
        if(!ad.hasErrors() && ad.save()) {
            flash.message = "Book details created"
            render(view : "index", id:ad.firstName)
        } else {
            flash.message = "This Field is required"
            render(view : "create", model : [ad : ad])
        }
    }
        
    def edit(AuthorData authorInstance){ 
        render(view: "edit", model : [ad : authorInstance])
    }

    def list() {
        render(view : "list", model : [ad : AuthorData.list()])
        
    }

    def show(AuthorData authorInstance) {
        render(view : "show", model : [ad : authorInstance])
              
    }
    
    def update () {
        AuthorData ad = AuthorData.get(params.id)
        ad.firstName = params.firstName
        ad.lastName = params.lastName
        ad.radio = params.radio
        ad.dateofBirth = params.dateofBirth
        ad.description = params.description
        if(!ad.hasErrors() && ad.save()) {      
                flash.message = " Author details updated Successfully.!!!"
                redirect(action: "list")
        }
        else {
            flash.message = " Author details unable to update due to incorrect data.!!!"
            render(view : "edit", model : [book : book])
        }
    }
    
    def delete ()
    {
        def ad = AuthorData.get(params.id)
            if(ad) {
            ad.delete()
            flash.message = "Your book details deleted Successfully.!!!";
            redirect(action : "list");
        }
        else {
            redirect(action : "list");
         }
     }
}

