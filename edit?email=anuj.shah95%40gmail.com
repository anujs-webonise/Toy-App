<!DOCTYPE html>
<html>
  <head>
    <title><%= AUTHOUR_NAME %> | <%= APP_NAME %></title>
    <meta name="csrf-param" content="authenticity_token" />
<meta name="csrf-token" content="1AhyGg71uxtVXomG/Hns/TZUoL7RZtOQ7NF9IGKEgPEsKppl8hQHiMXY9QXggVLUaS+goMaHaIaFeJFDqPejZA==" />
<link rel="stylesheet" media="all" href="/assets/account_activations.self-e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855.css?body=1" data-turbolinks-track="reload" />
<link rel="stylesheet" media="all" href="/assets/custom.self-b8997052978a2b9baae6d5591ca6efdf9ea082acaf80c5f7c120b49bd876cd62.css?body=1" data-turbolinks-track="reload" />
<link rel="stylesheet" media="all" href="/assets/scaffolds.self-b98f1d14f6522d885db370d47d1b864657d4e869fa81327e5926a3ce7b6c4f2b.css?body=1" data-turbolinks-track="reload" />
<link rel="stylesheet" media="all" href="/assets/sessions.self-e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855.css?body=1" data-turbolinks-track="reload" />
<link rel="stylesheet" media="all" href="/assets/static_pages.self-e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855.css?body=1" data-turbolinks-track="reload" />
<link rel="stylesheet" media="all" href="/assets/users.self-e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855.css?body=1" data-turbolinks-track="reload" />
<link rel="stylesheet" media="all" href="/assets/application.self-f0d704deea029cf000697e2c0181ec173a1b474645466ed843eb5ee7bb215794.css?body=1" data-turbolinks-track="reload" />
<script src="/assets/jquery.self-bd7ddd393353a8d2480a622e80342adf488fb6006d667e8b42e4c0073393abee.js?body=1" data-turbolinks-track="reload"></script>
<script src="/assets/bootstrap.self-b38817c3e3a3049abb1fc08dd6ae448b23330f8453226efdb074710209474f75.js?body=1" data-turbolinks-track="reload"></script>
<script src="/assets/rails-ujs.self-551fbd47b981dacbb84a270f9123074caf39eb72aaf6f478ab597c6f81435e4b.js?body=1" data-turbolinks-track="reload"></script>
<script src="/assets/activestorage.self-6e8d967adecc8b2a7259df0f51ef5b6f171c33267c7d149a474beccd90c68697.js?body=1" data-turbolinks-track="reload"></script>
<script src="/assets/turbolinks.self-2db6ec539b9190f75e1d477b305df53d12904d5cafdd47c7ffd91ba25cbec128.js?body=1" data-turbolinks-track="reload"></script>
<script src="/assets/account_activations.self-877aef30ae1b040ab8a3aba4e3e309a11d7f2612f44dde450b5c157aa5f95c05.js?body=1" data-turbolinks-track="reload"></script>
<script src="/assets/action_cable.self-69fddfcddf4fdef9828648f9330d6ce108b93b82b0b8d3affffc59a114853451.js?body=1" data-turbolinks-track="reload"></script>
<script src="/assets/cable.self-8484513823f404ed0c0f039f75243bfdede7af7919dda65f2e66391252443ce9.js?body=1" data-turbolinks-track="reload"></script>
<script src="/assets/sessions.self-877aef30ae1b040ab8a3aba4e3e309a11d7f2612f44dde450b5c157aa5f95c05.js?body=1" data-turbolinks-track="reload"></script>
<script src="/assets/static_pages.self-877aef30ae1b040ab8a3aba4e3e309a11d7f2612f44dde450b5c157aa5f95c05.js?body=1" data-turbolinks-track="reload"></script>
<script src="/assets/users.self-877aef30ae1b040ab8a3aba4e3e309a11d7f2612f44dde450b5c157aa5f95c05.js?body=1" data-turbolinks-track="reload"></script>
<script src="/assets/application.self-5e866087125b4eb5e02a8365d73cdaeb7f2127bbb3f479fb54ab3ddb0d5c66af.js?body=1" data-turbolinks-track="reload"></script>


    <!--[if lt IE 9]>
  <script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/r29/html5.min.js">
  </script>
<![endif]-->
  </head>
  <body>
    <header class="navbar navbar-fixed-top navbar-inverse">
  <div class="container">
    <a id="logo" href="/"><%= APP_NAME %></a>
    <nav>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="/">Home</a></li>
        <li><a href="/help">Help</a></li>
          <li><a href="/users">Users</a></li>
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              Account <b class="caret"></b>
            </a>
            <ul class="dropdown-menu">
              <li><a href="/users/102">Profile</a></li>
              <li><a href="/users/102/edit">Settings</a></li>
              <li class="divider"></li>
              <li>
                <a rel="nofollow" data-method="delete" href="/logout">Log out</a>
              </li>
            </ul>
          </li>
      </ul>
    </nav>
  </div>
</header>


    <div class="container">
        <div class="alert alert-success">Account activated!</div>
      <div class="row">
  <aside class="col-md-4">
    <section class="user_info">
      <h1>
        <img alt="<%= AUTHOUR_NAME %>" class="gravatar" src="https://secure.gravatar.com/avatar/af272e0b02565ea59602fca78ea4078a?s=80" />
        <%= AUTHOUR_NAME %>
      </h1>
    </section>
  </aside>
</div>


      <footer class="footer">
  <small>
    The <a href="http://www.railstutorial.org/"><%= APP_NAME %></a>
  </small>
  <nav>
    <ul>
      <li><a href="/about">About</a></li>
      <li><a href="/contact">Contact</a></li>
    </ul>
  </nav>
</footer>
      <pre class="debug_dump">--- !ruby/object:ActionController::Parameters
parameters: !ruby/hash:ActiveSupport::HashWithIndifferentAccess
  controller: users
  action: show
  id: &#39;102&#39;
permitted: false
</pre>
    </div>
  </body>
</html>

