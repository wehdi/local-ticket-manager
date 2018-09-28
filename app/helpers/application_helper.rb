module ApplicationHelper

    def sing_up
        html = "<li class='nav-item'>".html_safe
        html+= link_to "Inscription <i class='material-icons'>".html_safe+
                "person_add</i>'".html_safe,
                new_user_registration_path,
                class:'nav-link'
        html+= "</li>".html_safe
    end

     def login
        html = "<li class='nav-item'>".html_safe
        html+= link_to "Se connecter <i class='material-icons'>".html_safe+
                "account_circle</i>'".html_safe,
                 new_user_session_path,
                class:'nav-link'
        html+= "</li>".html_safe
    end
    def disconnect
        html = "<li class='nav-item'>".html_safe
        html+= link_to "Se decconnecter <i class='material-icons'>".html_safe+
                "cancel</i>'".html_safe,
                destroy_user_session_path, method: :delete,
                class:'nav-link'
        html+= "</li>".html_safe
    end
end
