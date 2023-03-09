<div class="container">
  
<% @articles.each do |article| %>

  <div class="row justify-content-md-center">
    <div class="col-8 mt-4">
        <div class="card text-center shadow mb-5 bg-white rounded">
            <div class="card-header font-weight-bold font-italic">
            by Liliia Lyshchuk
            </div>
            <div class="card-body">
              <h5 class="card-title"><%= link_to article.title, article_path(article), class: "text-info" %></h5>
              <p class="card-text"><%= truncate(article.description, length: 100) %></p>
             
              <%= button_to "View", articles_path(@aricle), class: "btn btn-outline-info" %>  
              <%= button_to "Edit", edit_article_path(article), class: "btn btn-outline-warning" %> 
              <%= button_to "Delete", article_path(article), method: :delete, class: "btn btn-outline-danger" %>
              
 
             
            </div>
            <div class="card-footer text-muted">
              <small> Create <%= time_ago_in_words(article.created_at) %> ago,
              edited <%= time_ago_in_words(article.updated_at) %> ago </small>
            </div>
        </div>
    </div>
</div>



<% end %>

</div>

</div>