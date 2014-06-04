package authorinformation



class AuthorData {

    
    String firstName
    String lastName
    String radio
    Date dateofBirth
    String description


    
    
    static constraints = {
        
        firstName (blank : false, nullable : false, unique : true)
        lastName (blank : false, nullable : false, unique : true)
        dateofBirth (blank : false, nullable : false) 
        description (blank : false, widget: 'textarea')
    }
 
    static mapping = {

        description type : "text"
    }
    
}
        
