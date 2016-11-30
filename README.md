ToDo List:

**Views**

  Issues

      index

      show

      new?? 

        maybe be admin-only? 

        add them straight into the database sans GUI?

  Sessions

      new

      show

  Tasks

      new

      edit

      index

        completed by current user

        todo for current user

        created by current user
        
        suggested for current user
        
      show

  Users

      new

      show

      edit

  Configure bootstrap or some other front end thing? 

     if we do use bootstrap we should add JQuery locally not import

  Decide how else to incorporate JS for slick no-refresh interfaces  



**Controllers**

  Application

      current_user and login related tasks 

  Issues

      index

      show

      new??

  Sessions

      new

      delete

      show

  Tasks

      new

      create

      edit

      update

      index
        completed by current user

        todo for current user

        created by current user
        
        suggested for current user

      show     

  Users

      new

      create

      show

      edit

      update





**Decisions**



Should there be a UserIssues table that will determine which Tasks the User is shown? (ones relevant to her interests) 

    if so, the user should still be able to see an all_tasks index 


do we want to save user zip codes?

    is this US exclusive or can Scots use this to organize independence?


Do we want there to be private tasks or tasks that are only visible to users with certain permissions? 

    ActiveRecord question for self: when you create a migration to add a column (like admin status or special group membership) and set the default value to false does it retroactively apply it to users created before the migration 


If we are going to seed the database with issues and not let users generate them, we'll need to generate a list 


We will also probably need to generate a bunch of seed tasks (actual actionable ones!) for demo/first user finding it


Come up with a name


do we want to send emails to users?

    following up about todos

    listing potentially relevant new action items 


Adapters for petition APIs to auto-create Tasks?

    how will we determine which Issue they belong to 

  
