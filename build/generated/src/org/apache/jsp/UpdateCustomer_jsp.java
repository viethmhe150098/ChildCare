package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class UpdateCustomer_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_choose;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_otherwise;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_when_test;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_choose = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_otherwise = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_when_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_choose.release();
    _jspx_tagPool_c_otherwise.release();
    _jspx_tagPool_c_when_test.release();
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <!-- Basic -->\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <!-- Mobile Metas -->\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("    <meta name=\"viewport\" content=\"initial-scale=1, maximum-scale=1\">\n");
      out.write("    <!-- Site Metas -->\n");
      out.write("    <title>Update Customer</title>\n");
      out.write("    <meta name=\"keywords\" content=\"\">\n");
      out.write("    <meta name=\"description\" content=\"\">\n");
      out.write("    <meta name=\"author\" content=\"\">\n");
      out.write("    <!-- Site Icons -->\n");
      out.write("    <link rel=\"shortcut icon\" href=\"images/fevicon.ico.png\" type=\"image/x-icon\" />\n");
      out.write("    <link rel=\"apple-touch-icon\" href=\"images/apple-touch-icon.png\">\n");
      out.write("    <!-- Bootstrap CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("    <!-- Site CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("    <!-- Colors CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/colors.css\">\n");
      out.write("    <!-- ALL VERSION CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/versions.css\">\n");
      out.write("    <!-- Responsive CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/responsive.css\">\n");
      out.write("    <!-- Custom CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/custom.css\">\n");
      out.write("    <!-- Modernizer for Portfolio -->\n");
      out.write("    <script src=\"js/modernizer.js\"></script>\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Roboto|Varela+Round\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/icon?family=Material+Icons\">\n");
      out.write("    <link href=\"https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\" rel=\"stylesheet\">\n");
      out.write("    <link rel=\"shortcut icon\" href=\"./img/logo_web.png\" type=\"image/x-icon\">\n");
      out.write("    <script type=\"module\" src=\"https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js\"></script>\n");
      out.write("    <script nomodule src=\"https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js\"></script>\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://unpkg.com/swiper/swiper-bundle.min.css\" />\n");
      out.write("    <link href=\"https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\" rel=\"stylesheet\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"./css/service.css\">\n");
      out.write("    <!-- [if lt IE 9] -->\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body class=\"clinic_version\">\n");
      out.write("    <!-- LOADER -->\n");
      out.write("    <div id=\"preloader\">\n");
      out.write("        <img class=\"preloader\" src=\"images/loaders/heart-loading2.gif\" alt=\"\">\n");
      out.write("    </div>\n");
      out.write("    <!-- END LOADER -->\n");
      out.write("    <header>\n");
      out.write("        <div class=\"header-top fadeIn\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <a class=\"navbar-brand\" href=\"index.html\"><img src=\"images/logo.png\" alt=\"image\"></a>\n");
      out.write("                <div class=\"right-header\">\n");
      out.write("                    <div class=\"header-info\">\n");
      out.write("                        <div class=\"info-inner\">\n");
      out.write("                            <span class=\"icontop\"><img src=\"images/phone-icon.png\" alt=\"#\"></span>\n");
      out.write("                            <span class=\"iconcont\"><a href=\"tel:800 123 456\">800 123 456</a></span>\t\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"info-inner\">\n");
      out.write("                            <span class=\"icontop\"><i class=\"fa fa-envelope\" aria-hidden=\"true\"></i></span>\n");
      out.write("                            <span class=\"iconcont\"><a data-scroll href=\"mailto:info@yoursite.com\">info@Lifecare.com</a></span>\t\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"info-inner\">\n");
      out.write("                            <span class=\"icontop\"><i class=\"fa fa-clock-o\" aria-hidden=\"true\"></i></span>\n");
      out.write("                            <span class=\"iconcont\"><a data-scroll href=\"#\">Daily: 7:00am - 8:00pm</a></span>\t\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"info-inner\">\n");
      out.write("                            <ul class=\"list-main\">\n");
      out.write("                                <!--<li><i class=\"fa fa-user-circle\"></i> <a href=\"#\">My account</a></li>\n");
      out.write("                                <li><i class=\"fa fa-sign-in\"></i><a href=\"login\">Login</a></li>-->\n");
      out.write("\n");
      out.write("                                ");
      if (_jspx_meth_c_choose_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                    ");
      if (_jspx_meth_c_choose_1(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"header-bottom fadeIn\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <nav class=\"main-menu\">\n");
      out.write("                    <div class=\"navbar-header\">\n");
      out.write("                        <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#navbar\" aria-expanded=\"false\" aria-controls=\"navbar\"><i class=\"fa fa-bars\" aria-hidden=\"true\"></i></button>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div id=\"navbar\" class=\"navbar-collapse collapse\">\n");
      out.write("                        <ul class=\"nav navbar-nav\">\n");
      out.write("                            <li><a class=\"active\" href=\"ServiceControl\">Home</a></li>\n");
      out.write("                            <li><a data-scroll href=\"#about\">About us</a></li>\n");
      out.write("                            <li><a data-scroll href=\"#service\">Services</a></li>\n");
      out.write("                            <li><a data-scroll href=\"#doctors\">Doctors</a></li>\n");
      out.write("                            <li><a data-scroll href=\"#price\">Price</a></li>\n");
      out.write("                            <li><a data-scroll href=\"#testimonials\">Testimonials</a></li>\n");
      out.write("                            <li><a data-scroll href=\"#getintouch\">Contact</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </nav>\n");
      out.write("\n");
      out.write("                <div class=\"serch-bar\">\n");
      out.write("                    <div id=\"custom-search-input\">\n");
      out.write("                        <div class=\"input-group col-md-12\">\n");
      out.write("                            <input type=\"text\" class=\"form-control input-lg\" placeholder=\"Search\" />\n");
      out.write("                            <span class=\"input-group-btn\">\n");
      out.write("                                <button class=\"btn btn-info btn-lg\" type=\"button\">\n");
      out.write("                                    <i class=\"fa fa-search\" aria-hidden=\"true\"></i>\n");
      out.write("                                </button>\n");
      out.write("                            </span>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </header>\n");
      out.write("    <div id=\"home\" class=\"parallax first-section wow fadeIn\" data-stellar-background-ratio=\"0.4\" style=\"background-image:url('images/slider-bg.png');\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-12 col-sm-12\">\n");
      out.write("                    <div class=\"text-contant\">\n");
      out.write("                        <h2>\n");
      out.write("                            <span class=\"center\"><span class=\"icon\"><img src=\"images/icon-logo.png\" alt=\"#\" /></span></span>\n");
      out.write("                            <a href=\"\" class=\"typewrite\" data-period=\"2000\" data-type='[ \"Welcome to Life Care\", \"We Care Your Health\", \"We are Expert!\" ]'>\n");
      out.write("                                <span class=\"wrap\"></span>\n");
      out.write("                            </a>\n");
      out.write("                        </h2>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <!-- end row -->\n");
      out.write("        </div>\n");
      out.write("        <!-- end container -->\n");
      out.write("    </div>\n");
      out.write("    <!-- end section -->\n");
      out.write("\n");
      out.write("    <!--<div id=\"editEmployeeModal\" class=\"modal fade\">-->\n");
      out.write("    <div class=\"modal-dialog\">\n");
      out.write("        <div class=\"modal-content\">\n");
      out.write("            <form action=\"updateCustomerControl\" method=\"post\">\n");
      out.write("                <div class=\"modal-header\">\t\t\t\t\t\t\n");
      out.write("                    <h4 class=\"modal-title\">Update Customer <i class=\"fas fa-user-friends\"></i></h4>\n");
      out.write("                    <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">&times;</button>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"modal-body\">\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label>Customer ID</label>\n");
      out.write("                        <input name=\"cID\" type=\"text\" class=\"form-control\" readonly=\"\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label>First Name</label>\n");
      out.write("                        <input name=\"firstname\" type=\"text\" class=\"form-control\" required>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label>Last Name</label>\n");
      out.write("                        <input name=\"lastname\" type=\"text\" class=\"form-control\" required>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label>Gender</label>\n");
      out.write("                        <input name=\"gender\" type=\"text\" class=\"form-control\" required>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label>Email <i class=\"far fa-envelope\"></i></label>\n");
      out.write("                        <input name=\"email\" type=\"text\" class=\"form-control\" required>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label>Tel <i class=\"fas fa-phone\"></i>\n");
      out.write("\n");
      out.write("                        </label>\n");
      out.write("                        <input name=\"tel\" type=\"text\" class=\"form-control\" required>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label>Username</label>\n");
      out.write("                        <input name=\"user\" type=\"text\" class=\"form-control\" required>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label>Password</label>\n");
      out.write("                        <input name=\"pass\" type=\"text\" class=\"form-control\" required>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label>Age</label>\n");
      out.write("                        <input name=\"age\" type=\"text\" class=\"form-control\" required>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label>Status</label>\n");
      out.write("                        <input name=\"status\" type=\"text\" class=\"form-control\" required>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label>Address</label>\n");
      out.write("                        <textarea name=\"address\" class=\"form-control\" required></textarea>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label>Role</label>\n");
      out.write("                        <input name=\"role\" type=\"text\" class=\"form-control\" required>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <div class=\"modal-footer\" style=\"margin-top:30px;\">\n");
      out.write("                    <input type=\"submit\" class=\"btn btn-success\" value=\"Add\">\n");
      out.write("                    <input style=\"background-color: red; color: white\" type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\" value=\"Cancel\">\n");
      out.write("                </div>\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    <!--</div>-->\n");
      out.write("\n");
      out.write("    <div class=\"page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins\">\n");
      out.write("        <div class=\"wrapper wrapper--w680\">\n");
      out.write("            <div class=\"card card-4\">\n");
      out.write("                <div class=\"card-body\">\n");
      out.write("                    <h2 class=\"title\">Your Profile</h2>\n");
      out.write("                    <form action=\"myAccount\" method=\"post\"> \n");
      out.write("                        Customer ID: <input type=\"text\" name=\"cid\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${name.customerID}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" readonly/>\n");
      out.write("                        Account: <input type=\"text\" name=\"account\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${name.account}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" ><br>\n");
      out.write("                        Name: <input type=\"text\" name=\"name\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${name.customerName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" ><br>\n");
      out.write("                        <div class=\"input-group\">\n");
      out.write("                            <label class=\"label\">Gender: </label>\n");
      out.write("                            <div class=\"p-t-10\">\n");
      out.write("                                ");
      if (_jspx_meth_c_choose_2(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        Phone number: <input type=\"text\" name=\"phone\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${name.phoneNumber}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" ><br>\n");
      out.write("                        Email: <input type=\"text\" name=\"email\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${name.email}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" ><br>\n");
      out.write("                        DOB: <fmt:formatDate type = \"date\" \n");
      out.write("                                             value = \"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${name.DOB}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" /><br>\n");
      out.write("                        <button style=\"border: 1px solid black; padding: 10px; margin-top: 10px; background-color: lightgray\" type=\"submit\">Save</button>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <footer id=\"footer\" class=\"footer-area wow fadeIn\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-4\">\n");
      out.write("                    <div class=\"logo padding\">\n");
      out.write("                        <a href=\"\"><img src=\"images/logo.png\" alt=\"\"></a>\n");
      out.write("                        <p>Locavore pork belly scen ester pine est chill wave microdosing pop uple itarian cliche artisan.</p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-md-4\">\n");
      out.write("                    <div class=\"footer-info padding\">\n");
      out.write("                        <h3>CONTACT US</h3>\n");
      out.write("                        <p><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i> PO Box 16122 Collins Street West Victoria 8007 Australia</p>\n");
      out.write("                        <p><i class=\"fa fa-paper-plane\" aria-hidden=\"true\"></i> info@gmail.com</p>\n");
      out.write("                        <p><i class=\"fa fa-phone\" aria-hidden=\"true\"></i> (+1) 800 123 456</p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-md-4\">\n");
      out.write("                    <div class=\"subcriber-info\">\n");
      out.write("                        <h3>SUBSCRIBE</h3>\n");
      out.write("                        <p>Get healthy news, tip and solutions to your problems from our experts.</p>\n");
      out.write("                        <div class=\"subcriber-box\">\n");
      out.write("                            <form id=\"mc-form\" class=\"mc-form\">\n");
      out.write("                                <div class=\"newsletter-form\">\n");
      out.write("                                    <input type=\"email\" autocomplete=\"off\" id=\"mc-email\" placeholder=\"Email address\" class=\"form-control\" name=\"EMAIL\">\n");
      out.write("                                    <button class=\"mc-submit\" type=\"submit\"><i class=\"fa fa-paper-plane\"></i></button> \n");
      out.write("                                    <div class=\"clearfix\"></div>\n");
      out.write("                                    <!-- mailchimp-alerts Start -->\n");
      out.write("                                    <div class=\"mailchimp-alerts\">\n");
      out.write("                                        <div class=\"mailchimp-submitting\"></div>\n");
      out.write("                                        <!-- mailchimp-submitting end -->\n");
      out.write("                                        <div class=\"mailchimp-success\"></div>\n");
      out.write("                                        <!-- mailchimp-success end -->\n");
      out.write("                                        <div class=\"mailchimp-error\"></div>\n");
      out.write("                                        <!-- mailchimp-error end -->\n");
      out.write("                                    </div>\n");
      out.write("                                    <!-- mailchimp-alerts end -->\n");
      out.write("                                </div>\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </footer>\n");
      out.write("    <div class=\"copyright-area wow fadeIn\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-8\">\n");
      out.write("                    <div class=\"footer-text\">\n");
      out.write("                        <p>© 2018 Lifecare. All Rights Reserved.</p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-md-4\">\n");
      out.write("                    <div class=\"social\">\n");
      out.write("                        <ul class=\"social-links\">\n");
      out.write("                            <li><a href=\"\"><i class=\"fa fa-rss\"></i></a></li>\n");
      out.write("                            <li><a href=\"\"><i class=\"fa fa-facebook\"></i></a></li>\n");
      out.write("                            <li><a href=\"\"><i class=\"fa fa-twitter\"></i></a></li>\n");
      out.write("                            <li><a href=\"\"><i class=\"fa fa-google-plus\"></i></a></li>\n");
      out.write("                            <li><a href=\"\"><i class=\"fa fa-youtube\"></i></a></li>\n");
      out.write("                            <li><a href=\"\"><i class=\"fa fa-pinterest\"></i></a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    <div id=\"addEmployeeModal\" class=\"modal fade\">\n");
      out.write("        <div class=\"modal-dialog\">\n");
      out.write("            <div class=\"modal-content\">\n");
      out.write("                <form action=\"addUserControl\" method=\"post\">\n");
      out.write("                    <div class=\"modal-header\">\t\t\t\t\t\t\n");
      out.write("                        <h4 class=\"modal-title\">Add New User <i class=\"fas fa-user-friends\"></i></h4>\n");
      out.write("                        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">&times;</button>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"modal-body\">\t\t\t\t\t\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label>First Name</label>\n");
      out.write("                            <input name=\"firstname\" type=\"text\" class=\"form-control\" required>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label>Last Name</label>\n");
      out.write("                            <input name=\"lastname\" type=\"text\" class=\"form-control\" required>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label>Gender</label>\n");
      out.write("                            <input name=\"gender\" type=\"text\" class=\"form-control\" required>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label>Email <i class=\"far fa-envelope\"></i></label>\n");
      out.write("                            <input name=\"email\" type=\"text\" class=\"form-control\" required>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label>Tel <i class=\"fas fa-phone\"></i>\n");
      out.write("                            </label>\n");
      out.write("                            <input name=\"tel\" type=\"text\" class=\"form-control\" required>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label>Username</label>\n");
      out.write("                            <input name=\"user\" type=\"text\" class=\"form-control\" required>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label>Password</label>\n");
      out.write("                            <input name=\"pass\" type=\"text\" class=\"form-control\" required>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label>Age</label>\n");
      out.write("                            <input name=\"age\" type=\"text\" class=\"form-control\" required>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label>Status</label>\n");
      out.write("                            <input name=\"status\" type=\"text\" class=\"form-control\" required>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label>Address</label>\n");
      out.write("                            <textarea name=\"address\" class=\"form-control\" required></textarea>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label>Role</label>\n");
      out.write("                            <input name=\"role\" type=\"text\" class=\"form-control\" required>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"modal-footer\" style=\"margin-top:30px;\">\n");
      out.write("                        <input type=\"submit\" class=\"btn btn-success\" value=\"Add\">\n");
      out.write("                        <input style=\"background-color: red\" type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\" value=\"Cancel\">\n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <a href=\"#home\" data-scroll class=\"dmtop global-radius\"><i class=\"fa fa-angle-up\"></i></a>\n");
      out.write("    <!-- all js files -->\n");
      out.write("    <script>\n");
      out.write("        function disable() {\n");
      out.write("            document.getElementById(\"trangThai\").disabled = true;\n");
      out.write("        }\n");
      out.write("        function enable() {\n");
      out.write("            document.getElementById(\"trangThai\").disabled = false;\n");
      out.write("        }\n");
      out.write("    </script>\n");
      out.write("    <script src=\"js/all.js\"></script>\n");
      out.write("    <!-- all plugins -->\n");
      out.write("    <script src=\"js/custom.js\"></script>\n");
      out.write("    <!-- map -->\n");
      out.write("    <script src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyCNUPWkb4Cjd7Wxo-T4uoUldFjoiUA1fJc&callback=myMap\"></script>\n");
      out.write("\n");
      out.write("    <script src=\"https://unpkg.com/swiper/swiper-bundle.min.js\"></script>\n");
      out.write("    <script src=\"https://unpkg.com/scrollreveal\"></script>\n");
      out.write("    <script src=\"./js/main.js\"></script>\n");
      out.write("</body>   \n");
      out.write("</html>");
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

  private boolean _jspx_meth_c_choose_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:choose
    org.apache.taglibs.standard.tag.common.core.ChooseTag _jspx_th_c_choose_0 = (org.apache.taglibs.standard.tag.common.core.ChooseTag) _jspx_tagPool_c_choose.get(org.apache.taglibs.standard.tag.common.core.ChooseTag.class);
    _jspx_th_c_choose_0.setPageContext(_jspx_page_context);
    _jspx_th_c_choose_0.setParent(null);
    int _jspx_eval_c_choose_0 = _jspx_th_c_choose_0.doStartTag();
    if (_jspx_eval_c_choose_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                    ");
        if (_jspx_meth_c_when_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_0, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("                                    ");
        if (_jspx_meth_c_otherwise_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_0, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("                                    ");
        int evalDoAfterBody = _jspx_th_c_choose_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_choose_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_choose.reuse(_jspx_th_c_choose_0);
      return true;
    }
    _jspx_tagPool_c_choose.reuse(_jspx_th_c_choose_0);
    return false;
  }

  private boolean _jspx_meth_c_when_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_choose_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:when
    org.apache.taglibs.standard.tag.rt.core.WhenTag _jspx_th_c_when_0 = (org.apache.taglibs.standard.tag.rt.core.WhenTag) _jspx_tagPool_c_when_test.get(org.apache.taglibs.standard.tag.rt.core.WhenTag.class);
    _jspx_th_c_when_0.setPageContext(_jspx_page_context);
    _jspx_th_c_when_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_choose_0);
    _jspx_th_c_when_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.customer_account == null}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_when_0 = _jspx_th_c_when_0.doStartTag();
    if (_jspx_eval_c_when_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                        <!--<li><i class=\"fa fa-user-circle\"></i> <a href=\"#\">My account</a></li>-->\n");
        out.write("                                    ");
        int evalDoAfterBody = _jspx_th_c_when_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_when_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_0);
      return true;
    }
    _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_0);
    return false;
  }

  private boolean _jspx_meth_c_otherwise_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_choose_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:otherwise
    org.apache.taglibs.standard.tag.common.core.OtherwiseTag _jspx_th_c_otherwise_0 = (org.apache.taglibs.standard.tag.common.core.OtherwiseTag) _jspx_tagPool_c_otherwise.get(org.apache.taglibs.standard.tag.common.core.OtherwiseTag.class);
    _jspx_th_c_otherwise_0.setPageContext(_jspx_page_context);
    _jspx_th_c_otherwise_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_choose_0);
    int _jspx_eval_c_otherwise_0 = _jspx_th_c_otherwise_0.doStartTag();
    if (_jspx_eval_c_otherwise_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                        <li><i class=\"fa fa-user-circle\"></i> <a href=\"Userprofile.jsp\">");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.customer_account.username}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("</a></li>\n");
        out.write("                                        ");
        int evalDoAfterBody = _jspx_th_c_otherwise_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_otherwise_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_otherwise.reuse(_jspx_th_c_otherwise_0);
      return true;
    }
    _jspx_tagPool_c_otherwise.reuse(_jspx_th_c_otherwise_0);
    return false;
  }

  private boolean _jspx_meth_c_choose_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:choose
    org.apache.taglibs.standard.tag.common.core.ChooseTag _jspx_th_c_choose_1 = (org.apache.taglibs.standard.tag.common.core.ChooseTag) _jspx_tagPool_c_choose.get(org.apache.taglibs.standard.tag.common.core.ChooseTag.class);
    _jspx_th_c_choose_1.setPageContext(_jspx_page_context);
    _jspx_th_c_choose_1.setParent(null);
    int _jspx_eval_c_choose_1 = _jspx_th_c_choose_1.doStartTag();
    if (_jspx_eval_c_choose_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                        ");
        if (_jspx_meth_c_when_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_1, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("                                            ");
        if (_jspx_meth_c_otherwise_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_1, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("                                        ");
        int evalDoAfterBody = _jspx_th_c_choose_1.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_choose_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_choose.reuse(_jspx_th_c_choose_1);
      return true;
    }
    _jspx_tagPool_c_choose.reuse(_jspx_th_c_choose_1);
    return false;
  }

  private boolean _jspx_meth_c_when_1(javax.servlet.jsp.tagext.JspTag _jspx_th_c_choose_1, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:when
    org.apache.taglibs.standard.tag.rt.core.WhenTag _jspx_th_c_when_1 = (org.apache.taglibs.standard.tag.rt.core.WhenTag) _jspx_tagPool_c_when_test.get(org.apache.taglibs.standard.tag.rt.core.WhenTag.class);
    _jspx_th_c_when_1.setPageContext(_jspx_page_context);
    _jspx_th_c_when_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_choose_1);
    _jspx_th_c_when_1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.customer_account == null}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_when_1 = _jspx_th_c_when_1.doStartTag();
    if (_jspx_eval_c_when_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                        <li><i class=\"fa fa-sign-in\"></i><a href=\"login\">Login</a></li>\n");
        out.write("                                            ");
        int evalDoAfterBody = _jspx_th_c_when_1.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_when_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_1);
      return true;
    }
    _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_1);
    return false;
  }

  private boolean _jspx_meth_c_otherwise_1(javax.servlet.jsp.tagext.JspTag _jspx_th_c_choose_1, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:otherwise
    org.apache.taglibs.standard.tag.common.core.OtherwiseTag _jspx_th_c_otherwise_1 = (org.apache.taglibs.standard.tag.common.core.OtherwiseTag) _jspx_tagPool_c_otherwise.get(org.apache.taglibs.standard.tag.common.core.OtherwiseTag.class);
    _jspx_th_c_otherwise_1.setPageContext(_jspx_page_context);
    _jspx_th_c_otherwise_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_choose_1);
    int _jspx_eval_c_otherwise_1 = _jspx_th_c_otherwise_1.doStartTag();
    if (_jspx_eval_c_otherwise_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                        <li><i class=\"fa fa-sign-in\"></i><a href=\"validateCustomer\">Logout</a></li>\n");
        out.write("                                            ");
        int evalDoAfterBody = _jspx_th_c_otherwise_1.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_otherwise_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_otherwise.reuse(_jspx_th_c_otherwise_1);
      return true;
    }
    _jspx_tagPool_c_otherwise.reuse(_jspx_th_c_otherwise_1);
    return false;
  }

  private boolean _jspx_meth_c_choose_2(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:choose
    org.apache.taglibs.standard.tag.common.core.ChooseTag _jspx_th_c_choose_2 = (org.apache.taglibs.standard.tag.common.core.ChooseTag) _jspx_tagPool_c_choose.get(org.apache.taglibs.standard.tag.common.core.ChooseTag.class);
    _jspx_th_c_choose_2.setPageContext(_jspx_page_context);
    _jspx_th_c_choose_2.setParent(null);
    int _jspx_eval_c_choose_2 = _jspx_th_c_choose_2.doStartTag();
    if (_jspx_eval_c_choose_2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                    ");
        if (_jspx_meth_c_when_2((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_2, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("                                    ");
        if (_jspx_meth_c_otherwise_2((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_2, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("                                ");
        int evalDoAfterBody = _jspx_th_c_choose_2.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_choose_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_choose.reuse(_jspx_th_c_choose_2);
      return true;
    }
    _jspx_tagPool_c_choose.reuse(_jspx_th_c_choose_2);
    return false;
  }

  private boolean _jspx_meth_c_when_2(javax.servlet.jsp.tagext.JspTag _jspx_th_c_choose_2, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:when
    org.apache.taglibs.standard.tag.rt.core.WhenTag _jspx_th_c_when_2 = (org.apache.taglibs.standard.tag.rt.core.WhenTag) _jspx_tagPool_c_when_test.get(org.apache.taglibs.standard.tag.rt.core.WhenTag.class);
    _jspx_th_c_when_2.setPageContext(_jspx_page_context);
    _jspx_th_c_when_2.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_choose_2);
    _jspx_th_c_when_2.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${name.gender eq true}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_when_2 = _jspx_th_c_when_2.doStartTag();
    if (_jspx_eval_c_when_2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                        <label class=\"radio-container m-r-45\">Male\n");
        out.write("                                            <input type=\"radio\" name=\"gender\" value=\"male\" >\n");
        out.write("\n");
        out.write("                                            <span class=\"checkmark\"></span>\n");
        out.write("                                        </label>\n");
        out.write("                                        <label class=\"radio-container\">Female\n");
        out.write("                                            <input type=\"radio\" name=\"gender\" value=\"female\" checked=\"checked\" >\n");
        out.write("                                            <span class=\"checkmark\"></span>\n");
        out.write("                                        </label>\n");
        out.write("                                    ");
        int evalDoAfterBody = _jspx_th_c_when_2.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_when_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_2);
      return true;
    }
    _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_2);
    return false;
  }

  private boolean _jspx_meth_c_otherwise_2(javax.servlet.jsp.tagext.JspTag _jspx_th_c_choose_2, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:otherwise
    org.apache.taglibs.standard.tag.common.core.OtherwiseTag _jspx_th_c_otherwise_2 = (org.apache.taglibs.standard.tag.common.core.OtherwiseTag) _jspx_tagPool_c_otherwise.get(org.apache.taglibs.standard.tag.common.core.OtherwiseTag.class);
    _jspx_th_c_otherwise_2.setPageContext(_jspx_page_context);
    _jspx_th_c_otherwise_2.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_choose_2);
    int _jspx_eval_c_otherwise_2 = _jspx_th_c_otherwise_2.doStartTag();
    if (_jspx_eval_c_otherwise_2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                        <label class=\"radio-container m-r-45\">Male\n");
        out.write("                                            <input type=\"radio\" name=\"gender\" value=\"male\" >\n");
        out.write("\n");
        out.write("                                            <span class=\"checkmark\"></span>\n");
        out.write("                                        </label>\n");
        out.write("                                        <label class=\"radio-container\">Female\n");
        out.write("                                            <input type=\"radio\" name=\"gender\" value=\"female\" checked=\"checked\" >\n");
        out.write("                                            <span class=\"checkmark\"></span>\n");
        out.write("                                        </label>\n");
        out.write("                                    ");
        int evalDoAfterBody = _jspx_th_c_otherwise_2.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_otherwise_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_otherwise.reuse(_jspx_th_c_otherwise_2);
      return true;
    }
    _jspx_tagPool_c_otherwise.reuse(_jspx_th_c_otherwise_2);
    return false;
  }
}
