<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
 <title>Luma - Webflow Ecommerce website template</title>
  <meta content="A sleek, modern (and free) retail template that will keep the attention on your products. Take full control of the colors, web fonts, images, and other styles that make your brand shine." name="description">
  <meta content="Luma - Webflow Ecommerce website template" property="og:title">
  <meta content="A sleek, modern (and free) retail template that will keep the attention on your products. Take full control of the colors, web fonts, images, and other styles that make your brand shine." property="og:description">
  <meta content="https://uploads-ssl.webflow.com/5d9d08afa8a650dd43830c03/5db6e65183d31e01125ee94b_grit-og.png" property="og:image">
  <meta content="Luma - Webflow Ecommerce website template" property="twitter:title">
  <meta content="A sleek, modern (and free) retail template that will keep the attention on your products. Take full control of the colors, web fonts, images, and other styles that make your brand shine." property="twitter:description">
  <meta content="https://uploads-ssl.webflow.com/5d9d08afa8a650dd43830c03/5db6e65183d31e01125ee94b_grit-og.png" property="twitter:image">
  <meta property="og:type" content="website">
  <meta content="summary_large_image" name="twitter:card">
  <meta content="width=device-width, initial-scale=1" name="viewport">
  <meta content="Webflow" name="generator">
  <link href="css/normalize.css" rel="stylesheet" type="text/css">
  <link href="css/webflow.css" rel="stylesheet" type="text/css">
  <link href="css/seolsongs-stellar-project.webflow.css" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.26/webfont.js" type="text/javascript"></script>
  <script type="text/javascript">WebFont.load({  google: {    families: ["Work Sans:100,200,300,regular,500,600,700,800,900"]  }});</script>
  <!-- [if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js" type="text/javascript"></script><![endif] -->
  <script type="text/javascript">!function(o,c){var n=c.documentElement,t=" w-mod-";n.className+=t+"js",("ontouchstart"in o||o.DocumentTouch&&c instanceof DocumentTouch)&&(n.className+=t+"touch")}(window,document);</script>
  <link href="images/favicon.png" rel="shortcut icon" type="image/x-icon">
  <link href="images/webclip.png" rel="apple-touch-icon">
<title>Insert title here</title>
</head>
<body>
  <a id="notification" data-w-id="fc560965-213c-5f5a-18ab-3a6cb5c55beb" href="https://webflow.com/website/Prospero-Ecommerce-UI-Kit" target="_blank" class="notification-link-wrap w-inline-block">
    <div class="top-notification">
      <div class="section">
        <div class="w-layout-grid other4-grid">
          <div id="w-node-fc560965-213c-5f5a-18ab-3a6cb5c55bef-b5c55beb" class="notification-content">
            <div class="other4-text">This template was built with Webflow&#x27;s free Prospero UI Kit. Learn more</div><img src="images/Arrow2x.svg" alt="" class="button-arrow">
          </div>
        </div>
      </div>
    </div>
  </a>
  <div data-collapse="medium" data-animation="default" data-duration="400" data-no-scroll="1" role="banner" class="navbar1 active-nav1 w-nav">
    <div class="nav1-wrap">
      <a href="#" id="w-node-_8bdc9590-22a2-e972-4daa-ca5062e76206-62e76204" class="brand w-nav-brand"><img src="images/LUMA.svg" alt=""></a>
      <div id="w-node-_8bdc9590-22a2-e972-4daa-ca5062e76209-62e76204" class="nav1-menu-wrap">
        <nav role="navigation" class="nav1-menu w-nav-menu">
          <a href="index.html" class="nav-link w-nav-link">Home</a>
          <a href="all-products.html" class="nav-link w-nav-link">Our Products</a>
          <a href="about.html" aria-current="page" class="nav-link w-nav-link w--current">About</a>
          <a href="contact.html" class="nav-link w-nav-link">Contact</a>
          <a href="blog.html" class="nav-link w-nav-link">Blog</a>
          <a href="help/styleguide.html" class="nav-link w-nav-link">Styleguide</a>
          <a href="help/license.html" class="nav-link w-nav-link">License</a>
        </nav>
        <div data-node-type="commerce-cart-wrapper" data-open-product="" data-wf-cart-type="rightSidebar" data-wf-cart-query="" data-wf-page-link-href-prefix="" class="w-commerce-commercecartwrapper cart">
          <a href="#" data-node-type="commerce-cart-open-link" class="w-commerce-commercecartopenlink cart-button w-inline-block"><img src="images/Cart-Icon2x_1Cart-Icon2x.png" width="16" alt="">
            <div class="w-commerce-commercecartopenlinkcount cart-quantity">0</div>
          </a>
          <div data-node-type="commerce-cart-container-wrapper" style="display:none" class="w-commerce-commercecartcontainerwrapper w-commerce-commercecartcontainerwrapper--cartType-rightSidebar cart-wrap">
            <div data-node-type="commerce-cart-container" class="w-commerce-commercecartcontainer cart-container">
              <div class="w-commerce-commercecartheader cart-header">
                <h4 class="w-commerce-commercecartheading cart-heading">Your Cart</h4>
                <a href="#" data-node-type="commerce-cart-close-link" class="w-commerce-commercecartcloselink close-button w-inline-block"><img src="images/CloseCart2x_1CloseCart2x.png" width="11" alt="" class="cart-close-icon"></a>
              </div>
              <div class="w-commerce-commercecartformwrapper">
                <form data-node-type="commerce-cart-form" style="display:none" class="w-commerce-commercecartform">
                  <script type="text/x-wf-template" id="wf-template-8bdc9590-22a2-e972-4daa-ca5062e76226"></script>
                  <div class="w-commerce-commercecartlist cart-list" data-wf-collection="database.commerceOrder.userItems" data-wf-template-id="wf-template-8bdc9590-22a2-e972-4daa-ca5062e76226"></div>
                  <div class="w-commerce-commercecartfooter cart-footer">
                    <div class="w-commerce-commercecartlineitem cart-line-item">
                      <div class="size5-text">Subtotal</div>
                      <div class="w-commerce-commercecartordervalue size6-text"></div>
                    </div>
                    <div>
                      <div data-node-type="commerce-cart-quick-checkout-actions">
                        <a data-node-type="commerce-cart-apple-pay-button" style="background-image:-webkit-named-image(apple-pay-logo-white);background-size:100% 50%;background-position:50% 50%;background-repeat:no-repeat" class="w-commerce-commercecartapplepaybutton web-payment-button">
                          <div></div>
                        </a>
                        <a data-node-type="commerce-cart-quick-checkout-button" style="display:none" class="w-commerce-commercecartquickcheckoutbutton"><svg class="w-commerce-commercequickcheckoutgoogleicon" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewbox="0 0 16 16">
                            <defs>
                              <polygon id="google-mark-a" points="0 .329 3.494 .329 3.494 7.649 0 7.649"></polygon>
                              <polygon id="google-mark-c" points=".894 0 13.169 0 13.169 6.443 .894 6.443"></polygon>
                            </defs>
                            <g fill="none" fill-rule="evenodd">
                              <path fill="#4285F4" d="M10.5967,12.0469 L10.5967,14.0649 L13.1167,14.0649 C14.6047,12.6759 15.4577,10.6209 15.4577,8.1779 C15.4577,7.6339 15.4137,7.0889 15.3257,6.5559 L7.8887,6.5559 L7.8887,9.6329 L12.1507,9.6329 C11.9767,10.6119 11.4147,11.4899 10.5967,12.0469"></path>
                              <path fill="#34A853" d="M7.8887,16 C10.0137,16 11.8107,15.289 13.1147,14.067 C13.1147,14.066 13.1157,14.065 13.1167,14.064 L10.5967,12.047 C10.5877,12.053 10.5807,12.061 10.5727,12.067 C9.8607,12.556 8.9507,12.833 7.8887,12.833 C5.8577,12.833 4.1387,11.457 3.4937,9.605 L0.8747,9.605 L0.8747,11.648 C2.2197,14.319 4.9287,16 7.8887,16"></path>
                              <g transform="translate(0 4)">
                                <mask id="google-mark-b" fill="#fff">
                                  <use xlink:href="#google-mark-a"></use>
                                </mask>
                                <path fill="#FBBC04" d="M3.4639,5.5337 C3.1369,4.5477 3.1359,3.4727 3.4609,2.4757 L3.4639,2.4777 C3.4679,2.4657 3.4749,2.4547 3.4789,2.4427 L3.4939,0.3287 L0.8939,0.3287 C0.8799,0.3577 0.8599,0.3827 0.8459,0.4117 C-0.2821,2.6667 -0.2821,5.3337 0.8459,7.5887 L0.8459,7.5997 C0.8549,7.6167 0.8659,7.6317 0.8749,7.6487 L3.4939,5.6057 C3.4849,5.5807 3.4729,5.5587 3.4639,5.5337" mask="url(#google-mark-b)"></path>
                              </g>
                              <mask id="google-mark-d" fill="#fff">
                                <use xlink:href="#google-mark-c"></use>
                              </mask>
                              <path fill="#EA4335" d="M0.894,4.3291 L3.478,6.4431 C4.113,4.5611 5.843,3.1671 7.889,3.1671 C9.018,3.1451 10.102,3.5781 10.912,4.3671 L13.169,2.0781 C11.733,0.7231 9.85,-0.0219 7.889,0.0001 C4.941,0.0001 2.245,1.6791 0.894,4.3291" mask="url(#google-mark-d)"></path>
                            </g>
                          </svg><svg class="w-commerce-commercequickcheckoutmicrosofticon" xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewbox="0 0 16 16">
                            <g fill="none" fill-rule="evenodd">
                              <polygon fill="#F05022" points="7 7 1 7 1 1 7 1"></polygon>
                              <polygon fill="#7DB902" points="15 7 9 7 9 1 15 1"></polygon>
                              <polygon fill="#00A4EE" points="7 15 1 15 1 9 7 9"></polygon>
                              <polygon fill="#FFB700" points="15 15 9 15 9 9 15 9"></polygon>
                            </g>
                          </svg>
                          <div>Pay with browser.</div>
                        </a>
                      </div>
                      <div style="position:relative" data-wf-paypal-button="{&quot;layout&quot;:&quot;horizontal&quot;,&quot;color&quot;:&quot;black&quot;,&quot;shape&quot;:&quot;rect&quot;,&quot;label&quot;:&quot;paypal&quot;,&quot;tagline&quot;:false,&quot;note&quot;:false}" class="paypal">
                        <div style="position:absolute;top:0;left:0;width:100%;height:100%;opacity:0;z-index:999;cursor:auto"></div>
                      </div>
                      <a href="checkout.html" value="Continue to Checkout" data-node-type="cart-checkout-button" class="w-commerce-commercecartcheckoutbutton button-small white-small" data-loading-text="Hang Tight...">Continue to Checkout</a>
                    </div>
                  </div>
                </form>
                <div class="w-commerce-commercecartemptystate empty-state dark-cart-empty-state">
                  <div>No items found.</div>
                  <div class="keep-shopping-button-wrap">
                    <a data-w-id="7fd4a83d-fa61-1e98-2570-9f9b65c13f7e" href="all-products.html" class="button-small white-small w-inline-block">
                      <div class="button-label">Keep Shopping</div><img src="images/arrow-dark2x.svg" alt="" class="button-arrow">
                    </a>
                  </div>
                </div>
                <div style="display:none" data-node-type="commerce-cart-error" class="w-commerce-commercecarterrorstate error-message">
                  <div class="w-cart-error-msg" data-w-cart-quantity-error="Product is not available in this quantity." data-w-cart-checkout-error="Checkout is disabled on this site." data-w-cart-general-error="Something went wrong when adding this item to the cart." data-w-cart-cart_order_min-error="Cart failed.">Product is not available in this quantity.</div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="menu-button w-nav-button"><img src="images/Menu-Icon_1Menu-Icon.png" width="20" alt="" class="menu-icon"></div>
      </div>
    </div>
  </div>
  <div class="wrapper m100">
    <div class="section">
      <div class="w-layout-grid content6-grid">
        <div id="w-node-f6962625-c7d0-9865-aca6-7c0094a6f1d0-e23fd67b" class="content6-headline-grid">
          <div id="w-node-f6962625-c7d0-9865-aca6-7c0094a6f1d1-e23fd67b" class="content6-headline-wrap">
            <div class="text-label">Stylish modern lighting options</div>
            <div class="size1-text">Thoughtfully curated modern lighting fixtures</div>
            <p class="paragraph-70">Create inspiring, beautifully illuminated rooms. Review our wide selection of stylish contemporary lamps for living room, bedroom, bath and kitchen—and get enlightened about modern design.</p>
          </div>
        </div>
        <div id="w-node-f6962625-c7d0-9865-aca6-7c0094a6f1da-e23fd67b" class="content6-image1"></div>
        <div id="w-node-f6962625-c7d0-9865-aca6-7c0094a6f1db-e23fd67b" class="content6-image2"></div>
        <div id="w-node-f6962625-c7d0-9865-aca6-7c0094a6f1dc-e23fd67b" class="content6-image3"></div>
      </div>
    </div>
  </div>
  <div class="wrapper m20">
    <div class="section">
      <div class="w-layout-grid content16-grid">
        <div id="w-node-_15579270-7173-ae0f-f9a7-7d9d44b340ab-e23fd67b" class="content16-left-column">
          <div class="content16-headline-wrap">
            <div class="text-label">Let there be light</div>
            <div class="size1-text">Stylish modern lighting options<br></div>
            <p class="paragraph-70">The living room is easily the hardest working room in the house, as its entire purpose to serve multiple key functions all in one shared space. The goal is to make everyday living just a little easier, and to make a communal space a little more enticing.</p>
          </div>
          <a data-w-id="15579270-7173-ae0f-f9a7-7d9d44b340b6" href="all-products.html" class="button-small w-inline-block">
            <div class="button-label">Shop Lighting</div><img src="images/Arrow2x.svg" alt="" class="button-arrow">
          </a>
        </div>
        <p id="w-node-_15579270-7173-ae0f-f9a7-7d9d44b340ba-e23fd67b" class="paragraph-70">Lighting does not just illuminate your home. It actually creates an ambiance and functions like any other piece of decor. Simply put, the fixture you choose can make or break your space.<br><br>Pablo’s designs have been propelled to the forefront of American contemporary lighting by an uncompromising devotion to simplicity and utility. By fusing the highest technical sensibilities with the most appropriate material palette, Pablo is able to create unique, timeless designs with the power to transform any environment.<br><br>Looking for a way to make your outdoor and indoor spaces shine this summer? From ceilings draped in LED lights to shimmering outdoor patios, here are eight illuminating ways to dress up your home with lighting.<br><br>If you’ve ever rented or bought a house, you know that lighting can make or break an entire space. From dingy overhead lighting to fluorescent bathroom lights, the wrong lighting can be the difference between a good mood and a bad day.</p>
      </div>
    </div>
  </div>
  <div class="wrapper m100-50">
    <div class="section">
      <div class="w-layout-grid content17-grid">
        <div id="w-node-f3496c2c-8ee9-32b0-6803-75773ca743f3-e23fd67b" class="content17-headline-wrap">
          <div class="text-label">People Behind the Lights</div>
          <div class="size3-text">Meet our team<br></div>
        </div>
        <div id="w-node-f3496c2c-8ee9-32b0-6803-75773ca743f9-e23fd67b">
          <div class="content17-author-pic content17-image1"></div>
          <div class="text-label">Designer</div>
          <div class="size4-text">Calvin Holmes<br></div>
          <p class="paragraph-70">The multidisciplinary designer specializes in furniture for the contract, hospitality and residential markets, as well as lighting, packaging.<br></p>
        </div>
        <div id="w-node-f3496c2c-8ee9-32b0-6803-75773ca74403-e23fd67b">
          <div class="content17-author-pic content17-image2"></div>
          <div class="text-label">Store Manager</div>
          <div class="size4-text">Ellen Webb<br></div>
          <p class="paragraph-70">Based in Amsterdam and Milan, Webb’s creative process begins with materiality and an empirical approach that is highly experimental.<br></p>
        </div>
        <div id="w-node-f3496c2c-8ee9-32b0-6803-75773ca7440d-e23fd67b">
          <div class="content17-author-pic content17-image3"></div>
          <div class="text-label">Designer</div>
          <div class="size4-text">Ivan Daniel<br></div>
          <p class="paragraph-70">Interested in how the pragmatism of the traditional craftsman can create new design, he focuses on simplicity to spur technical innovations.<br></p>
        </div>
        <div id="w-node-f3496c2c-8ee9-32b0-6803-75773ca74417-e23fd67b">
          <div class="content17-author-pic content17-image4"></div>
          <div class="text-label">Store Manager</div>
          <div class="size4-text">Daisy Bradley<br></div>
          <p class="paragraph-70">Born in Venezuela, Daisy is a prolific designer with over twenty years of experience creating products for the transportation and consumer electronics.<br></p>
        </div>
        <div id="w-node-f3496c2c-8ee9-32b0-6803-75773ca74421-e23fd67b">
          <div class="content17-author-pic content17-image5"></div>
          <div class="text-label">Blog Writer</div>
          <div class="size4-text">Elmer Walton<br></div>
          <p class="paragraph-70">Interested in how the pragmatism of the traditional craftsman can create new design, he focuses on simplicity to spur technical innovations.<br></p>
        </div>
        <div id="w-node-f3496c2c-8ee9-32b0-6803-75773ca7442b-e23fd67b">
          <div class="content17-author-pic content17-image6"></div>
          <div class="text-label">Marketing</div>
          <div class="size4-text">Ronnie Kelly<br></div>
          <p class="paragraph-70">Born in Portugal, Kelly is a prolific designer with over twenty years of experience creating products for the transportation and consumer electronics.<br></p>
        </div>
        <div id="w-node-f3496c2c-8ee9-32b0-6803-75773ca74435-e23fd67b">
          <div class="content17-author-pic content17-image7"></div>
          <div class="text-label">Marketing</div>
          <div class="size4-text">Bettie Walker<br></div>
          <p class="paragraph-70">The multidisciplinary designer specializes in furniture for the contract, hospitality and residential markets, as well as lighting, packaging.<br></p>
        </div>
        <div id="w-node-f3496c2c-8ee9-32b0-6803-75773ca7443f-e23fd67b">
          <div class="content17-author-pic content17-image8"></div>
          <div class="text-label">Designer</div>
          <div class="size4-text">Francis Cobb<br></div>
          <p class="paragraph-70">Based in Amsterdam and Milan, Cobb’s creative process begins with materiality and an empirical approach that is highly experimental.<br></p>
        </div>
      </div>
    </div>
  </div>
  <div class="wrapper m100">
    <div class="section">
      <div class="w-layout-grid content24-grid">
        <div id="w-node-_0f83eee3-60fc-0871-9a6e-757004d21f8a-e23fd67b" class="content24-quote">&quot;Bel Occhio is a study in weightlessness and transparency,” notes designer Pablo Pardo on his inspiration for this luminaire.&quot;</div>
        <div id="w-node-_0f83eee3-60fc-0871-9a6e-757004d21f8c-e23fd67b" class="content24-image"></div>
        <div id="w-node-_0f83eee3-60fc-0871-9a6e-757004d21f8d-e23fd67b">
          <div class="content24-item-wrap">
            <div class="deco-dot"></div>
            <div>
              <div class="text-label">Transformative Light</div>
              <p class="paragraph-70">Provides both focused and ambient illumination.<br></p>
            </div>
          </div>
          <div class="content24-item-wrap">
            <div class="deco-dot"></div>
            <div>
              <div class="text-label">Two-In-One<br></div>
              <p class="paragraph-70">Designed for pendant and tabletop applications.<br></p>
            </div>
          </div>
          <div class="content24-item-wrap">
            <div class="deco-dot"></div>
            <div>
              <div class="text-label">Light Anywhere You Want It<br></div>
              <p class="paragraph-70">Infinite adjustment with the touch of a hand.<br></p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="wrapper">
    <div class="footer1">
      <div class="section">
        <div class="w-layout-grid footer1-grid"><img src="images/Luma-Logo.svg" id="w-node-ad9fe897-5290-7c85-17ea-ecb6e10ff8ce-c739f7eb" alt="" class="image">
          <div id="w-node-_2d8a3600-59cf-08d2-fe17-bd16c739f7f1-c739f7eb" class="footer1-links-wrap">
            <div class="size6-text">Pages</div>
            <a href="index.html" class="footer1-link">Homepage</a>
            <a href="home-2.html" class="footer1-link">Homepage 2</a>
            <a href="blog.html" class="footer1-link">Blog</a>
            <a href="all-products.html" class="footer1-link">All Products</a>
          </div>
          <div id="w-node-_2d8a3600-59cf-08d2-fe17-bd16c739f7fa-c739f7eb" class="footer1-links-wrap">
            <div class="size6-text">Subpages</div>
            <a href="about.html" aria-current="page" class="footer1-link w--current">About</a>
            <a href="about-2.html" class="footer1-link">About 2</a>
            <a href="contact.html" class="footer1-link">Contact</a>
            <a href="contact-2.html" class="footer1-link">Contact 2</a>
          </div>
          <div id="w-node-_2d8a3600-59cf-08d2-fe17-bd16c739f805-c739f7eb" class="footer1-links-wrap">
            <div class="size6-text">Additional</div>
            <a href="promo-page.html" class="footer1-link">Promo Page (Uma)</a>
            <a href="help/styleguide.html" class="footer1-link">Styleguide</a>
            <a href="help/license.html" class="footer1-link">License</a>
          </div>
          <div id="w-node-_2d8a3600-59cf-08d2-fe17-bd16c739f80e-c739f7eb" class="footer1-links-wrap">
            <div class="size6-text">Social Networks</div>
            <a href="#" class="footer1-link">Instagram</a>
            <a href="#" class="footer1-link">Twitter</a>
            <a href="#" class="footer1-link">Facebook</a>
            <a href="#" class="footer1-link">Youtube</a>
          </div>
        </div>
      </div>
    </div>
    <div class="section">
      <div class="w-layout-grid footer1-bottom-grid">
        <div id="w-node-_2d8a3600-59cf-08d2-fe17-bd16c739f81b-c739f7eb">
          <a href="http://pablodesigns.com" target="_blank" class="footer1-bottom-link">The images featured in this kit are by Pablo Designs. They are not available for repurposing in any way.</a>
        </div>
        <div id="w-node-_2d8a3600-59cf-08d2-fe17-bd16c739f81e-c739f7eb">
          <a href="https://webflow.com" target="_blank" class="footer1-bottom-link">Powered by Webflow</a>
        </div>
      </div>
    </div>
  </div>
  <script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=60a70edda9bb0658e03fd5e8" type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
  <script src="js/webflow.js" type="text/javascript"></script>
  <!-- [if lte IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/placeholders/3.0.2/placeholders.min.js"></script><![endif] -->
</body>
</html>