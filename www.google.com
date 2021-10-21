<!doctype html><html lang=en class=no-js><head><meta charset=utf-8><meta name=viewport content="width=device-width,initial-scale=1,shrink-to-fit=no"><meta name=generator content="Hugo 0.71.1"><meta name=ROBOTS content="NOINDEX, NOFOLLOW"><link rel="shortcut icon" href=/favicons/favicon.ico><link rel=apple-touch-icon href=/favicons/apple-touch-icon-180x180.png sizes=180x180><link rel=icon type=image/png href=/favicons/favicon-16x16.png sizes=16x16><link rel=icon type=image/png href=/favicons/favicon-32x32.png sizes=32x32><link rel=icon type=image/png href=/favicons/android-36x36.png sizes=36x36><link rel=icon type=image/png href=/favicons/android-48x48.png sizes=48x48><link rel=icon type=image/png href=/favicons/android-72x72.png sizes=72x72><link rel=icon type=image/png href=/favicons/android-96x96.png sizes=96x96><link rel=icon type=image/png href=/favicons/android-144x144.png sizes=144x144><link rel=icon type=image/png href=/favicons/android-192x192.png sizes=192x192><title>DPSIM API | SOGNO</title><meta property="og:title" content="DPSIM API"><meta property="og:description" content="Specifications for the DPSIM API"><meta property="og:type" content="article"><meta property="og:url" content="https://sogno-platform.github.io/www.google.com"><meta property="article:modified_time" content="2021-10-19T15:41:56+02:00"><meta property="og:site_name" content="SOGNO"><meta itemprop=name content="DPSIM API"><meta itemprop=description content="Specifications for the DPSIM API"><meta itemprop=dateModified content="2021-10-19T15:41:56+02:00"><meta itemprop=wordCount content="1"><meta itemprop=keywords content><meta name=twitter:card content="summary"><meta name=twitter:title content="DPSIM API"><meta name=twitter:description content="Specifications for the DPSIM API"><link rel=preload href=/scss/main.min.43dcf1178c5232d7ec0317ba4f27bc60bf942e67bcb5ec81584676015372b45d.css as=style><link href=/scss/main.min.43dcf1178c5232d7ec0317ba4f27bc60bf942e67bcb5ec81584676015372b45d.css rel=stylesheet integrity><script src=https://code.jquery.com/jquery-3.5.1.min.js integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin=anonymous></script></head><body class=td-page><header><nav class="js-navbar-scroll navbar navbar-expand navbar-dark flex-column flex-md-row td-navbar"><a class=navbar-brand href=/><span class=navbar-logo></span><span class="text-uppercase font-weight-bold">SOGNO</span></a><div class="td-navbar-nav-scroll ml-md-auto" id=main_navbar><ul class="navbar-nav mt-2 mt-lg-0"><li class="nav-item mr-4 mb-2 mb-lg-0"><a class="nav-link active" href=/docs/><span class=active>Documentation</span></a></li><li class="nav-item mr-4 mb-2 mb-lg-0"><a class=nav-link href=/community/><span>Community</span></a></li></ul></div><div class="navbar-nav d-none d-lg-block"><input type=search class="form-control td-search-input" placeholder="&#xf002 Search this site…" aria-label="Search this site…" autocomplete=off></div></nav></header><div class="container-fluid td-outer"><div class=td-main><div class="row flex-xl-nowrap"><div class="col-12 col-md-3 col-xl-2 td-sidebar d-print-none"><div id=td-sidebar-menu class=td-sidebar__inner><form class="td-sidebar__search d-flex align-items-center d-lg-none"><input type=search class="form-control td-search-input" placeholder="&#xf002 Search this site…" aria-label="Search this site…" autocomplete=off>
<button class="btn btn-link td-sidebar__toggle d-md-none p-0 ml-3 fas fa-bars" type=button data-toggle=collapse data-target=#td-section-nav aria-controls=td-docs-nav aria-expanded=false aria-label="Toggle section navigation"></button></form><nav class="collapse td-sidebar-nav" id=td-section-nav><ul class="td-sidebar-nav__section pr-md-3"><li class=td-sidebar-nav__section-title><a href=/docs/ class="align-left pl-0 pr-2 td-sidebar-link td-sidebar-link__section">Documentation</a></li><ul><li class="collapse show" id=docs><ul class="td-sidebar-nav__section pr-md-3"><li class=td-sidebar-nav__section-title><a href=/docs/overview/ class="align-left pl-0 pr-2 collapsed td-sidebar-link td-sidebar-link__section">Overview</a></li><ul><li class=collapse id=docsoverview></li></ul></ul><ul class="td-sidebar-nav__section pr-md-3"><li class=td-sidebar-nav__section-title><a href=/docs/api-specifications/ class="align-left pl-0 pr-2 active td-sidebar-link td-sidebar-link__section">API Specifications</a></li><ul><li class="collapse show" id=docsapi-specifications><a class="td-sidebar-link td-sidebar-link__page active" id=m-wwwgooglecom href=/www.google.com>DPSIM API</a></li></ul></ul><ul class="td-sidebar-nav__section pr-md-3"><li class=td-sidebar-nav__section-title><a href=/docs/getting-started/ class="align-left pl-0 pr-2 collapsed td-sidebar-link td-sidebar-link__section">Getting Started</a></li><ul><li class=collapse id=docsgetting-started><a class="td-sidebar-link td-sidebar-link__page" id=m-docsgetting-startedsingle-node href=/docs/getting-started/single-node/>Single Node Setup</a></li></ul></ul><ul class="td-sidebar-nav__section pr-md-3"><li class=td-sidebar-nav__section-title><a href=/docs/examples/ class="align-left pl-0 pr-2 collapsed td-sidebar-link td-sidebar-link__section">Examples</a></li><ul><li class=collapse id=docsexamples><a class="td-sidebar-link td-sidebar-link__page" id=m-docsexamplesstate-estimation href=/docs/examples/state-estimation/>State-Estimation</a></li></ul></ul></li></ul></ul></nav></div></div><div class="d-none d-xl-block col-xl-2 td-toc d-print-none"><div class="td-page-meta ml-2 pb-1 pt-2 mb-0"><a href=https://github.com/sogno-platform/docs/edit/master/content/en/docs/API%20Specifications/dpsim-api.md target=_blank><i class="fa fa-edit fa-fw"></i>Edit this page</a>
<a href="https://github.com/sogno-platform/docs/new/master/content/en/docs/API%20Specifications/dpsim-api.md?filename=change-me.md&value=---%0Atitle%3A+%22Long+Page+Title%22%0AlinkTitle%3A+%22Short+Nav+Title%22%0Aweight%3A+100%0Adescription%3A+%3E-%0A+++++Page+description+for+heading+and+indexes.%0A---%0A%0A%23%23+Heading%0A%0AEdit+this+template+to+create+your+new+page.%0A%0A%2A+Give+it+a+good+name%2C+ending+in+%60.md%60+-+e.g.+%60getting-started.md%60%0A%2A+Edit+the+%22front+matter%22+section+at+the+top+of+the+page+%28weight+controls+how+its+ordered+amongst+other+pages+in+the+same+directory%3B+lowest+number+first%29.%0A%2A+Add+a+good+commit+message+at+the+bottom+of+the+page+%28%3C80+characters%3B+use+the+extended+description+field+for+more+detail%29.%0A%2A+Create+a+new+branch+so+you+can+preview+your+new+file+and+request+a+review+via+Pull+Request.%0A" target=_blank><i class="fa fa-edit fa-fw"></i>Create child page</a>
<a href="https://github.com/sogno-platform/docs/issues/new?title=DPSIM%20API" target=_blank><i class="fab fa-github fa-fw"></i>Create documentation issue</a>
<a href=https://github.com/sogno-platform//issues/new target=_blank><i class="fas fa-tasks fa-fw"></i>Create project issue</a></div></div><main class="col-12 col-md-9 col-xl-8 pl-md-5" role=main><nav aria-label=breadcrumb class="d-none d-md-block d-print-none"><ol class="breadcrumb spb-1"><li class=breadcrumb-item><a href=https://sogno-platform.github.io/docs/>Documentation</a></li><li class=breadcrumb-item><a href=https://sogno-platform.github.io/docs/api-specifications/>API Specifications</a></li><li class="breadcrumb-item active" aria-current=page><a href=https://sogno-platform.github.io/www.google.com>DPSIM API</a></li></ol></nav><div class=td-content><h1>DPSIM API</h1><div class=lead>Specifications for the DPSIM API</div><h2 id=api>API</h2><div class=iframe-container><iframe src=www.google.com width=1088 height=637 frameborder=0 allowfullscreen allow="geolocation *; microphone *; camera *; midi *; encrypted-media *"></iframe></div><div class="text-muted mt-5 pt-3 border-top">Last modified October 19, 2021: <a href=https://github.com/sogno-platform/docs/commit/86fffc2273c8d3db59c55126ae189d1d860f1801>Add api specification links to sogno docs (86fffc2)</a></div></div></main></div></div><footer class="bg-dark py-5 row d-print-none"><div class="container-fluid mx-sm-5"><div class=row><div class="col-6 col-sm-4 text-xs-center order-sm-2"><ul class="list-inline mb-0"><li class="list-inline-item mx-2 h3" data-toggle=tooltip data-placement=top title="User mailing list" aria-label="User mailing list"><a class=text-white target=_blank rel="noopener noreferrer" href=https://example.org/mail><i class="fa fa-envelope"></i></a></li><li class="list-inline-item mx-2 h3" data-toggle=tooltip data-placement=top title=Twitter aria-label=Twitter><a class=text-white target=_blank rel="noopener noreferrer" href=https://example.org/twitter><i class="fab fa-twitter"></i></a></li><li class="list-inline-item mx-2 h3" data-toggle=tooltip data-placement=top title="Stack Overflow" aria-label="Stack Overflow"><a class=text-white target=_blank rel="noopener noreferrer" href=https://example.org/stack><i class="fab fa-stack-overflow"></i></a></li></ul></div><div class="col-6 col-sm-4 text-right text-xs-center order-sm-3"><ul class="list-inline mb-0"><li class="list-inline-item mx-2 h3" data-toggle=tooltip data-placement=top title=GitHub aria-label=GitHub><a class=text-white target=_blank rel="noopener noreferrer" href=https://github.com/sogno-platform><i class="fab fa-github"></i></a></li><li class="list-inline-item mx-2 h3" data-toggle=tooltip data-placement=top title=Slack aria-label=Slack><a class=text-white target=_blank rel="noopener noreferrer" href=https://example.org/slack><i class="fab fa-slack"></i></a></li><li class="list-inline-item mx-2 h3" data-toggle=tooltip data-placement=top title="Developer mailing list" aria-label="Developer mailing list"><a class=text-white target=_blank rel="noopener noreferrer" href=https://example.org/mail><i class="fa fa-envelope"></i></a></li></ul></div><div class="col-12 col-sm-4 text-center py-2 order-sm-2"><small class=text-white>&copy; 2021 The SOGNO Authors All Rights Reserved</small>
<small class=ml-1><a href=https://policies.google.com/privacy target=_blank>Privacy Policy</a></small></div></div></div></footer></div><script src=https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js integrity=sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49 crossorigin=anonymous></script><script src=https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js integrity=sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy crossorigin=anonymous></script><script src=/js/main.min.ed525ccf50fc1d3786c2fe1c9f85aa0dcd97f553ec6ed3c7aca0e08449261651.js integrity="sha256-7VJcz1D8HTeGwv4cn4WqDc2X9VPsbtPHrKDghEkmFlE=" crossorigin=anonymous></script></body></html>