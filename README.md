


<!DOCTYPE html>
<html lang="en" class="">
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# object: http://ogp.me/ns/object# article: http://ogp.me/ns/article# profile: http://ogp.me/ns/profile#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    
    
    <title>data-viz/README.md at master · Ecohen4/data-viz</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub">
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub">
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png">
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png">
    <meta property="fb:app_id" content="1401488693436528">

      <meta content="@github" name="twitter:site" /><meta content="summary" name="twitter:card" /><meta content="Ecohen4/data-viz" name="twitter:title" /><meta content="data-viz - Teaching data visualization at Columbia University." name="twitter:description" /><meta content="https://avatars0.githubusercontent.com/u/7387573?v=3&amp;s=400" name="twitter:image:src" />
      <meta content="GitHub" property="og:site_name" /><meta content="object" property="og:type" /><meta content="https://avatars0.githubusercontent.com/u/7387573?v=3&amp;s=400" property="og:image" /><meta content="Ecohen4/data-viz" property="og:title" /><meta content="https://github.com/Ecohen4/data-viz" property="og:url" /><meta content="data-viz - Teaching data visualization at Columbia University." property="og:description" />
      <meta name="browser-stats-url" content="/_stats">
    <link rel="assets" href="https://assets-cdn.github.com/">
    <link rel="conduit-xhr" href="https://ghconduit.com:25035">
    <link rel="xhr-socket" href="/_sockets">
    <meta name="pjax-timeout" content="1000">
    <link rel="sudo-modal" href="/sessions/sudo_modal">

    <meta name="msapplication-TileImage" content="/windows-tile.png">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="selected-link" value="repo_source" data-pjax-transient>
      <meta name="google-analytics" content="UA-3769691-2">

    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="collector-cdn.github.com" name="octolytics-script-host" /><meta content="github" name="octolytics-app-id" /><meta content="9EDE82D3:11B2:5C313A7:54EEA857" name="octolytics-dimension-request_id" /><meta content="8525542" name="octolytics-actor-id" /><meta content="denistanwh" name="octolytics-actor-login" /><meta content="f2ae8e44395b7e610726fc251ee27a2e950f21b6aaf6c60369106df1cb2bdf55" name="octolytics-actor-hash" />
    
    <meta content="Rails, view, blob#show" name="analytics-event" />

    
    <link rel="icon" type="image/x-icon" href="https://assets-cdn.github.com/favicon.ico">


    <meta content="authenticity_token" name="csrf-param" />
<meta content="lUZH0lqHSjSoPP17RBJ4SZkXnkUVo3O7HX+VPLK2kS7IJp7yE+FXQQ9sgq5xk9is/+aN4z1QzCB1XfA+RKWiFQ==" name="csrf-token" />

    <link href="https://assets-cdn.github.com/assets/github-84e4144e3c0347e1187b021a88b6bcbad5186ac898c63e26b13332c7c53504a6.css" media="all" rel="stylesheet" />
    <link href="https://assets-cdn.github.com/assets/github2-f7073494168d35df2845fccdae3f73cb69dc51cf65c42dccd9cefb67ee814256.css" media="all" rel="stylesheet" />
    
    


    <meta http-equiv="x-pjax-version" content="09f209c84e6ad5e3fae4b3f1a045359d">

      
  <meta name="description" content="data-viz - Teaching data visualization at Columbia University.">
  <meta name="go-import" content="github.com/Ecohen4/data-viz git https://github.com/Ecohen4/data-viz.git">

  <meta content="7387573" name="octolytics-dimension-user_id" /><meta content="Ecohen4" name="octolytics-dimension-user_login" /><meta content="29430012" name="octolytics-dimension-repository_id" /><meta content="Ecohen4/data-viz" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="29430012" name="octolytics-dimension-repository_network_root_id" /><meta content="Ecohen4/data-viz" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/Ecohen4/data-viz/commits/master.atom" rel="alternate" title="Recent Commits to data-viz:master" type="application/atom+xml">

  </head>


  <body class="logged_in  env-production macintosh vis-public page-blob">
    <a href="#start-of-content" tabindex="1" class="accessibility-aid js-skip-to-content">Skip to content</a>
    <div class="wrapper">
      
      
      
      


      <div class="header header-logged-in true" role="banner">
  <div class="container clearfix">

    <a class="header-logo-invertocat" href="https://github.com/" data-hotkey="g d" aria-label="Homepage" data-ga-click="Header, go to dashboard, icon:logo">
  <span class="mega-octicon octicon-mark-github"></span>
</a>


      <div class="site-search repo-scope js-site-search" role="search">
          <form accept-charset="UTF-8" action="/Ecohen4/data-viz/search" class="js-site-search-form" data-global-search-url="/search" data-repo-search-url="/Ecohen4/data-viz/search" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
  <input type="text"
    class="js-site-search-field is-clearable"
    data-hotkey="s"
    name="q"
    placeholder="Search"
    data-global-scope-placeholder="Search GitHub"
    data-repo-scope-placeholder="Search"
    tabindex="1"
    autocapitalize="off">
  <div class="scope-badge">This repository</div>
</form>
      </div>
      <ul class="header-nav left" role="navigation">
        <li class="header-nav-item explore">
          <a class="header-nav-link" href="/explore" data-ga-click="Header, go to explore, text:explore">Explore</a>
        </li>
          <li class="header-nav-item">
            <a class="header-nav-link" href="https://gist.github.com" data-ga-click="Header, go to gist, text:gist">Gist</a>
          </li>
          <li class="header-nav-item">
            <a class="header-nav-link" href="/blog" data-ga-click="Header, go to blog, text:blog">Blog</a>
          </li>
        <li class="header-nav-item">
          <a class="header-nav-link" href="https://help.github.com" data-ga-click="Header, go to help, text:help">Help</a>
        </li>
      </ul>

    
<ul class="header-nav user-nav right" id="user-links">
  <li class="header-nav-item dropdown js-menu-container">
    <a class="header-nav-link name" href="/denistanwh" data-ga-click="Header, go to profile, text:username">
      <img alt="denistanwh" class="avatar" data-user="8525542" height="20" src="https://avatars2.githubusercontent.com/u/8525542?v=3&amp;s=40" width="20" />
      <span class="css-truncate">
        <span class="css-truncate-target">denistanwh</span>
      </span>
    </a>
  </li>

  <li class="header-nav-item dropdown js-menu-container">
    <a class="header-nav-link js-menu-target tooltipped tooltipped-s" href="#" aria-label="Create new..." data-ga-click="Header, create new, icon:add">
      <span class="octicon octicon-plus"></span>
      <span class="dropdown-caret"></span>
    </a>

    <div class="dropdown-menu-content js-menu-content">
      
<ul class="dropdown-menu">
  <li>
    <a href="/new" data-ga-click="Header, create new repository, icon:repo"><span class="octicon octicon-repo"></span> New repository</a>
  </li>
  <li>
    <a href="/organizations/new" data-ga-click="Header, create new organization, icon:organization"><span class="octicon octicon-organization"></span> New organization</a>
  </li>


    <li class="dropdown-divider"></li>
    <li class="dropdown-header">
      <span title="Ecohen4/data-viz">This repository</span>
    </li>
      <li>
        <a href="/Ecohen4/data-viz/issues/new" data-ga-click="Header, create new issue, icon:issue"><span class="octicon octicon-issue-opened"></span> New issue</a>
      </li>
</ul>

    </div>
  </li>

  <li class="header-nav-item">
        <a href="/notifications" aria-label="You have no unread notifications" class="header-nav-link notification-indicator tooltipped tooltipped-s" data-ga-click="Header, go to notifications, icon:read" data-hotkey="g n">
        <span class="mail-status all-read"></span>
        <span class="octicon octicon-inbox"></span>
</a>
  </li>

  <li class="header-nav-item">
    <a class="header-nav-link tooltipped tooltipped-s" href="/settings/profile" id="account_settings" aria-label="Settings" data-ga-click="Header, go to settings, icon:settings">
      <span class="octicon octicon-gear"></span>
    </a>
  </li>

  <li class="header-nav-item">
    <form accept-charset="UTF-8" action="/logout" class="logout-form" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="QoZs3stdOjGpaoi5TdCcotcS1TKtx3cxn2MTr0G36r2xKEwYjCJ+xfc5ysLpdel/D5QLzC5/i4KT4XpxNBWpSw==" /></div>
      <button class="header-nav-link sign-out-button tooltipped tooltipped-s" aria-label="Sign out" data-ga-click="Header, sign out, icon:logout">
        <span class="octicon octicon-sign-out"></span>
      </button>
</form>  </li>

</ul>


    
  </div>
</div>

      

        


      <div id="start-of-content" class="accessibility-aid"></div>
          <div class="site" itemscope itemtype="http://schema.org/WebPage">
    <div id="js-flash-container">
      
    </div>
    <div class="pagehead repohead instapaper_ignore readability-menu">
      <div class="container">
        
<ul class="pagehead-actions">

  <li>
      <form accept-charset="UTF-8" action="/notifications/subscribe" class="js-social-container" data-autosubmit="true" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="lbpnhSVimsWFHtMrXtS9nDnTJbvKByT6iPHHEaeigBphmPS6I9cHfTcJszm5XPqrf7qWUCY7WtJSEzdDnE7/zg==" /></div>    <input id="repository_id" name="repository_id" type="hidden" value="29430012" />

      <div class="select-menu js-menu-container js-select-menu">
        <a class="social-count js-social-count" href="/Ecohen4/data-viz/watchers">
          1
        </a>
        <a href="/Ecohen4/data-viz/subscription"
          class="minibutton select-menu-button with-count js-menu-target" role="button" tabindex="0" aria-haspopup="true">
          <span class="js-select-button">
            <span class="octicon octicon-eye"></span>
            Watch
          </span>
        </a>

        <div class="select-menu-modal-holder">
          <div class="select-menu-modal subscription-menu-modal js-menu-content" aria-hidden="true">
            <div class="select-menu-header">
              <span class="select-menu-title">Notifications</span>
              <span class="octicon octicon-x js-menu-close" role="button" aria-label="Close"></span>
            </div>

            <div class="select-menu-list js-navigation-container" role="menu">

              <div class="select-menu-item js-navigation-item selected" role="menuitem" tabindex="0">
                <span class="select-menu-item-icon octicon octicon-check"></span>
                <div class="select-menu-item-text">
                  <input checked="checked" id="do_included" name="do" type="radio" value="included" />
                  <span class="select-menu-item-heading">Not watching</span>
                  <span class="description">Be notified when participating or @mentioned.</span>
                  <span class="js-select-button-text hidden-select-button-text">
                    <span class="octicon octicon-eye"></span>
                    Watch
                  </span>
                </div>
              </div>

              <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
                <span class="select-menu-item-icon octicon octicon octicon-check"></span>
                <div class="select-menu-item-text">
                  <input id="do_subscribed" name="do" type="radio" value="subscribed" />
                  <span class="select-menu-item-heading">Watching</span>
                  <span class="description">Be notified of all conversations.</span>
                  <span class="js-select-button-text hidden-select-button-text">
                    <span class="octicon octicon-eye"></span>
                    Unwatch
                  </span>
                </div>
              </div>

              <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
                <span class="select-menu-item-icon octicon octicon-check"></span>
                <div class="select-menu-item-text">
                  <input id="do_ignore" name="do" type="radio" value="ignore" />
                  <span class="select-menu-item-heading">Ignoring</span>
                  <span class="description">Never be notified.</span>
                  <span class="js-select-button-text hidden-select-button-text">
                    <span class="octicon octicon-mute"></span>
                    Stop ignoring
                  </span>
                </div>
              </div>

            </div>

          </div>
        </div>
      </div>
</form>

  </li>

  <li>
    
  <div class="js-toggler-container js-social-container starring-container ">

    <form accept-charset="UTF-8" action="/Ecohen4/data-viz/unstar" class="js-toggler-form starred js-unstar-button" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="v66+k7a7NYaGqgS4y19Khb3S3ZdeTZw7vMSDnOxeQI1AATqKuRn7qMsEEKNOlS6U9u5FzaF7A/gWKzT57IL2mA==" /></div>
      <button
        class="minibutton with-count js-toggler-target"
        aria-label="Unstar this repository" title="Unstar Ecohen4/data-viz">
        <span class="octicon octicon-star"></span>
        Unstar
      </button>
        <a class="social-count js-social-count" href="/Ecohen4/data-viz/stargazers">
          0
        </a>
</form>
    <form accept-charset="UTF-8" action="/Ecohen4/data-viz/star" class="js-toggler-form unstarred js-star-button" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="HMYaJhbAutKtHEceZHNlwN/3sL2FAnwT9EnGbJmqc300pU1qnqj5/yqHE+/M5bDYIBru44JkesvntgXFYlcYBg==" /></div>
      <button
        class="minibutton with-count js-toggler-target"
        aria-label="Star this repository" title="Star Ecohen4/data-viz">
        <span class="octicon octicon-star"></span>
        Star
      </button>
        <a class="social-count js-social-count" href="/Ecohen4/data-viz/stargazers">
          0
        </a>
</form>  </div>

  </li>

        <li>
          <a href="/Ecohen4/data-viz/fork" class="minibutton with-count js-toggler-target tooltipped-n" title="Fork your own copy of Ecohen4/data-viz to your account" aria-label="Fork your own copy of Ecohen4/data-viz to your account" rel="nofollow" data-method="post">
            <span class="octicon octicon-repo-forked"></span>
            Fork
          </a>
          <a href="/Ecohen4/data-viz/network" class="social-count">39</a>
        </li>

</ul>

        <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
          <span class="mega-octicon octicon-repo"></span>
          <span class="author"><a href="/Ecohen4" class="url fn" itemprop="url" rel="author"><span itemprop="title">Ecohen4</span></a></span><!--
       --><span class="path-divider">/</span><!--
       --><strong><a href="/Ecohen4/data-viz" class="js-current-repository" data-pjax="#js-repo-pjax-container">data-viz</a></strong>

          <span class="page-context-loader">
            <img alt="" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
          </span>

        </h1>
      </div><!-- /.container -->
    </div><!-- /.repohead -->

    <div class="container">
      <div class="repository-with-sidebar repo-container new-discussion-timeline  ">
        <div class="repository-sidebar clearfix">
            
<nav class="sunken-menu repo-nav js-repo-nav js-sidenav-container-pjax js-octicon-loaders"
     role="navigation"
     data-pjax="#js-repo-pjax-container"
     data-issue-count-url="/Ecohen4/data-viz/issues/counts">
  <ul class="sunken-menu-group">
    <li class="tooltipped tooltipped-w" aria-label="Code">
      <a href="/Ecohen4/data-viz" aria-label="Code" class="selected js-selected-navigation-item sunken-menu-item" data-hotkey="g c" data-selected-links="repo_source repo_downloads repo_commits repo_releases repo_tags repo_branches /Ecohen4/data-viz">
        <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
        <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>    </li>

      <li class="tooltipped tooltipped-w" aria-label="Issues">
        <a href="/Ecohen4/data-viz/issues" aria-label="Issues" class="js-selected-navigation-item sunken-menu-item" data-hotkey="g i" data-selected-links="repo_issues repo_labels repo_milestones /Ecohen4/data-viz/issues">
          <span class="octicon octicon-issue-opened"></span> <span class="full-word">Issues</span>
          <span class="js-issue-replace-counter"></span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>      </li>

    <li class="tooltipped tooltipped-w" aria-label="Pull Requests">
      <a href="/Ecohen4/data-viz/pulls" aria-label="Pull Requests" class="js-selected-navigation-item sunken-menu-item" data-hotkey="g p" data-selected-links="repo_pulls /Ecohen4/data-viz/pulls">
          <span class="octicon octicon-git-pull-request"></span> <span class="full-word">Pull Requests</span>
          <span class="js-pull-replace-counter"></span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>    </li>


      <li class="tooltipped tooltipped-w" aria-label="Wiki">
        <a href="/Ecohen4/data-viz/wiki" aria-label="Wiki" class="js-selected-navigation-item sunken-menu-item" data-hotkey="g w" data-selected-links="repo_wiki /Ecohen4/data-viz/wiki">
          <span class="octicon octicon-book"></span> <span class="full-word">Wiki</span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>      </li>
  </ul>
  <div class="sunken-menu-separator"></div>
  <ul class="sunken-menu-group">

    <li class="tooltipped tooltipped-w" aria-label="Pulse">
      <a href="/Ecohen4/data-viz/pulse" aria-label="Pulse" class="js-selected-navigation-item sunken-menu-item" data-selected-links="pulse /Ecohen4/data-viz/pulse">
        <span class="octicon octicon-pulse"></span> <span class="full-word">Pulse</span>
        <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>    </li>

    <li class="tooltipped tooltipped-w" aria-label="Graphs">
      <a href="/Ecohen4/data-viz/graphs" aria-label="Graphs" class="js-selected-navigation-item sunken-menu-item" data-selected-links="repo_graphs repo_contributors /Ecohen4/data-viz/graphs">
        <span class="octicon octicon-graph"></span> <span class="full-word">Graphs</span>
        <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>    </li>
  </ul>


</nav>

              <div class="only-with-full-nav">
                  
<div class="clone-url open"
  data-protocol-type="http"
  data-url="/users/set_protocol?protocol_selector=http&amp;protocol_type=clone">
  <h3><span class="text-emphasized">HTTPS</span> clone URL</h3>
  <div class="input-group js-zeroclipboard-container">
    <input type="text" class="input-mini input-monospace js-url-field js-zeroclipboard-target"
           value="https://github.com/Ecohen4/data-viz.git" readonly="readonly">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard minibutton zeroclipboard-button" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>

  
<div class="clone-url "
  data-protocol-type="ssh"
  data-url="/users/set_protocol?protocol_selector=ssh&amp;protocol_type=clone">
  <h3><span class="text-emphasized">SSH</span> clone URL</h3>
  <div class="input-group js-zeroclipboard-container">
    <input type="text" class="input-mini input-monospace js-url-field js-zeroclipboard-target"
           value="git@github.com:Ecohen4/data-viz.git" readonly="readonly">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard minibutton zeroclipboard-button" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>

  
<div class="clone-url "
  data-protocol-type="subversion"
  data-url="/users/set_protocol?protocol_selector=subversion&amp;protocol_type=clone">
  <h3><span class="text-emphasized">Subversion</span> checkout URL</h3>
  <div class="input-group js-zeroclipboard-container">
    <input type="text" class="input-mini input-monospace js-url-field js-zeroclipboard-target"
           value="https://github.com/Ecohen4/data-viz" readonly="readonly">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard minibutton zeroclipboard-button" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>



<p class="clone-options">You can clone with
  <a href="#" class="js-clone-selector" data-protocol="http">HTTPS</a>, <a href="#" class="js-clone-selector" data-protocol="ssh">SSH</a>, or <a href="#" class="js-clone-selector" data-protocol="subversion">Subversion</a>.
  <a href="https://help.github.com/articles/which-remote-url-should-i-use" class="help tooltipped tooltipped-n" aria-label="Get help on which URL is right for you.">
    <span class="octicon octicon-question"></span>
  </a>
</p>

  <a href="http://mac.github.com" data-url="github-mac://openRepo/https://github.com/Ecohen4/data-viz" class="minibutton sidebar-button js-conduit-rewrite-url" title="Save Ecohen4/data-viz to your computer and use it in GitHub Desktop." aria-label="Save Ecohen4/data-viz to your computer and use it in GitHub Desktop.">
    <span class="octicon octicon-device-desktop"></span>
    Clone in Desktop
  </a>


                <a href="/Ecohen4/data-viz/archive/master.zip"
                   class="minibutton sidebar-button"
                   aria-label="Download the contents of Ecohen4/data-viz as a zip file"
                   title="Download the contents of Ecohen4/data-viz as a zip file"
                   rel="nofollow">
                  <span class="octicon octicon-cloud-download"></span>
                  Download ZIP
                </a>
              </div>
        </div><!-- /.repository-sidebar -->

        <div id="js-repo-pjax-container" class="repository-content context-loader-container" data-pjax-container>
          

<a href="/Ecohen4/data-viz/blob/5c611046f189897087cad35c271501be88ae72d4/README.md" class="hidden js-permalink-shortcut" data-hotkey="y">Permalink</a>

<!-- blob contrib key: blob_contributors:v21:02d59efba013d01739331e793ea36086 -->

<div class="file-navigation js-zeroclipboard-container">
  
<div class="select-menu js-menu-container js-select-menu left">
  <span class="minibutton select-menu-button js-menu-target css-truncate" data-hotkey="w"
    data-master-branch="master"
    data-ref="master"
    title="master"
    role="button" aria-label="Switch branches or tags" tabindex="0" aria-haspopup="true">
    <span class="octicon octicon-git-branch"></span>
    <i>branch:</i>
    <span class="js-select-button css-truncate-target">master</span>
  </span>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax aria-hidden="true">

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <span class="select-menu-title">Switch branches/tags</span>
        <span class="octicon octicon-x js-menu-close" role="button" aria-label="Close"></span>
      </div>

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Filter branches/tags" id="context-commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" data-filter-placeholder="Filter branches/tags" class="js-select-menu-tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" data-filter-placeholder="Find a tag…" class="js-select-menu-tab">Tags</a>
            </li>
          </ul>
        </div>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/Ecohen4/data-viz/blob/gh-pages/README.md"
               data-name="gh-pages"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="gh-pages">
                gh-pages
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/Ecohen4/data-viz/blob/hw2/README.md"
               data-name="hw2"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="hw2">
                hw2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open selected"
               href="/Ecohen4/data-viz/blob/master/README.md"
               data-name="master"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="master">
                master
              </span>
            </a>
        </div>

          <div class="select-menu-no-results">Nothing to show</div>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div>

    </div>
  </div>
</div>

  <div class="button-group right">
    <a href="/Ecohen4/data-viz/find/master"
          class="js-show-file-finder minibutton empty-icon tooltipped tooltipped-s"
          data-pjax
          data-hotkey="t"
          aria-label="Quickly jump between files">
      <span class="octicon octicon-list-unordered"></span>
    </a>
    <button aria-label="Copy file path to clipboard" class="js-zeroclipboard minibutton zeroclipboard-button" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
  </div>

  <div class="breadcrumb js-zeroclipboard-target">
    <span class='repo-root js-repo-root'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/Ecohen4/data-viz" class="" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">data-viz</span></a></span></span><span class="separator">/</span><strong class="final-path">README.md</strong>
  </div>
</div>

<include-fragment class="commit commit-loader file-history-tease" src="/Ecohen4/data-viz/contributors/master/README.md">
  <div class="file-history-tease-header">
    Fetching contributors&hellip;
  </div>

  <div class="participation">
    <p class="loader-loading"><img alt="" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-EAF2F5-0bdc57d34b85c4a4de9d0d1db10cd70e8a95f33ff4f46c5a8c48b4bf4e5a9abe.gif" width="16" /></p>
    <p class="loader-error">Cannot retrieve contributors at this time</p>
  </div>
</include-fragment>
<div class="file">
  <div class="file-header">
    <div class="file-info">
        105 lines (85 sloc)
        <span class="file-info-divider"></span>
      7.308 kb
    </div>
    <div class="file-actions">
      <div class="button-group">
        <a href="/Ecohen4/data-viz/raw/master/README.md" class="minibutton " id="raw-url">Raw</a>
          <a href="/Ecohen4/data-viz/blame/master/README.md" class="minibutton js-update-url-with-hash">Blame</a>
        <a href="/Ecohen4/data-viz/commits/master/README.md" class="minibutton " rel="nofollow">History</a>
      </div><!-- /.button-group -->

        <a class="octicon-button tooltipped tooltipped-nw js-conduit-openfile-check"
           href="http://mac.github.com"
           data-url="github-mac://openRepo/https://github.com/Ecohen4/data-viz?branch=master&amp;filepath=README.md"
           aria-label="Open this file in GitHub for Mac"
           data-failed-title="Your version of GitHub for Mac is too old to open this file. Try checking for updates.">
            <span class="octicon octicon-device-desktop"></span>
        </a>

            <a class="octicon-button tooltipped tooltipped-n js-update-url-with-hash"
               aria-label="Clicking this button will fork this project so you can edit the file"
               href="/Ecohen4/data-viz/edit/master/README.md"
               data-method="post" rel="nofollow"><span class="octicon octicon-pencil"></span></a>

          <a class="octicon-button danger tooltipped tooltipped-s"
             href="/Ecohen4/data-viz/delete/master/README.md"
             aria-label="Fork this project and delete file"
             data-method="post" data-test-id="delete-blob-file" rel="nofollow">
        <span class="octicon octicon-trashcan"></span>
      </a>
    </div><!-- /.actions -->
  </div>
  
  <div id="readme" class="blob instapaper_body">
    <article class="markdown-body entry-content" itemprop="mainContentOfPage"><h1>
<a id="user-content-data-visualization" class="anchor" href="#data-visualization" aria-hidden="true"><span class="octicon octicon-link"></span></a>Data Visualization</h1>

<pre><code>Quantitative Methods in the Social Sciences (QMSS)  
Graduate School of Arts and Sciences (GSAS)  
Columbia University
</code></pre>

<h2>
<a id="user-content-course-details" class="anchor" href="#course-details" aria-hidden="true"><span class="octicon octicon-link"></span></a>Course Details</h2>

<p>Course: QMSS G4063 Spring 2015<br>
Lecture: MW 1:10pm-2:25pm at 313 Fayerweather<br>
Office Hours: W 2:30pm-3:30pm at IAB 270C </p>

<h2>
<a id="user-content-instructor" class="anchor" href="#instructor" aria-hidden="true"><span class="octicon octicon-link"></span></a>Instructor</h2>

<p>Elliot Cohen, Ph.D.<br>
Lecturer in the Department of Statistics<br>
Columbia University</p>

<h2>
<a id="user-content-course-description" class="anchor" href="#course-description" aria-hidden="true"><span class="octicon octicon-link"></span></a>Course Description</h2>

<p>This course offers a rigorous introduction to data visualization from theory to implementation. Drawing on a combination of lectures, readings, discussions and coding, we will translate the timeless concepts of Minard, Playfair, Tufte and Wilkinson to new and diverse fields of study. Students will receive a coding crash-course in R, JavaScript, CSS, HTML and D3. The goal is not to become computer scientists, but to build the requisite foundation for modern implementation of exploratory and explanatory data visualizations. Students will have the opportunity to work in small teams to create interactive data visualizations worthy of their portfolios. The final deliverable will be a research-driven data visualization with accompanying prose in the form of a conference paper submission. A working knowledge of R from at least one previous class is highly recommended.  </p>

<h2>
<a id="user-content-deliverables" class="anchor" href="#deliverables" aria-hidden="true"><span class="octicon octicon-link"></span></a>Deliverables</h2>

<ul class="task-list">
<li>
<strong>Quizzes (30%)</strong> 
Quizzes are essential for assessing student learning and pedagogical efficacy. There will be 4 quizzes in total; students may pick their best three to count towards their final grade.</li>
<li>
<strong>Homework (30%)</strong>
Students will complete at least three assignments and submit them to the course repository as pull requests. All submissions must follow a "<em>Year-Month-Day-YourName-AssignmentName.FileExtension</em>" naming convention. Assignments will serve as progress indicators on key concepts, methods and techniques.</li>
<li>
<strong>Semester Project (30%)</strong>
Students will have the opportunity to work in small teams to create data visualizations worthy of their portfolios. The final deliverable will be a well-articulated, research-driven data visualization and accompanying prose in the form of a conference paper submission. Students will have considerable leeway in choosing a project topic and finding an appropriate conference or forum for submission.</li>
<li>
<strong>Class Participation (10%)</strong>

<ul class="task-list">
<li>Attendance</li>
<li>Being awake, attentive and respectful</li>
<li>Being helpful to peers and the class as a whole</li>
<li>Contributing to group work and peer code reviews</li>
</ul>
</li>
</ul>

<h2>
<a id="user-content-required-reading" class="anchor" href="#required-reading" aria-hidden="true"><span class="octicon octicon-link"></span></a>Required Reading</h2>

<ul class="task-list">
<li>
<a href="http://www.jstor.org/stable/pdfplus/2965153.pdf?&amp;acceptTC=true&amp;jpdConfirm=true&amp;acceptTC=true&amp;acceptTC=true">Joint Committee on Standards for Graphic Presentation</a>. 1915. <em>American Statistical Association</em>, 14 (112): 790-797. </li>
<li>Edward R. Tufte. 2001. <a href="http://www.amazon.com/The-Visual-Display-Quantitative-Information/dp/0961392142">The visual display of quantitative    information.</a> Cheshire, Conn.: Graphics Press, c2001.</li>
<li>Leland Wilkinson. 2005. <a href="http://link.springer.com/book/10.1007/0-387-28695-0">The grammar of graphics</a>. New York:     Springer, 2005.</li>
<li>Hadley Wickham. 2009. <a href="http://www.bioinformaticslaboratory.nl/twikidata/pub/Education/ComputinginR/ggplot2-book.pdf">ggplot2: elegant graphics for data analysis</a>
</li>
<li>Norman Matloff. 2011. <a href="http://www.amazon.com/The-Art-Programming-Statistical-Software/dp/1593273843/ref=pd_sim_b_2?ie=UTF8&amp;refRID=1T2KB926VAHCZJPH02K0">The art of R programming</a>. San Francisco : No Starch Press, c2011.</li>
<li>Scott Murray. 2013. <a href="http://www.amazon.com/gp/product/1449339735/ref=ox_sc_act_title_4?ie=UTF8&amp;psc=1&amp;smid=AUSV0VS9I8UVB">Interactive data visualization for the web.</a>     Sebastopol, CA: O'Reilly Media, 2013.</li>
</ul>

<h2>
<a id="user-content-learning-objectives" class="anchor" href="#learning-objectives" aria-hidden="true"><span class="octicon octicon-link"></span></a>Learning Objectives</h2>

<p>... and resources to help you get there  </p>

<ul class="task-list">
<li>
<a href="http://www.sealthreinhold.com/tuftes-rules/rule_four.php">Tufte's Rules</a>. Above all else, show the data.</li>
<li>Grammar of Graphics. Wilkinson's theory and Wickham's implementation.</li>
<li>Meet your computer

<ul class="task-list">
<li>command line</li>
<li>text editors</li>
<li>file paths </li>
</ul>
</li>
<li>Working with data in <code>R</code> 

<ul class="task-list">
<li><a href="http://ecohen4.github.io/data-viz/r/R-tutorial.html">Basic training</a></li>
<li>Data analysis with <code>plyr</code>
</li>
<li>Data visualization with <code>ggplot</code>
</li>
<li>Scripting, debugging and writing functions</li>
<li>Reproducible research and dynamic output with <a href="http://rmarkdown.rstudio.com/RMarkdownReferenceGuide.pdf">Rmarkdown</a>
</li>
</ul>
</li>
<li>Communicating &amp; sharing your results in the browser

<ul class="task-list">
<li>github.io</li>
<li>
<code>HTML</code>, <code>CSS</code>, <code>JavaScript</code>
</li>
<li>Interactive visualization with <code>D3</code> </li>
</ul>
</li>
<li>Version control and collaboration with <code>github</code>

<ul class="task-list">
<li><a href="http://readwrite.com/2013/09/30/understanding-github-a-journey-for-beginners-part-1">Don't get scared, get started!</a></li>
<li><a href="https://help.github.com/articles/set-up-git/">Github Help</a></li>
<li><a href="http://skli.se/2012/09/22/introduction-to-git/">Git intro for readers</a></li>
<li><a href="https://www.youtube.com/watch?v=LXoWxrTdXkM">Git intro for visual and auditory learners</a></li>
<li><a href="http://skli.se/2012/10/07/git-workflow-beginner/">Git workflow for beginners</a></li>
<li><a href="https://help.github.com/articles/fork-a-repo">Forking</a></li>
<li><a href="https://www.youtube.com/watch?v=ifAEho6BmH0&amp;list=PLg7s6cbtAD17uAwaZwiykDci_q3te3CTY">Sharing and Collaborating</a></li>
</ul>
</li>
</ul>

<h2>
<a id="user-content-get-started-now" class="anchor" href="#get-started-now" aria-hidden="true"><span class="octicon octicon-link"></span></a>Get Started Now!</h2>

<ul class="task-list">
<li>Install <a href="http://www.r-project.org/">R</a> and <a href="http://www.rstudio.com/products/rstudio/download/">RStudio</a>
</li>
<li>Read about <a href="http://rmarkdown.rstudio.com/">RMarkdown</a>
</li>
<li>Install <a href="http://git-scm.com/download">git</a>
</li>
<li>Create a <a href="https://github.com/">github</a> account if you don't already have one</li>
<li>
<p>Fork the class repo. Your assignments will be submitted as pull requests! </p>

<pre><code>git clone https://github.com/YOUR-NAME/data-viz.git
cd data-viz
git remote add upstream https://github.com/ecohen4/data-viz.git
</code></pre>
</li>
</ul>

<h2>
<a id="user-content-submit-assignments" class="anchor" href="#submit-assignments" aria-hidden="true"><span class="octicon octicon-link"></span></a>Submit Assignments</h2>

<p>Your assignments will be submitted as pull requests to the class repository on github! Suppose you saved changes on your own <code>gh-pages</code> branch and would like to submit a ‘clean’ pull request with only your files and the commits you want. This is pretty easy.</p>

<h3>
<a id="user-content-option-1-basic-way-with-file-checkouts-losing-history" class="anchor" href="#option-1-basic-way-with-file-checkouts-losing-history" aria-hidden="true"><span class="octicon octicon-link"></span></a>Option 1: Basic way with file checkouts (losing history):</h3>

<pre><code>git checkout upstream/gh-pages #you will be on a ‘detached HEAD’  
git checkout -b hw1 #checkout a new branch called 'hw1'  
git checkout &lt;branch&gt; &lt;folder/filename&gt; #pluck a folder/file from another branch but stay on the current branch (in this case 'hw1').  
git add &lt;folder/filename&gt;
git commit -m "add only the right files on new clean branch"
git push -u hw1 #push commits to a new branch called hw1.
</code></pre>

<p>Your new <code>hw1</code> branch now has a copy of the folder/file(s) your plucked from elsewhere. Your working tree is still on the 'hw1' branch and you can continue to work on the files and commit+push further changes as frequently as you like.</p>

<h3>
<a id="user-content-option-2-advanced-way-with-rebase-history-re-written" class="anchor" href="#option-2-advanced-way-with-rebase-history-re-written" aria-hidden="true"><span class="octicon octicon-link"></span></a>Option 2: Advanced way with Rebase (history re-written)</h3>

<p>Rebasing rewrites history of a branch, in a really clever way. Each commit becomes a new commit, on top of a new beginning point. This is probably the most common way of making a clean pull request.</p>

<pre><code>git checkout gh-pages
git checkout -b hw1
git fetch upstream
git rebase -i origin/gh-pages
</code></pre>

<p>At this point you’re given a list, where you can pick, squash, or remove commits from your branch. Remember, a branch is just a collection of commits. If, for example, you only want to include the last few commits, simply delete all the others and allow rebase to continue. You should now have a branch that contains only the commits you want.</p>
</article>
  </div>

</div>

<a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" style="display:none">Jump to Line</a>
<div id="jump-to-line" style="display:none">
  <form accept-charset="UTF-8" class="js-jump-to-line-form">
    <input class="linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" autofocus>
    <button type="submit" class="button">Go</button>
  </form>
</div>

        </div>

      </div><!-- /.repo-container -->
      <div class="modal-backdrop"></div>
    </div><!-- /.container -->
  </div><!-- /.site -->


    </div><!-- /.wrapper -->

      <div class="container">
  <div class="site-footer" role="contentinfo">
    <ul class="site-footer-links right">
        <li><a href="https://status.github.com/" data-ga-click="Footer, go to status, text:status">Status</a></li>
      <li><a href="https://developer.github.com" data-ga-click="Footer, go to api, text:api">API</a></li>
      <li><a href="http://training.github.com" data-ga-click="Footer, go to training, text:training">Training</a></li>
      <li><a href="http://shop.github.com" data-ga-click="Footer, go to shop, text:shop">Shop</a></li>
        <li><a href="/blog" data-ga-click="Footer, go to blog, text:blog">Blog</a></li>
        <li><a href="/about" data-ga-click="Footer, go to about, text:about">About</a></li>

    </ul>

    <a href="/" aria-label="Homepage">
      <span class="mega-octicon octicon-mark-github" title="GitHub"></span>
    </a>

    <ul class="site-footer-links">
      <li>&copy; 2015 <span title="0.08815s from github-fe139-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="/site/terms" data-ga-click="Footer, go to terms, text:terms">Terms</a></li>
        <li><a href="/site/privacy" data-ga-click="Footer, go to privacy, text:privacy">Privacy</a></li>
        <li><a href="/security" data-ga-click="Footer, go to security, text:security">Security</a></li>
        <li><a href="/contact" data-ga-click="Footer, go to contact, text:contact">Contact</a></li>
    </ul>
  </div>
</div>


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-suggester-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="fullscreen-contents js-fullscreen-contents" placeholder=""></textarea>
      <div class="suggester-container">
        <div class="suggester fullscreen-suggester js-suggester js-navigation-container"></div>
      </div>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="#" class="exit-fullscreen js-exit-fullscreen tooltipped tooltipped-w" aria-label="Exit Zen Mode">
      <span class="mega-octicon octicon-screen-normal"></span>
    </a>
    <a href="#" class="theme-switcher js-theme-switcher tooltipped tooltipped-w"
      aria-label="Switch themes">
      <span class="octicon octicon-color-mode"></span>
    </a>
  </div>
</div>



    

    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      <a href="#" class="octicon octicon-x flash-close js-ajax-error-dismiss" aria-label="Dismiss error"></a>
      Something went wrong with that request. Please try again.
    </div>


      <script crossorigin="anonymous" src="https://assets-cdn.github.com/assets/frameworks-9643b0378c6bcb216adcdaaaa703eed77aa239aaf1c2ae44cadb2fb5099ec172.js"></script>
      <script async="async" crossorigin="anonymous" src="https://assets-cdn.github.com/assets/github-824877f75a420b0cfd8f89d3f664df4c35972c20bce9c35a4c7065bca439b12c.js"></script>
      
      

  </body>
</html>

