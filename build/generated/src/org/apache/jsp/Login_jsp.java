package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <!-- Basic -->\r\n");
      out.write("        <meta charset=\"utf-8\">\r\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("        <!-- Mobile Metas -->\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"initial-scale=1, maximum-scale=1\">\r\n");
      out.write("        <!-- Site Metas -->\r\n");
      out.write("        <title>Login page</title>\r\n");
      out.write("        <meta name=\"keywords\" content=\"\">\r\n");
      out.write("        <meta name=\"description\" content=\"\">\r\n");
      out.write("        <meta name=\"author\" content=\"\">\r\n");
      out.write("        <!-- Site Icons -->\r\n");
      out.write("        <link rel=\"shortcut icon\" href=\"images/fevicon.ico.png\" type=\"image/x-icon\" />\r\n");
      out.write("        <link rel=\"apple-touch-icon\" href=\"images/apple-touch-icon.png\">\r\n");
      out.write("        <!-- Bootstrap CSS -->\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\r\n");
      out.write("        <!-- Site CSS -->\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"style.css\">\r\n");
      out.write("        <!-- Colors CSS -->\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/colors.css\">\r\n");
      out.write("        <!-- ALL VERSION CSS -->\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/versions.css\">\r\n");
      out.write("        <!-- Responsive CSS -->\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/responsive.css\">\r\n");
      out.write("        <!-- Custom CSS -->\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/custom.css\">\r\n");
      out.write("        <!-- Modernizer for Portfolio -->\r\n");
      out.write("        <script src=\"js/modernizer.js\"></script>\r\n");
      out.write("\r\n");
      out.write("        <link href=\"https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\" rel=\"stylesheet\">\r\n");
      out.write("        <link rel=\"shortcut icon\" href=\"./img/logo_web.png\" type=\"image/x-icon\">\r\n");
      out.write("        <script type=\"module\" src=\"https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js\"></script>\r\n");
      out.write("        <script nomodule src=\"https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js\"></script>\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://unpkg.com/swiper/swiper-bundle.min.css\" />\r\n");
      out.write("        <link href=\"https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\" rel=\"stylesheet\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"./css/service.css\">\r\n");
      out.write("        <!-- [if lt IE 9] -->\r\n");
      out.write("\r\n");
      out.write("        <!--<link rel=\"stylesheet\" href=\"./css/login.css\">-->\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"./css/register.css\">\r\n");
      out.write("\r\n");
      out.write("    </head>\r\n");
      out.write("\r\n");
      out.write("    <body>\r\n");
      out.write("        <header>\r\n");
      out.write("            <div class=\"header-top wow fadeIn\">\r\n");
      out.write("                <div class=\"container\">\r\n");
      out.write("                    <a class=\"navbar-brand\" href=\"index.html\"><img src=\"images/logo.png\" alt=\"image\"></a>\r\n");
      out.write("                    <div class=\"right-header\">\r\n");
      out.write("                        <div class=\"header-info\">\r\n");
      out.write("                            <div class=\"info-inner\">\r\n");
      out.write("                                <span class=\"icontop\"><img src=\"images/phone-icon.png\" alt=\"#\"></span>\r\n");
      out.write("                                <span class=\"iconcont\"><a href=\"tel:800 123 456\">800 123 456</a></span>\t\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"info-inner\">\r\n");
      out.write("                                <span class=\"icontop\"><i class=\"fa fa-envelope\" aria-hidden=\"true\"></i></span>\r\n");
      out.write("                                <span class=\"iconcont\"><a data-scroll href=\"mailto:info@yoursite.com\">info@Lifecare.com</a></span>\t\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"info-inner\">\r\n");
      out.write("                                <span class=\"icontop\"><i class=\"fa fa-clock-o\" aria-hidden=\"true\"></i></span>\r\n");
      out.write("                                <span class=\"iconcont\"><a data-scroll href=\"#\">Daily: 7:00am - 8:00pm</a></span>\t\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"info-inner\">\r\n");
      out.write("                                <ul class=\"list-main\">\r\n");
      out.write("                                    <!--<li><i class=\"fa fa-user-circle\"></i> <a href=\"#\">My account</a></li>-->\r\n");
      out.write("                                    <li><i class=\"fa fa-sign-in\"></i><a href=\"login\">Login</a></li>\r\n");
      out.write("                                </ul>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"header-bottom wow fadeIn\">\r\n");
      out.write("                <div class=\"container\">\r\n");
      out.write("                    <nav class=\"main-menu\">\r\n");
      out.write("                        <div class=\"navbar-header\">\r\n");
      out.write("                            <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#navbar\" aria-expanded=\"false\" aria-controls=\"navbar\"><i class=\"fa fa-bars\" aria-hidden=\"true\"></i></button>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <div id=\"navbar\" class=\"navbar-collapse collapse\">\r\n");
      out.write("                            <ul class=\"nav navbar-nav\">\r\n");
      out.write("                                <li><a class=\"active\" href=\"index.html\">Home</a></li>\r\n");
      out.write("                                <li><a data-scroll href=\"#about\">About us</a></li>\r\n");
      out.write("                                <li><a data-scroll href=\"#blogs\">Blogs</a></li>\r\n");
      out.write("                                <li><a data-scroll href=\"#service\">Services</a></li>\r\n");
      out.write("                                <li><a data-scroll href=\"#doctors\">Doctors</a></li>\r\n");
      out.write("                                <li><a data-scroll href=\"#price\">Price</a></li>\r\n");
      out.write("                                <li><a data-scroll href=\"#testimonials\">Testimonials</a></li>\r\n");
      out.write("                                <li><a data-scroll href=\"#getintouch\">Contact</a></li>\r\n");
      out.write("                            </ul>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </nav>\r\n");
      out.write("                    <div class=\"serch-bar\">\r\n");
      out.write("                        <div id=\"custom-search-input\">\r\n");
      out.write("                            <div class=\"input-group col-md-12\">\r\n");
      out.write("                                <input type=\"text\" class=\"form-control input-lg\" placeholder=\"Search\" />\r\n");
      out.write("                                <span class=\"input-group-btn\">\r\n");
      out.write("                                    <button class=\"btn btn-info btn-lg\" type=\"button\">\r\n");
      out.write("                                        <i class=\"fa fa-search\" aria-hidden=\"true\"></i>\r\n");
      out.write("                                    </button>\r\n");
      out.write("                                </span>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </header>\r\n");
      out.write("        <div id=\"home\" class=\"parallax first-section wow fadeIn\" data-stellar-background-ratio=\"0.4\" style=\"background-image:url('images/slider-bg.png');\">\r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                    <div class=\"col-md-12 col-sm-12\">\r\n");
      out.write("                        <div class=\"text-contant\">\r\n");
      out.write("                            <h2>\r\n");
      out.write("                                <span class=\"center\"><span class=\"icon\"><img src=\"images/icon-logo.png\" alt=\"#\" /></span></span>\r\n");
      out.write("                                <a href=\"\" class=\"typewrite\" data-period=\"2000\" data-type='[ \"Welcome to Life Care\", \"We Care Your Health\", \"We are Expert!\" ]'>\r\n");
      out.write("                                    <span class=\"wrap\"></span>\r\n");
      out.write("                                </a>\r\n");
      out.write("                            </h2>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <!-- end row -->\r\n");
      out.write("            </div>\r\n");
      out.write("            <!-- end container -->\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <!--        <div class=\"login\">\r\n");
      out.write("                    <h2 class=\"title\">Login Form</h2>\r\n");
      out.write("                    <form action=\"login\" method=\"post\">\r\n");
      out.write("                        <p class=\"text-danger\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${mess}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</p>\r\n");
      out.write("                        <div class=\"enter\">\r\n");
      out.write("                            <img src=\"images/user.png\">\r\n");
      out.write("                            <input placeholder=\"Enter your username\" type=\"text\" name=\"adUser\">\r\n");
      out.write("                            <br>\r\n");
      out.write("                        </div>\t\r\n");
      out.write("                        <div class=\"enter\">\r\n");
      out.write("                            <img src=\"images/pass.png\">\r\n");
      out.write("                            <input id=\"pass\" placeholder=\"Enter your password\" type=\"password\" minlength=\"8\" name=\"adPass\">\r\n");
      out.write("                            <img onclick=\"myFunction()\" src=\"images/eye2.jpg\" width=\"30\" height=\"30\">\r\n");
      out.write("                            <br>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div style=\"text-align: center; margin: 10 auto\"><a href=\"#\">forgot your password?</a></div>\r\n");
      out.write("                        <div style=\"text-align: center; margin: 10 auto\"><a href=\"register\">register account</a></div>\r\n");
      out.write("                        <button>Login</button>\r\n");
      out.write("                        <input onclick=\"send()\" type=\"button\" value=\"Submit\">\r\n");
      out.write("                    </form>\r\n");
      out.write("                </div>-->\r\n");
      out.write("\r\n");
      out.write("        <div class=\"main-w3layouts wrapper\">\r\n");
      out.write("            <h1>Login Form</h1>\r\n");
      out.write("            <div class=\"main-agileinfo\">\r\n");
      out.write("                <div class=\"agileits-top\">\r\n");
      out.write("                    <form action=\"login\" method=\"post\">\r\n");
      out.write("                        <p class=\"text-danger\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${mess}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</p>\r\n");
      out.write("                        <input class=\"text\" type=\"text\" name=\"adUser\" placeholder=\"Username\" required=\"\">\r\n");
      out.write("                        <input id=\"pass\" class=\"text\" type=\"password\" name=\"adPass\" minlength=\"8\" placeholder=\"Password\" required=\"\"><img onclick=\"myFunction()\" src=\"images/eye2.jpg\" width=\"30\" height=\"30\">\r\n");
      out.write("                        <div style=\"text-align: center; margin: 10 auto\"><a href=\"#\">forgot your password?</a></div>\r\n");
      out.write("                        <div style=\"text-align: center; margin: 10 auto\"><a href=\"register\">register account</a></div>\r\n");
      out.write("\r\n");
      out.write("                        <input type=\"submit\" value=\"LOGIN\">\r\n");
      out.write("                    </form>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <footer id=\"footer\" class=\"footer-area wow fadeIn\">\r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                    <div class=\"col-md-4\">\r\n");
      out.write("                        <div class=\"logo padding\">\r\n");
      out.write("                            <a href=\"\"><img src=\"images/logo.png\" alt=\"\"></a>\r\n");
      out.write("                            <p>Locavore pork belly scen ester pine est chill wave microdosing pop uple itarian cliche artisan.</p>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"col-md-4\">\r\n");
      out.write("                        <div class=\"footer-info padding\">\r\n");
      out.write("                            <h3>CONTACT US</h3>\r\n");
      out.write("                            <p><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i> PO Box 16122 Collins Street West Victoria 8007 Australia</p>\r\n");
      out.write("                            <p><i class=\"fa fa-paper-plane\" aria-hidden=\"true\"></i> info@gmail.com</p>\r\n");
      out.write("                            <p><i class=\"fa fa-phone\" aria-hidden=\"true\"></i> (+1) 800 123 456</p>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"col-md-4\">\r\n");
      out.write("                        <div class=\"subcriber-info\">\r\n");
      out.write("                            <h3>SUBSCRIBE</h3>\r\n");
      out.write("                            <p>Get healthy news, tip and solutions to your problems from our experts.</p>\r\n");
      out.write("                            <div class=\"subcriber-box\">\r\n");
      out.write("                                <form id=\"mc-form\" class=\"mc-form\">\r\n");
      out.write("                                    <div class=\"newsletter-form\">\r\n");
      out.write("                                        <input type=\"email\" autocomplete=\"off\" id=\"mc-email\" placeholder=\"Email address\" class=\"form-control\" name=\"EMAIL\">\r\n");
      out.write("                                        <button class=\"mc-submit\" type=\"submit\"><i class=\"fa fa-paper-plane\"></i></button> \r\n");
      out.write("                                        <div class=\"clearfix\"></div>\r\n");
      out.write("                                        <!-- mailchimp-alerts Start -->\r\n");
      out.write("                                        <div class=\"mailchimp-alerts\">\r\n");
      out.write("                                            <div class=\"mailchimp-submitting\"></div>\r\n");
      out.write("                                            <!-- mailchimp-submitting end -->\r\n");
      out.write("                                            <div class=\"mailchimp-success\"></div>\r\n");
      out.write("                                            <!-- mailchimp-success end -->\r\n");
      out.write("                                            <div class=\"mailchimp-error\"></div>\r\n");
      out.write("                                            <!-- mailchimp-error end -->\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <!-- mailchimp-alerts end -->\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </form>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </footer>\r\n");
      out.write("        <div class=\"copyright-area wow fadeIn\">\r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                    <div class=\"col-md-8\">\r\n");
      out.write("                        <div class=\"footer-text\">\r\n");
      out.write("                            <p>© 2018 Lifecare. All Rights Reserved.</p>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"col-md-4\">\r\n");
      out.write("                        <div class=\"social\">\r\n");
      out.write("                            <ul class=\"social-links\">\r\n");
      out.write("                                <li><a href=\"\"><i class=\"fa fa-rss\"></i></a></li>\r\n");
      out.write("                                <li><a href=\"\"><i class=\"fa fa-facebook\"></i></a></li>\r\n");
      out.write("                                <li><a href=\"\"><i class=\"fa fa-twitter\"></i></a></li>\r\n");
      out.write("                                <li><a href=\"\"><i class=\"fa fa-google-plus\"></i></a></li>\r\n");
      out.write("                                <li><a href=\"\"><i class=\"fa fa-youtube\"></i></a></li>\r\n");
      out.write("                                <li><a href=\"\"><i class=\"fa fa-pinterest\"></i></a></li>\r\n");
      out.write("                            </ul>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <a href=\"#home\" data-scroll class=\"dmtop global-radius\"><i class=\"fa fa-angle-up\"></i></a>\r\n");
      out.write("        <!-- all js files -->\r\n");
      out.write("        <script src=\"js/all.js\"></script>\r\n");
      out.write("        <!-- all plugins -->\r\n");
      out.write("        <script src=\"js/custom.js\"></script>\r\n");
      out.write("        <!-- map -->\r\n");
      out.write("        <script src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyCNUPWkb4Cjd7Wxo-T4uoUldFjoiUA1fJc&callback=myMap\"></script>\r\n");
      out.write("\r\n");
      out.write("        <script src=\"https://unpkg.com/swiper/swiper-bundle.min.js\"></script>\r\n");
      out.write("        <script src=\"https://unpkg.com/scrollreveal\"></script>\r\n");
      out.write("        <script src=\"./js/main.js\"></script>\r\n");
      out.write("\r\n");
      out.write("        <script type=\"text/javascript\">\r\n");
      out.write("                            var x = true;\r\n");
      out.write("                            function myFunction() {\r\n");
      out.write("                                if (x) {\r\n");
      out.write("                                    document.getElementById('pass').type = \"text\";\r\n");
      out.write("                                    x = false;\r\n");
      out.write("                                } else {\r\n");
      out.write("                                    document.getElementById('pass').type = \"password\";\r\n");
      out.write("                                    x = true;\r\n");
      out.write("                                }\r\n");
      out.write("                            }\r\n");
      out.write("        </script>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
