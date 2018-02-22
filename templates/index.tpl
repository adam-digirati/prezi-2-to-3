<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]>      <html class="no-js"> <!<![endif]-->

  <head>
    <meta charset="utf-8">
    <title>Presentation API 2 to 3 converter &mdash; IIIF | International Image Interoperability Framework</title>
    <meta name="description" content="International Image Interoperability Framework: A community driven image framework with well defined APIs for making the world’s image repositories interoperable and accessible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="//iiif.io/css/normalize.min.css">
    <link href='http://fonts.googleapis.com/css?family=Raleway:100,300,500' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,400italic,600,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Inconsolata' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="//iiif.io/css/main.css">

    <style type="text/css">
      #results {
        background-color: #f5f5f5;
        padding: 2em;
        margin-left: 10px;
        margin-top: 2em;
      }
    </style>

    <link type="application/atom+xml" rel="alternate" href="//iiif.io/news/atom.xml"/>
    <script src="//iiif.io/js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    <script src="https://code.jquery.com/jquery-2.2.3.min.js" integrity="sha256-a23g1Nt4dtEYOj7bR+vTu7+T8VP13humZFBJNIYoEJo=" crossorigin="anonymous"></script>
    <script src="//iiif.io/js/vendor/anchor.min.js"></script>
    <script src="//iiif.io/js/anchor.js"></script>
    <style>
.tooltip {
    position: relative;
    display: inline-block;
    border-bottom: 1px dotted black;
}

.tooltip .tooltiptext {
    visibility: hidden;
    width: 500px;
    color: black;
    background: #eaf6fc;
    text-align: center;
    border-radius: 6px;
    padding: 5px 0;

    /* Position the tooltip */
    position: absolute;
    z-index: 1;
    top: -5px;
    left: 125%;
}

.tooltip:hover .tooltiptext {
    visibility: visible;
}
</style>
  </head>

  <body>
    <!--[if lt IE 7]>
      <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
    <![endif]-->

    <div class="header-container">
      <header class="wrapper clearfix">
        <a class="title" title="IIIF : International Image Interoperability Framework" href="//iiif.io/">Home</a>
        <nav>
          <ul>
            <li><a href="//iiif.io/about/" class="">About</a></li>
            <li><a href="//iiif.io/technical-details/" class="">Technical Details</a></li>
            <li><a href="//iiif.io/apps-demos/" class="">Apps &amp; Demos</a></li>
            <li><a href="//iiif.io/community/" class="">Community</a></li>
            <li><a href="//iiif.io/news/" class="">News</a></li>
          </ul>
        </nav>
      </header>
    </div>

    <div class="sub-pages-container">
      <div class="presentation-api clearfix">
        <article>

          <header>
            <div class="wrapper"><h1>Prezi 2 to 3 Converter</h1></div>
          </header>

          <section class="wrapper">
            <div>
              This service will convert a version 2.0 or 2.1 Manifest to version 3.0.  Fill in the URL of your manifest, and it will provide a coverted 3.0 Manifest.
            </div>

            <div style="border: 1px solid black;margin-left: 10px; margin-top: 20px; padding: 10px">
              <form id='manifest-validation-form' method="GET" action="upgrade">

                URL of Manifest to convert:<br/>
                <input style="margin-left: 25px" type="text" name="url" size="80"><br/>

                <br/>
                <b>Options</b>:
                <div style="border: 1px solid black;margin-left: 10px; margin-bottom: 20px; margin-top:10px; padding: 10px">
                    <ul>
                        <% for key in flags:
                            if isinstance(flags[key]['default'], bool):
                                type='checkbox'
                                if flags[key]['default']:
                                    checked = 'checked'
                                else:
                                    checked = ''
                                end
                                value = ''
                            else:
                                type = 'input'
                                value = 'value=%s' % flags[key]['default']
                                checked = ''
                            end
                        %>
                        <li>
                            <div class="tooltip">
                                {{ flags[key]['prop'].replace('_',' ').title() }} &nbsp;&nbsp;<input  name="{{ key }}" type="{{ type }}" {{ checked }} {{ value }} /><br/>
                                <span class="tooltiptext">{{ flags[key]['description'] }}</span>
                            </div>
                        </li>
                        % end
                    </ul>
                </div>

                <input type="submit" value="Go!" id="submit-url">
              </form>
            </div>

            <hr/>

            <div style="margin-top:20px">
            <b>Technical Note</b>
            <p>
                If you would like to use the converter programatically, there are two options:
            </p>
            <ul>
              <li><a href="https://github.com/IIIF/prezi-2-to-3">Download</a> the code from github and run it locally.</li>
              <li>Use it online with JSON based output, by an HTTP GET to this endpoint:<br/>http://&lt;url_to_be_determined&gt;;url=<i>manifest-url-here</i></li>
            </ul>
            </div>
          </section>
       </article>
      </div>
    </div>

    <div class="footer-container">
  <footer class="wrapper">
<ul>
<li>Feedback: <a href="mailto:iiif-discuss@googlegroups.com">iiif-discuss@googlegroups.com</a></li>
<li>Get involved: <a href="//iiif.io/community/#how-to-get-involved">Join IIIF</a>
</li>
</ul>
  </footer>
</div>
    <!-- AJAX code for form submission -->
    <script type="text/javascript">

      // Call out to the validation service and get a result
      function handleSubmission(e) {
        e.preventDefault();
        var form = $('#manifest-validation-form')[0]
        var url = form.action;
        var url = url + '?';
        var first = 1;
        for (let i = 0; i < form.length; i++) {
            var input = form.elements[i];
            if (input.name) {
                if (first != 1) {
                } else {
                    url += '&'
                }
                value = input.value;
                // Ensure if a checkbox is unticked it still gets sent
                if (input.type == 'checkbox') {
                    if (input.checked) {
                        value = 'True';
                    } else {
                        value = 'False'
                    }
                }
                url += input.name + '=' + value
            }
        }
        window.location.href = url;
      }

      // Set up event handler.
      $('#submit-url').on("click", handleSubmission);
    </script>
    <script>
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

      ga('create', 'UA-7219229-22', 'iiif.io');
      ga('send', 'pageview');
    </script>

  </body>
</html>
