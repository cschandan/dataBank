
  <div class="container">
    <div class="navbar-header">
    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
    </button>
    <a class="navbar-brand" href="#">Project name</a>
</div>
<div id="navbar" class="navbar-collapse collapse">
    <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="#about">About</a></li>
        <li><a href="#contact">Contact</a></li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Dropdown <span class="caret"></span></a>
            <ul class="dropdown-menu" role="menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li class="divider"></li>
                <li class="dropdown-header">Nav header</li>
                <li><a href="#">Separated link</a></li>
                <li><a href="#">One more separated link</a></li>
            </ul>
        </li>
    </ul>
    <sec:ifLoggedIn>
        <ul class="nav navbar-nav navbar-right">
            <li><g:link>My Profile</g:link> </li>
            <sec:ifAnyGranted roles="ROLE_ADMIN">
                <li><g:link controller="user" action="index">Manage User</g:link></li>
            </sec:ifAnyGranted>

        </ul>
    </sec:ifLoggedIn>
    <sec:ifNotLoggedIn>
        <ul class="nav navbar-nav navbar-right">
            <form action='${postUrl}' method='POST' id='loginForm' class='cssform' autocomplete='off' style="margin-top: 10px;">
                <input type='text' class='text_' name='j_username' id='username' placeholder="Username"/>
                <input type='password' class='text_' name='j_password' id='password' placeholder="Password"/>
                <input type='submit' id="submit" value='SIGN IN'/>
            </form>
        </ul>
    </sec:ifNotLoggedIn>


    </div><!--/.nav-collapse -->
</div>