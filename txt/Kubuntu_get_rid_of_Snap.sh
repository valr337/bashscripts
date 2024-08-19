





<!DOCTYPE html>
<html class="gl-light ui-neutral with-top-bar with-header " lang="en">
<head prefix="og: http://ogp.me/ns#">
<meta charset="utf-8">
<meta content="IE=edge" http-equiv="X-UA-Compatible">
<meta content="width=device-width, initial-scale=1" name="viewport">
<title>Kubuntu_get_rid_of_Snap.sh · main · Scripts / Kubuntu get rid of Snap · GitLab</title>
<script nonce="2QFfMYldvrPIagMsEYte8w==">
//<![CDATA[
window.gon={};gon.math_rendering_limits_enabled=true;gon.features={"explainCodeChat":false};gon.licensed_features={"remoteDevelopment":true};
//]]>
</script>


<script nonce="2QFfMYldvrPIagMsEYte8w==">
//<![CDATA[
var gl = window.gl || {};
gl.startup_calls = null;
gl.startup_graphql_calls = [{"query":"query getBlobInfo(\n  $projectPath: ID!\n  $filePath: [String!]!\n  $ref: String!\n  $refType: RefType\n  $shouldFetchRawText: Boolean!\n) {\n  project(fullPath: $projectPath) {\n    __typename\n    id\n    repository {\n      __typename\n      empty\n      blobs(paths: $filePath, ref: $ref, refType: $refType) {\n        __typename\n        nodes {\n          __typename\n          id\n          webPath\n          name\n          size\n          rawSize\n          rawTextBlob @include(if: $shouldFetchRawText)\n          fileType\n          language\n          path\n          blamePath\n          editBlobPath\n          gitpodBlobUrl\n          ideEditPath\n          forkAndEditPath\n          ideForkAndEditPath\n          codeNavigationPath\n          projectBlobPathRoot\n          forkAndViewPath\n          environmentFormattedExternalUrl\n          environmentExternalUrlForRouteMap\n          canModifyBlob\n          canModifyBlobWithWebIde\n          canCurrentUserPushToBranch\n          archived\n          storedExternally\n          externalStorage\n          externalStorageUrl\n          rawPath\n          replacePath\n          pipelineEditorPath\n          simpleViewer {\n            fileType\n            tooLarge\n            type\n            renderError\n          }\n          richViewer {\n            fileType\n            tooLarge\n            type\n            renderError\n          }\n        }\n      }\n    }\n  }\n}\n","variables":{"projectPath":"scripts94/kubuntu-get-rid-of-snap","ref":"main","refType":null,"filePath":"Kubuntu_get_rid_of_Snap.sh","shouldFetchRawText":true}}];

if (gl.startup_calls && window.fetch) {
  Object.keys(gl.startup_calls).forEach(apiCall => {
   gl.startup_calls[apiCall] = {
      fetchCall: fetch(apiCall, {
        // Emulate XHR for Rails AJAX request checks
        headers: {
          'X-Requested-With': 'XMLHttpRequest'
        },
        // fetch won’t send cookies in older browsers, unless you set the credentials init option.
        // We set to `same-origin` which is default value in modern browsers.
        // See https://github.com/whatwg/fetch/pull/585 for more information.
        credentials: 'same-origin'
      })
    };
  });
}
if (gl.startup_graphql_calls && window.fetch) {
  const headers = {"X-CSRF-Token":"Ifqx6l-U45Iuuk4VT_TbsZpi3IcCWm65JmPdMXhPPmPILyJ9ZYkyOgheIk01NJusRrpALIucyPWT8OQljsVyyw","x-gitlab-feature-category":"source_code_management"};
  const url = `https://gitlab.com/api/graphql`

  const opts = {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
      ...headers,
    }
  };

  gl.startup_graphql_calls = gl.startup_graphql_calls.map(call => ({
    ...call,
    fetchCall: fetch(url, {
      ...opts,
      credentials: 'same-origin',
      body: JSON.stringify(call)
    })
  }))
}


//]]>
</script>

<link rel="prefetch" href="/assets/webpack/monaco.5dd28183.chunk.js">

<link rel="stylesheet" href="/assets/application-b4b48e1c23d774a8ce5d905121c641b742886b7d6520f3695b67687160ad849b.css" />
<link rel="stylesheet" href="/assets/page_bundles/tree-cbd647503ee10871208725ec59e7d967eb696a14f20623ad870223f433739228.css" /><link rel="stylesheet" href="/assets/page_bundles/projects-4c7daed4fc9d7d3469c90471add3541413f6a84a10b274bc13f6f54ef7a5f05d.css" /><link rel="stylesheet" href="/assets/page_bundles/commit_description-065c52911d70ac846b47cc0f64e7a6e0d3daadd0cd34f5788259712569dc0dc3.css" /><link rel="stylesheet" href="/assets/page_bundles/work_items-55c7d174392c1177a9e21c131661ddc77fb7f241e276086b8566b7382154bdd0.css" />
<link rel="stylesheet" href="/assets/application_utilities-be9c243fb45936837f5df8f56b584844abb57127eb153b72a5f74f5fdfcf6388.css" />
<link rel="stylesheet" href="/assets/tailwind-1e51d22b51c3614f2d69325656bb01dd17091ada1d84a9b8a50eb66efb6f96be.css" />


<link rel="stylesheet" href="/assets/fonts-fae5d3f79948bd85f18b6513a025f863b19636e85b09a1492907eb4b1bb0557b.css" />
<link rel="stylesheet" href="/assets/highlight/themes/white-1285cce1be88ce2ec9caaa6f50ee58d75ce1412f0c5b019194f2477139509e18.css" />

<script src="/assets/webpack/runtime.e4f1c545.bundle.js" defer="defer" nonce="2QFfMYldvrPIagMsEYte8w=="></script>
<script src="/assets/webpack/main.0d91ec94.chunk.js" defer="defer" nonce="2QFfMYldvrPIagMsEYte8w=="></script>
<script src="/assets/webpack/tracker.0fae20b7.chunk.js" defer="defer" nonce="2QFfMYldvrPIagMsEYte8w=="></script>
<script src="/assets/webpack/analytics.ad1d3ea3.chunk.js" defer="defer" nonce="2QFfMYldvrPIagMsEYte8w=="></script>
<script nonce="2QFfMYldvrPIagMsEYte8w==">
//<![CDATA[
window.snowplowOptions = {"namespace":"gl","hostname":"snowplow.trx.gitlab.net","cookieDomain":".gitlab.com","appId":"gitlab","formTracking":true,"linkClickTracking":true}

gl = window.gl || {};
gl.snowplowStandardContext = {"schema":"iglu:com.gitlab/gitlab_standard/jsonschema/1-0-10","data":{"environment":"production","source":"gitlab-rails","plan":"free","extra":{},"user_id":null,"is_gitlab_team_member":null,"namespace_id":62810448,"project_id":44614127,"feature_enabled_by_namespace_ids":null,"context_generated_at":"2024-08-18T13:29:23.469Z"}}
gl.snowplowPseudonymizedPageUrl = "https://gitlab.com/namespace62810448/project44614127/-/blob/:repository_path";
gl.maskedDefaultReferrerUrl = null;
gl.ga4MeasurementId = 'G-ENFH3X7M5Y';


//]]>
</script>
<link rel="preload" href="/assets/application_utilities-be9c243fb45936837f5df8f56b584844abb57127eb153b72a5f74f5fdfcf6388.css" as="style" type="text/css" nonce="jtz5THt43Ua0C4QJIhc4Ww==">
<link rel="preload" href="/assets/application-b4b48e1c23d774a8ce5d905121c641b742886b7d6520f3695b67687160ad849b.css" as="style" type="text/css" nonce="jtz5THt43Ua0C4QJIhc4Ww==">
<link rel="preload" href="/assets/highlight/themes/white-1285cce1be88ce2ec9caaa6f50ee58d75ce1412f0c5b019194f2477139509e18.css" as="style" type="text/css" nonce="jtz5THt43Ua0C4QJIhc4Ww==">
<link crossorigin="" href="https://snowplow.trx.gitlab.net" rel="preconnect">
<link as="font" crossorigin="" href="/assets/gitlab-sans/GitLabSans-1e0a5107ea3bbd4be93e8ad2c503467e43166cd37e4293570b490e0812ede98b.woff2" rel="preload">
<link as="font" crossorigin="" href="/assets/gitlab-sans/GitLabSans-Italic-38eaf1a569a54ab28c58b92a4a8de3afb96b6ebc250cf372003a7b38151848cc.woff2" rel="preload">
<link as="font" crossorigin="" href="/assets/gitlab-mono/GitLabMono-08d2c5e8ff8fd3d2d6ec55bc7713380f8981c35f9d2df14e12b835464d6e8f23.woff2" rel="preload">
<link as="font" crossorigin="" href="/assets/gitlab-mono/GitLabMono-Italic-38e58d8df29485a20c550da1d0111e2c2169f6dcbcf894f2cd3afbdd97bcc588.woff2" rel="preload">
<link rel="preload" href="/assets/fonts-fae5d3f79948bd85f18b6513a025f863b19636e85b09a1492907eb4b1bb0557b.css" as="style" type="text/css" nonce="jtz5THt43Ua0C4QJIhc4Ww==">



<script src="/assets/webpack/sentry.428a9be3.chunk.js" defer="defer" nonce="2QFfMYldvrPIagMsEYte8w=="></script>

<script src="/assets/webpack/11.05c1b52b.chunk.js" defer="defer" nonce="2QFfMYldvrPIagMsEYte8w=="></script>
<script src="/assets/webpack/15.e7c9d060.chunk.js" defer="defer" nonce="2QFfMYldvrPIagMsEYte8w=="></script>
<script src="/assets/webpack/17.57ec5dd4.chunk.js" defer="defer" nonce="2QFfMYldvrPIagMsEYte8w=="></script>
<script src="/assets/webpack/commons-pages.groups.analytics.dashboards-pages.groups.analytics.dashboards.value_streams_dashboard--2bbf92b2.484c9e8a.chunk.js" defer="defer" nonce="2QFfMYldvrPIagMsEYte8w=="></script>
<script src="/assets/webpack/commons-pages.groups.new-pages.import.gitlab_projects.new-pages.import.manifest.new-pages.projects.n-44c6c18e.3f00b7ef.chunk.js" defer="defer" nonce="2QFfMYldvrPIagMsEYte8w=="></script>
<script src="/assets/webpack/commons-pages.search.show-super_sidebar.759d6b37.chunk.js" defer="defer" nonce="2QFfMYldvrPIagMsEYte8w=="></script>
<script src="/assets/webpack/super_sidebar.06ac9a04.chunk.js" defer="defer" nonce="2QFfMYldvrPIagMsEYte8w=="></script>
<script src="/assets/webpack/commons-pages.projects-pages.projects.activity-pages.projects.alert_management.details-pages.project-8f9d6b6d.2d1e606c.chunk.js" defer="defer" nonce="2QFfMYldvrPIagMsEYte8w=="></script>
<script src="/assets/webpack/commons-pages.admin.runners.show-pages.clusters.agents.dashboard-pages.dashboard.groups.index-pages.-87a3ad10.207262fa.chunk.js" defer="defer" nonce="2QFfMYldvrPIagMsEYte8w=="></script>
<script src="/assets/webpack/commons-pages.groups.security.policies.edit-pages.groups.security.policies.new-pages.projects.blob.s-f60e2da3.eaa74d7d.chunk.js" defer="defer" nonce="2QFfMYldvrPIagMsEYte8w=="></script>
<script src="/assets/webpack/commons-pages.projects.blob.show-pages.projects.security.vulnerabilities.show-pages.projects.show-pa-736464ce.c74297cb.chunk.js" defer="defer" nonce="2QFfMYldvrPIagMsEYte8w=="></script>
<script src="/assets/webpack/111.035b55e8.chunk.js" defer="defer" nonce="2QFfMYldvrPIagMsEYte8w=="></script>
<script src="/assets/webpack/commons-pages.projects.blob.show-pages.projects.show-pages.projects.snippets.show-pages.projects.tre-c684fcf6.e83450e3.chunk.js" defer="defer" nonce="2QFfMYldvrPIagMsEYte8w=="></script>
<script src="/assets/webpack/132.fe16e149.chunk.js" defer="defer" nonce="2QFfMYldvrPIagMsEYte8w=="></script>
<script src="/assets/webpack/commons-pages.projects.blob.show-pages.projects.security.vulnerabilities.show-pages.projects.show-pa-5ff3b950.873191fb.chunk.js" defer="defer" nonce="2QFfMYldvrPIagMsEYte8w=="></script>
<script src="/assets/webpack/commons-pages.projects.blob.show-pages.projects.show-pages.projects.tree.show.9203267b.chunk.js" defer="defer" nonce="2QFfMYldvrPIagMsEYte8w=="></script>
<script src="/assets/webpack/commons-pages.projects.blob.show-pages.projects.commits.show-pages.projects.compare.show.80f7f8a0.chunk.js" defer="defer" nonce="2QFfMYldvrPIagMsEYte8w=="></script>
<script src="/assets/webpack/pages.projects.blob.show.c13a94cc.chunk.js" defer="defer" nonce="2QFfMYldvrPIagMsEYte8w=="></script>

<meta content="object" property="og:type">
<meta content="GitLab" property="og:site_name">
<meta content="Kubuntu_get_rid_of_Snap.sh · main · Scripts / Kubuntu get rid of Snap · GitLab" property="og:title">
<meta content="GitLab.com" property="og:description">
<meta content="https://gitlab.com/uploads/-/system/project/avatar/44614127/text-x-script.png" property="og:image">
<meta content="64" property="og:image:width">
<meta content="64" property="og:image:height">
<meta content="https://gitlab.com/scripts94/kubuntu-get-rid-of-snap/-/blob/main/Kubuntu_get_rid_of_Snap.sh" property="og:url">
<meta content="summary" property="twitter:card">
<meta content="Kubuntu_get_rid_of_Snap.sh · main · Scripts / Kubuntu get rid of Snap · GitLab" property="twitter:title">
<meta content="GitLab.com" property="twitter:description">
<meta content="https://gitlab.com/uploads/-/system/project/avatar/44614127/text-x-script.png" property="twitter:image">

<meta name="csrf-param" content="authenticity_token" />
<meta name="csrf-token" content="eGMP7i1mUsMzlo7vJtr-2R-ZWW7DVtZyWmQVYG-EdNGRtpx5F3uDaxVy4rdcGr7Ew0HFxUqQcD7v9yx0mQ44eQ" />
<meta name="csp-nonce" content="2QFfMYldvrPIagMsEYte8w==" />
<meta name="action-cable-url" content="/-/cable" />
<link href="/-/manifest.json" rel="manifest">
<link rel="icon" type="image/png" href="/assets/favicon-72a2cad5025aa931d6ea56c3201d1f18e68a8cd39788c7c80d5b2b82aa5143ef.png" id="favicon" data-original-href="/assets/favicon-72a2cad5025aa931d6ea56c3201d1f18e68a8cd39788c7c80d5b2b82aa5143ef.png" />
<link rel="apple-touch-icon" type="image/x-icon" href="/assets/apple-touch-icon-b049d4bc0dd9626f31db825d61880737befc7835982586d015bded10b4435460.png" />
<link href="/search/opensearch.xml" rel="search" title="Search GitLab" type="application/opensearchdescription+xml">




<meta content="GitLab.com" name="description">
<meta content="#ececef" name="theme-color">
</head>

<body class="tab-width-8 gl-browser-generic gl-platform-other" data-find-file="/scripts94/kubuntu-get-rid-of-snap/-/find_file/main" data-group="scripts94" data-group-full-path="scripts94" data-namespace-id="62810448" data-page="projects:blob:show" data-page-type-id="main/Kubuntu_get_rid_of_Snap.sh" data-project="kubuntu-get-rid-of-snap" data-project-full-path="scripts94/kubuntu-get-rid-of-snap" data-project-id="44614127">

<script nonce="2QFfMYldvrPIagMsEYte8w==">
//<![CDATA[
gl = window.gl || {};
gl.client = {"isGeneric":true,"isOther":true};


//]]>
</script>


<header class="header-logged-out" data-testid="navbar">
<a class="gl-sr-only gl-accessibility" href="#content-body">Skip to content</a>
<div class="container-fluid">
<nav aria-label="Explore GitLab" class="header-logged-out-nav gl-display-flex gl-gap-3 gl-justify-content-space-between">
<div class="gl-display-flex gl-align-items-center gl-gap-1">
<span class="gl-sr-only">GitLab</span>
<a title="Homepage" id="logo" class="header-logged-out-logo has-tooltip" aria-label="Homepage" data-track-label="main_navigation" data-track-action="click_gitlab_logo_link" data-track-property="navigation_top" href="/"><svg aria-hidden="true" role="img" class="tanuki-logo" width="25" height="24" viewBox="0 0 25 24" fill="none" xmlns="http://www.w3.org/2000/svg">
  <path class="tanuki-shape tanuki" d="m24.507 9.5-.034-.09L21.082.562a.896.896 0 0 0-1.694.091l-2.29 7.01H7.825L5.535.653a.898.898 0 0 0-1.694-.09L.451 9.411.416 9.5a6.297 6.297 0 0 0 2.09 7.278l.012.01.03.022 5.16 3.867 2.56 1.935 1.554 1.176a1.051 1.051 0 0 0 1.268 0l1.555-1.176 2.56-1.935 5.197-3.89.014-.01A6.297 6.297 0 0 0 24.507 9.5Z"
        fill="#E24329"/>
  <path class="tanuki-shape right-cheek" d="m24.507 9.5-.034-.09a11.44 11.44 0 0 0-4.56 2.051l-7.447 5.632 4.742 3.584 5.197-3.89.014-.01A6.297 6.297 0 0 0 24.507 9.5Z"
        fill="#FC6D26"/>
  <path class="tanuki-shape chin" d="m7.707 20.677 2.56 1.935 1.555 1.176a1.051 1.051 0 0 0 1.268 0l1.555-1.176 2.56-1.935-4.743-3.584-4.755 3.584Z"
        fill="#FCA326"/>
  <path class="tanuki-shape left-cheek" d="M5.01 11.461a11.43 11.43 0 0 0-4.56-2.05L.416 9.5a6.297 6.297 0 0 0 2.09 7.278l.012.01.03.022 5.16 3.867 4.745-3.584-7.444-5.632Z"
        fill="#FC6D26"/>
</svg>

</a></div>
<ul class="gl-list-none gl-p-0 gl-m-0 gl-display-flex gl-gap-3 gl-align-items-center gl-flex-grow-1">
<li class="header-logged-out-nav-item header-logged-out-dropdown md:gl-hidden">
<button class="header-logged-out-toggle" data-toggle="dropdown" type="button">
<span class="gl-sr-only">
Menu
</span>
<svg class="s16" data-testid="hamburger-icon"><use href="/assets/icons-454317f5123bdb93dcb695c6092c458fb0ec6c862d0a56857aefa1c73469f743.svg#hamburger"></use></svg>
</button>
<div class="dropdown-menu">
<ul>
<li>
<a href="https://about.gitlab.com/why-gitlab">Why GitLab
</a></li>
<li>
<a href="https://about.gitlab.com/pricing">Pricing
</a></li>
<li>
<a href="https://about.gitlab.com/sales">Contact Sales
</a></li>
<li>
<a href="/explore">Explore</a>
</li>
</ul>
</div>
</li>
<li class="header-logged-out-nav-item gl-hidden md:gl-inline-block">
<a href="https://about.gitlab.com/why-gitlab">Why GitLab
</a></li>
<li class="header-logged-out-nav-item gl-hidden md:gl-inline-block">
<a href="https://about.gitlab.com/pricing">Pricing
</a></li>
<li class="header-logged-out-nav-item gl-hidden gl-inline-block">
<a href="https://about.gitlab.com/sales">Contact Sales
</a></li>
<li class="header-logged-out-nav-item gl-hidden md:gl-inline-block">
<a class="" href="/explore">Explore</a>
</li>
</ul>
<ul class="gl-list-none gl-p-0 gl-m-0 gl-display-flex gl-gap-3 gl-align-items-center gl-justify-content-end">
<li class="header-logged-out-nav-item">
<a href="/users/sign_in?redirect_to_referer=yes">Sign in</a>
</li>
<li class="header-logged-out-nav-item">
<a class="gl-button btn btn-md btn-confirm " href="/users/sign_up"><span class="gl-button-text">
Get free trial

</span>

</a></li>
</ul>
</nav>
</div>
</header>

<div class="layout-page page-with-super-sidebar">
<aside class="js-super-sidebar super-sidebar super-sidebar-loading" data-command-palette="{&quot;project_files_url&quot;:&quot;/scripts94/kubuntu-get-rid-of-snap/-/files/main?format=json&quot;,&quot;project_blob_url&quot;:&quot;/scripts94/kubuntu-get-rid-of-snap/-/blob/main&quot;}" data-force-desktop-expanded-sidebar="" data-root-path="/" data-sidebar="{&quot;is_logged_in&quot;:false,&quot;context_switcher_links&quot;:[{&quot;title&quot;:&quot;Explore&quot;,&quot;link&quot;:&quot;/explore&quot;,&quot;icon&quot;:&quot;compass&quot;}],&quot;current_menu_items&quot;:[{&quot;id&quot;:&quot;project_overview&quot;,&quot;title&quot;:&quot;Kubuntu get rid of Snap&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:&quot;/uploads/-/system/project/avatar/44614127/text-x-script.png&quot;,&quot;entity_id&quot;:44614127,&quot;link&quot;:&quot;/scripts94/kubuntu-get-rid-of-snap&quot;,&quot;pill_count&quot;:null,&quot;link_classes&quot;:&quot;shortcuts-project&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;manage_menu&quot;,&quot;title&quot;:&quot;Manage&quot;,&quot;icon&quot;:&quot;users&quot;,&quot;avatar&quot;:null,&quot;avatar_shape&quot;:&quot;rect&quot;,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/scripts94/kubuntu-get-rid-of-snap/activity&quot;,&quot;is_active&quot;:false,&quot;pill_count&quot;:null,&quot;items&quot;:[{&quot;id&quot;:&quot;activity&quot;,&quot;title&quot;:&quot;Activity&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:null,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/scripts94/kubuntu-get-rid-of-snap/activity&quot;,&quot;pill_count&quot;:null,&quot;link_classes&quot;:&quot;shortcuts-project-activity&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;members&quot;,&quot;title&quot;:&quot;Members&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:null,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/scripts94/kubuntu-get-rid-of-snap/-/project_members&quot;,&quot;pill_count&quot;:null,&quot;link_classes&quot;:null,&quot;is_active&quot;:false}],&quot;separated&quot;:false},{&quot;id&quot;:&quot;code_menu&quot;,&quot;title&quot;:&quot;Code&quot;,&quot;icon&quot;:&quot;code&quot;,&quot;avatar&quot;:null,&quot;avatar_shape&quot;:&quot;rect&quot;,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/scripts94/kubuntu-get-rid-of-snap/-/tree/main&quot;,&quot;is_active&quot;:true,&quot;pill_count&quot;:null,&quot;items&quot;:[{&quot;id&quot;:&quot;files&quot;,&quot;title&quot;:&quot;Repository&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:null,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/scripts94/kubuntu-get-rid-of-snap/-/tree/main&quot;,&quot;pill_count&quot;:null,&quot;link_classes&quot;:&quot;shortcuts-tree&quot;,&quot;is_active&quot;:true},{&quot;id&quot;:&quot;branches&quot;,&quot;title&quot;:&quot;Branches&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:null,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/scripts94/kubuntu-get-rid-of-snap/-/branches&quot;,&quot;pill_count&quot;:null,&quot;link_classes&quot;:null,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;commits&quot;,&quot;title&quot;:&quot;Commits&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:null,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/scripts94/kubuntu-get-rid-of-snap/-/commits/main?ref_type=heads&quot;,&quot;pill_count&quot;:null,&quot;link_classes&quot;:&quot;shortcuts-commits&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;tags&quot;,&quot;title&quot;:&quot;Tags&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:null,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/scripts94/kubuntu-get-rid-of-snap/-/tags&quot;,&quot;pill_count&quot;:null,&quot;link_classes&quot;:null,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;graphs&quot;,&quot;title&quot;:&quot;Repository graph&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:null,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/scripts94/kubuntu-get-rid-of-snap/-/network/main?ref_type=heads&quot;,&quot;pill_count&quot;:null,&quot;link_classes&quot;:&quot;shortcuts-network&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;compare&quot;,&quot;title&quot;:&quot;Compare revisions&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:null,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/scripts94/kubuntu-get-rid-of-snap/-/compare?from=main\u0026to=main&quot;,&quot;pill_count&quot;:null,&quot;link_classes&quot;:null,&quot;is_active&quot;:false}],&quot;separated&quot;:false},{&quot;id&quot;:&quot;deploy_menu&quot;,&quot;title&quot;:&quot;Deploy&quot;,&quot;icon&quot;:&quot;deployments&quot;,&quot;avatar&quot;:null,&quot;avatar_shape&quot;:&quot;rect&quot;,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/scripts94/kubuntu-get-rid-of-snap/-/packages&quot;,&quot;is_active&quot;:false,&quot;pill_count&quot;:null,&quot;items&quot;:[{&quot;id&quot;:&quot;packages_registry&quot;,&quot;title&quot;:&quot;Package Registry&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:null,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/scripts94/kubuntu-get-rid-of-snap/-/packages&quot;,&quot;pill_count&quot;:null,&quot;link_classes&quot;:&quot;shortcuts-container-registry&quot;,&quot;is_active&quot;:false}],&quot;separated&quot;:false},{&quot;id&quot;:&quot;operations_menu&quot;,&quot;title&quot;:&quot;Operate&quot;,&quot;icon&quot;:&quot;cloud-pod&quot;,&quot;avatar&quot;:null,&quot;avatar_shape&quot;:&quot;rect&quot;,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/scripts94/kubuntu-get-rid-of-snap/-/terraform_module_registry&quot;,&quot;is_active&quot;:false,&quot;pill_count&quot;:null,&quot;items&quot;:[{&quot;id&quot;:&quot;infrastructure_registry&quot;,&quot;title&quot;:&quot;Terraform modules&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:null,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/scripts94/kubuntu-get-rid-of-snap/-/terraform_module_registry&quot;,&quot;pill_count&quot;:null,&quot;link_classes&quot;:null,&quot;is_active&quot;:false}],&quot;separated&quot;:false},{&quot;id&quot;:&quot;analyze_menu&quot;,&quot;title&quot;:&quot;Analyze&quot;,&quot;icon&quot;:&quot;chart&quot;,&quot;avatar&quot;:null,&quot;avatar_shape&quot;:&quot;rect&quot;,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/scripts94/kubuntu-get-rid-of-snap/-/graphs/main?ref_type=heads&quot;,&quot;is_active&quot;:false,&quot;pill_count&quot;:null,&quot;items&quot;:[{&quot;id&quot;:&quot;contributors&quot;,&quot;title&quot;:&quot;Contributor analytics&quot;,&quot;icon&quot;:null,&quot;avatar&quot;:null,&quot;entity_id&quot;:null,&quot;link&quot;:&quot;/scripts94/kubuntu-get-rid-of-snap/-/graphs/main?ref_type=heads&quot;,&quot;pill_count&quot;:null,&quot;link_classes&quot;:null,&quot;is_active&quot;:false}],&quot;separated&quot;:false}],&quot;current_context_header&quot;:&quot;Project&quot;,&quot;support_path&quot;:&quot;https://about.gitlab.com/get-help/&quot;,&quot;docs_path&quot;:&quot;/help/docs&quot;,&quot;display_whats_new&quot;:true,&quot;whats_new_most_recent_release_items_count&quot;:5,&quot;whats_new_version_digest&quot;:&quot;618ce5f0030591b417694ba96ae6915ced5fcb4510912f752857458c059771c8&quot;,&quot;show_version_check&quot;:null,&quot;gitlab_version&quot;:{&quot;major&quot;:17,&quot;minor&quot;:4,&quot;patch&quot;:0,&quot;suffix_s&quot;:&quot;&quot;},&quot;gitlab_version_check&quot;:null,&quot;search&quot;:{&quot;search_path&quot;:&quot;/search&quot;,&quot;issues_path&quot;:&quot;/dashboard/issues&quot;,&quot;mr_path&quot;:&quot;/dashboard/merge_requests&quot;,&quot;autocomplete_path&quot;:&quot;/search/autocomplete&quot;,&quot;settings_path&quot;:&quot;/search/settings&quot;,&quot;search_context&quot;:{&quot;group&quot;:{&quot;id&quot;:62810448,&quot;name&quot;:&quot;Scripts&quot;,&quot;full_name&quot;:&quot;Scripts&quot;},&quot;group_metadata&quot;:{&quot;issues_path&quot;:&quot;/groups/scripts94/-/issues&quot;,&quot;mr_path&quot;:&quot;/groups/scripts94/-/merge_requests&quot;},&quot;project&quot;:{&quot;id&quot;:44614127,&quot;name&quot;:&quot;Kubuntu get rid of Snap&quot;},&quot;project_metadata&quot;:{&quot;mr_path&quot;:&quot;/scripts94/kubuntu-get-rid-of-snap/-/merge_requests&quot;},&quot;code_search&quot;:true,&quot;ref&quot;:&quot;main&quot;,&quot;scope&quot;:null,&quot;for_snippets&quot;:null}},&quot;panel_type&quot;:&quot;project&quot;,&quot;shortcut_links&quot;:[{&quot;title&quot;:&quot;Snippets&quot;,&quot;href&quot;:&quot;/explore/snippets&quot;,&quot;css_class&quot;:&quot;dashboard-shortcuts-snippets&quot;},{&quot;title&quot;:&quot;Groups&quot;,&quot;href&quot;:&quot;/explore/groups&quot;,&quot;css_class&quot;:&quot;dashboard-shortcuts-groups&quot;},{&quot;title&quot;:&quot;Projects&quot;,&quot;href&quot;:&quot;/explore/projects/starred&quot;,&quot;css_class&quot;:&quot;dashboard-shortcuts-projects&quot;}]}"></aside>

<div class="content-wrapper">

<div class="alert-wrapper gl-force-block-formatting-context">































<div class="top-bar-fixed container-fluid" data-testid="top-bar">
<div class="top-bar-container gl-display-flex gl-align-items-center gl-gap-2">
<button class="gl-button btn btn-icon btn-md btn-default btn-default-tertiary js-super-sidebar-toggle-expand super-sidebar-toggle -gl-ml-3" aria-controls="super-sidebar" aria-expanded="false" aria-label="Primary navigation sidebar" type="button"><svg class="s16 gl-icon gl-button-icon " data-testid="sidebar-icon"><use href="/assets/icons-454317f5123bdb93dcb695c6092c458fb0ec6c862d0a56857aefa1c73469f743.svg#sidebar"></use></svg>

</button>
<script type="application/ld+json">
{"@context":"https://schema.org","@type":"BreadcrumbList","itemListElement":[{"@type":"ListItem","position":1,"name":"Scripts","item":"https://gitlab.com/scripts94"},{"@type":"ListItem","position":2,"name":"Kubuntu get rid of Snap","item":"https://gitlab.com/scripts94/kubuntu-get-rid-of-snap"},{"@type":"ListItem","position":3,"name":"Repository","item":"https://gitlab.com/scripts94/kubuntu-get-rid-of-snap/-/blob/main/Kubuntu_get_rid_of_Snap.sh"}]}


</script>
<div data-testid="breadcrumb-links" id="js-vue-page-breadcrumbs-wrapper">
<div data-breadcrumbs-json="[{&quot;text&quot;:&quot;Scripts&quot;,&quot;href&quot;:&quot;/scripts94&quot;,&quot;avatarPath&quot;:&quot;/uploads/-/system/group/avatar/62810448/utilities-terminal.png&quot;},{&quot;text&quot;:&quot;Kubuntu get rid of Snap&quot;,&quot;href&quot;:&quot;/scripts94/kubuntu-get-rid-of-snap&quot;,&quot;avatarPath&quot;:&quot;/uploads/-/system/project/avatar/44614127/text-x-script.png&quot;},{&quot;text&quot;:&quot;Repository&quot;,&quot;href&quot;:&quot;/scripts94/kubuntu-get-rid-of-snap/-/blob/main/Kubuntu_get_rid_of_Snap.sh&quot;,&quot;avatarPath&quot;:null}]" id="js-vue-page-breadcrumbs"></div>
<div id="js-injected-page-breadcrumbs"></div>
</div>


<div id="js-work-item-feedback"></div>


</div>
</div>

</div>
<div class="container-fluid container-limited project-highlight-puc">
<main class="content" id="content-body" itemscope itemtype="http://schema.org/SoftwareSourceCode">
<div class="flash-container flash-container-page sticky" data-testid="flash-container">
<div id="js-global-alerts"></div>
</div>






<div class="js-signature-container" data-signatures-path="/scripts94/kubuntu-get-rid-of-snap/-/commits/4c35b041ba373c00c5cac4ccbd1a88bce4ecc004/signatures?limit=1"></div>

<div class="tree-holder gl-pt-4" id="tree-holder">
<div class="nav-block">
<div class="tree-ref-container">
<div class="tree-ref-holder gl-max-w-26">
<div data-project-id="44614127" data-project-root-path="/scripts94/kubuntu-get-rid-of-snap" data-ref="main" data-ref-type="" id="js-tree-ref-switcher"></div>
</div>
<ul class="breadcrumb repo-breadcrumb">
<li class="breadcrumb-item">
<a href="/scripts94/kubuntu-get-rid-of-snap/-/tree/main">kubuntu-get-rid-of-snap
</a></li>
<li class="breadcrumb-item">
<a href="/scripts94/kubuntu-get-rid-of-snap/-/blob/main/Kubuntu_get_rid_of_Snap.sh"><strong>Kubuntu_get_rid_of_Snap.sh</strong>
</a></li>
</ul>
</div>
<div class="tree-controls gl-flex gl-flex-wrap sm:gl-flex-nowrap gl-items-baseline gl-gap-3">
<button class="gl-button btn btn-md btn-default has-tooltip shortcuts-find-file" title="Go to file, press &lt;kbd class=&#39;flat ml-1&#39; aria-hidden=true&gt;/~&lt;/kbd&gt; or &lt;kbd class=&#39;flat ml-1&#39; aria-hidden=true&gt;t&lt;/kbd&gt;" aria-keyshortcuts="/+~ t" data-html="true" data-event-tracking="click_find_file_button_on_repository_pages" type="button"><span class="gl-button-text">
Find file

</span>

</button>
<a data-event-tracking="click_blame_control_on_blob_page" class="gl-button btn btn-md btn-default js-blob-blame-link" href="/scripts94/kubuntu-get-rid-of-snap/-/blame/main/Kubuntu_get_rid_of_Snap.sh"><span class="gl-button-text">
Blame
</span>

</a>
<a data-event-tracking="click_history_control_on_blob_page" class="gl-button btn btn-md btn-default " href="/scripts94/kubuntu-get-rid-of-snap/-/commits/main/Kubuntu_get_rid_of_Snap.sh"><span class="gl-button-text">
History
</span>

</a>
<a aria-keyshortcuts="y" class="gl-button btn btn-md btn-default has-tooltip js-data-file-blob-permalink-url" data-html="true" title="Go to permalink &lt;kbd class=&#39;flat ml-1&#39; aria-hidden=true&gt;y&lt;/kbd&gt;" href="/scripts94/kubuntu-get-rid-of-snap/-/blob/4c35b041ba373c00c5cac4ccbd1a88bce4ecc004/Kubuntu_get_rid_of_Snap.sh"><span class="gl-button-text">
Permalink
</span>

</a>
</div>
</div>

<div class="info-well gl-hidden sm:gl-block">
<div class="well-segment">
<ul class="blob-commit-info">
<li class="commit flex-row js-toggle-container" id="commit-4c35b041">
<div class="avatar-cell gl-hidden sm:gl-block">
<a href="/Schwarzer_Kater"><img alt="Schwarzer Kater&#39;s avatar" src="/uploads/-/system/user/avatar/13529996/avatar.png?width=80" class="avatar s40 gl-hidden sm:gl-inline-block" title="Schwarzer Kater"></a>
</div>
<div class="commit-detail flex-list gl-flex gl-justify-between gl-items-center gl-grow gl-min-w-0">
<div class="commit-content" data-testid="commit-content">
<a class="commit-row-message item-title js-onboarding-commit-item " href="/scripts94/kubuntu-get-rid-of-snap/-/commit/4c35b041ba373c00c5cac4ccbd1a88bce4ecc004">Update to version 2.1.4</a>
<span class="commit-row-message d-inline d-sm-none">
&middot;
4c35b041
</span>
<div class="committer">
<a class="commit-author-link js-user-link" data-user-id="13529996" href="/Schwarzer_Kater">Schwarzer Kater</a> authored <time class="js-timeago" title="May 12, 2024 4:23pm" datetime="2024-05-12T16:23:08Z" data-toggle="tooltip" data-placement="bottom" data-container="body">May 12, 2024</time>
</div>

</div>
<div class="commit-actions flex-row">

<div class="js-commit-pipeline-status" data-endpoint="/scripts94/kubuntu-get-rid-of-snap/-/commit/4c35b041ba373c00c5cac4ccbd1a88bce4ecc004/pipelines?ref=main"></div>
<div class="commit-sha-group btn-group gl-hidden sm:gl-flex">
<div class="label label-monospace monospace">
4c35b041
</div>
<button class="gl-button btn btn-icon btn-md btn-default " title="Copy commit SHA" aria-label="Copy commit SHA" aria-live="polite" data-toggle="tooltip" data-placement="bottom" data-container="body" data-html="true" data-category="primary" data-size="medium" data-clipboard-text="4c35b041ba373c00c5cac4ccbd1a88bce4ecc004" type="button"><svg class="s16 gl-icon gl-button-icon " data-testid="copy-to-clipboard-icon"><use href="/assets/icons-454317f5123bdb93dcb695c6092c458fb0ec6c862d0a56857aefa1c73469f743.svg#copy-to-clipboard"></use></svg>

</button>

</div>
</div>
</div>
</li>

</ul>
</div>

</div>
<div class="blob-content-holder js-per-page" data-blame-per-page="1000" id="blob-content-holder">
<div data-blob-path="Kubuntu_get_rid_of_Snap.sh" data-can-download-code="true" data-explain-code-available="false" data-new-workspace-path="/-/remote_development/workspaces/new" data-original-branch="main" data-project-path="scripts94/kubuntu-get-rid-of-snap" data-ref-type="" data-resource-id="gid://gitlab/Project/44614127" data-target-branch="main" data-user-id="" id="js-view-blob-app">
<div class="gl-spinner-container" role="status"><span aria-label="Loading" class="gl-spinner gl-spinner-md gl-spinner-dark !gl-align-text-bottom"></span></div>
</div>
</div>

</div>
<script nonce="2QFfMYldvrPIagMsEYte8w==">
//<![CDATA[
  window.gl = window.gl || {};
  window.gl.webIDEPath = '/-/ide/project/scripts94/kubuntu-get-rid-of-snap/edit/main/-/Kubuntu_get_rid_of_Snap.sh'


//]]>
</script>
<div data-ambiguous="false" data-ref="main" id="js-ambiguous-ref-modal"></div>

</main>
</div>


</div>
</div>


<script nonce="2QFfMYldvrPIagMsEYte8w==">
//<![CDATA[
if ('loading' in HTMLImageElement.prototype) {
  document.querySelectorAll('img.lazy').forEach(img => {
    img.loading = 'lazy';
    let imgUrl = img.dataset.src;
    // Only adding width + height for avatars for now
    if (imgUrl.indexOf('/avatar/') > -1 && imgUrl.indexOf('?') === -1) {
      const targetWidth = img.getAttribute('width') || img.width;
      imgUrl += `?width=${targetWidth}`;
    }
    img.src = imgUrl;
    img.removeAttribute('data-src');
    img.classList.remove('lazy');
    img.classList.add('js-lazy-loaded');
    img.dataset.testid = 'js-lazy-loaded-content';
  });
}

//]]>
</script>
<script nonce="2QFfMYldvrPIagMsEYte8w==">
//<![CDATA[
gl = window.gl || {};
gl.experiments = {};


//]]>
</script>

</body>
</html>

