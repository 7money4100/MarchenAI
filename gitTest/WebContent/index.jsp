<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Luma - Webflow Ecommerce website template</title>
  <meta content="A sleek, modern (and free) retail template that will keep the attention on your products. Take full control of the colors, web fonts, images, and other styles that make your brand shine." name="description">
  <meta content="Luma - Webflow Ecommerce website template" property="og:title">
  <meta content="A sleek, modern (and free) retail template that will keep the attention on your products. Take full control of the colors, web fonts, images, and other styles that make your brand shine." property="og:description">
  <meta content="https://uploads-ssl.webflow.com/5d9c8fcaca1c6c013b521b95/5dc23e129dcd8e59a2a18652_luma-og.jpg" property="og:image">
  <meta content="Luma - Webflow Ecommerce website template" property="twitter:title">
  <meta content="A sleek, modern (and free) retail template that will keep the attention on your products. Take full control of the colors, web fonts, images, and other styles that make your brand shine." property="twitter:description">
  <meta content="https://uploads-ssl.webflow.com/5d9c8fcaca1c6c013b521b95/5dc23e129dcd8e59a2a18652_luma-og.jpg" property="twitter:image">
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
          <a href="index.jsp" aria-current="page" class="nav-link w-nav-link w--current">Home</a>
          <a href="all-products.jsp" class="nav-link w-nav-link">Our Products</a>
          <a href="about.jsp" class="nav-link w-nav-link">About</a>
          <a href="contact.jsp" class="nav-link w-nav-link">Contact</a>
          <a href="blog.jsp" class="nav-link w-nav-link">Blog</a>
          <a href="help/styleguide.jsp" class="nav-link w-nav-link">Styleguide</a>
          <a href="help/license.jsp" class="nav-link w-nav-link">License</a>
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
                      <a href="checkout.jsp" value="Continue to Checkout" data-node-type="cart-checkout-button" class="w-commerce-commercecartcheckoutbutton button-small white-small" data-loading-text="Hang Tight...">Continue to Checkout</a>
                    </div>
                  </div>
                </form>
                <div class="w-commerce-commercecartemptystate empty-state dark-cart-empty-state">
                  <div>No items found.</div>
                  <div class="keep-shopping-button-wrap">
                    <a data-w-id="7fd4a83d-fa61-1e98-2570-9f9b65c13f7e" href="all-products.jsp" class="button-small white-small w-inline-block">
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
  <div class="hero6">
    <div class="section">
      <div class="w-layout-grid hero6-grid">
        <div id="w-node-_8d359ace-8c76-7ccb-ca22-b4580e2811e3-f93fd5eb" class="hero6-content">
          <div class="hero6-text">
            <div class="sizejumbo-text sizejumbo-full-clear">Stylish modern<br>lighting options</div>
          </div>
          <a data-w-id="8d359ace-8c76-7ccb-ca22-b4580e2811e7" href="all-products.jsp" class="button-small white-small w-inline-block">
            <div class="button-label">Shop the Fall Collection</div><img src="images/arrow-dark2x.svg" alt="" class="button-arrow">
          </a>
        </div>
      </div>
    </div>
  </div>
  <div class="wrapper m50-100">
    <div class="section">
      <div class="w-layout-grid content28-grid">
        <div id="w-node-_4b946e88-956b-47dd-4e9b-2a9b44405de5-f93fd5eb"><img src="images/sony-corporation-vector-logo.svg" alt="" class="content28-logo"></div>
        <div id="w-node-_4b946e88-956b-47dd-4e9b-2a9b44405de7-f93fd5eb"><img src="images/webflow-logo-black.svg" width="125" alt="" class="content28-logo"></div>
        <div id="w-node-_4b946e88-956b-47dd-4e9b-2a9b44405de9-f93fd5eb"><img src="images/samsung-group-vector-logo.svg" alt="" class="content28-logo"></div>
        <div id="w-node-_4b946e88-956b-47dd-4e9b-2a9b44405deb-f93fd5eb"><img src="images/new-logitech-logo-2015.svg" width="125" alt="" class="content28-logo"></div>
        <div id="w-node-_4b946e88-956b-47dd-4e9b-2a9b44405ded-f93fd5eb"><img src="images/new-lenovo-logo.svg" alt="" class="content28-logo"></div>
        <div id="w-node-_4b946e88-956b-47dd-4e9b-2a9b44405def-f93fd5eb"><img src="images/waitrose-logo.svg" width="125" alt="" class="content28-logo"></div>
      </div>
    </div>
  </div>
  <div class="wrapper m0-50">
    <div class="section">
      <div class="w-layout-grid content4-grid">
        <div id="w-node-f6400198-598d-45a5-8566-ba775fd5c823-f93fd5eb" class="content4-headline-wrap">
          <div class="size1-text size1-top-clear">The right light can transform any environment<a href="https://prospero-uikit.webflow.io/2-content#"><strong><br></strong></a>
          </div>
        </div>
        <div id="w-node-c8f6c98c-6ace-1ad4-6628-01bbe9b8c605-f93fd5eb" class="w-dyn-list">
          <div role="list" class="w-dyn-items">
            <div role="listitem" class="w-dyn-item">
              <div class="image-wrap">
                <a data-w-id="f6400198-598d-45a5-8566-ba775fd5c829" style="opacity:0" href="#" class="item-overlay w-inline-block">
                  <div class="button-small white-small">
                    <div>View Product</div>
                  </div>
                </a>
                <div class="content4-image"></div>
              </div>
            </div>
          </div>
          <div class="empty-state w-dyn-empty">
            <div>No items found.</div>
          </div>
        </div>
        <div id="w-node-_6894429a-0707-42e5-5a29-c9e5a8f54421-f93fd5eb" class="w-dyn-list">
          <div role="list" class="w-dyn-items">
            <div role="listitem" class="w-dyn-item">
              <div class="image-wrap">
                <a data-w-id="f6400198-598d-45a5-8566-ba775fd5c82f" style="opacity:0" href="#" class="item-overlay w-inline-block">
                  <div class="button-small white-small">
                    <div>View Product</div>
                  </div>
                </a>
                <div class="content4-image2"></div>
              </div>
            </div>
          </div>
          <div class="empty-state w-dyn-empty">
            <div>No items found.</div>
          </div>
        </div>
        <div id="w-node-f6400198-598d-45a5-8566-ba775fd5c834-f93fd5eb" class="content4-product-name-wrap">
          <div class="size4-text size4-top-clear">Meet the Belmont, by Pablo Designs<br></div>
        </div>
        <div id="w-node-f6400198-598d-45a5-8566-ba775fd5c837-f93fd5eb" class="content4-product-description-wrap">
          <p class="paragraph-70">By fusing the highest technical sensibilities with the most appropriate material palette, Pablo is able to create unique, timeless designs with the power to transform any environment.<a href="https://prospero-uikit.webflow.io/2-content#"><strong><br></strong></a>
          </p>
        </div>
        <div id="w-node-f6400198-598d-45a5-8566-ba775fd5c83a-f93fd5eb" class="content4-button-wrap">
          <a data-w-id="f6400198-598d-45a5-8566-ba775fd5c83b" href="all-products.jsp" class="button-large outline-button-large w-inline-block">
            <div>Discover More Products</div><img src="images/arrow-dark2x.svg" alt="" class="button-arrow">
          </a>
        </div>
      </div>
    </div>
  </div>
  <div class="wrapper m50">
    <div class="section">
      <div class="w-layout-grid headline-grid">
        <div id="w-node-ef7261df-8462-f5ef-5504-5680af4d03bb-f93fd5eb">
          <div class="text-label">Shop Lighting</div>
          <div class="size3-text size3-bottom-clear">Stylish modern lighting options</div>
        </div>
      </div>
    </div>
  </div>
  <div class="wrapper m50">
    <div class="section">
      <div class="w-dyn-list">
        <div role="list" class="product4-grid w-dyn-items">
          <div id="w-node-_0e70cc12-6bae-879c-6920-01f3abdf3923-f93fd5eb" role="listitem" class="w-dyn-item">
            <div class="image-wrap">
              <a data-w-id="0e70cc12-6bae-879c-6920-01f3abdf3925" style="opacity:0" href="#" class="item-overlay w-inline-block">
                <div class="button-small white-small">
                  <div>View Product</div>
                </div>
              </a>
              <div class="product-image product-image-size-m">
                <div class="label inside-label">Featured</div>
                <div class="label black-label sale-label">On Sale</div>
              </div>
            </div>
            <div class="product4-content-wrap">
              <a href="#" class="size6-link"></a>
              <div class="size4-text"></div>
            </div>
          </div>
        </div>
        <div class="empty-state w-dyn-empty">
          <div>No items found.</div>
        </div>
      </div>
    </div>
  </div>
  <div class="section">
    <div class="content">
      <a data-w-id="b25b777e-97cb-7f36-0061-514a82f1e76d" href="all-products.jsp" class="button-small w-inline-block">
        <div class="button-label">View All Products</div><img src="images/Arrow2x.svg" alt="" class="button-arrow">
      </a>
    </div>
  </div>
  <div class="wrapper m100">
    <div class="home1-deco-part"></div>
  </div>
  <div class="wrapper m0-100">
    <div class="section">
      <div class="w-layout-grid content8-grid">
        <div id="w-node-fce87cd5-4514-98ca-69f2-cf6ee0fa5c23-f93fd5eb" class="content8-image"></div>
        <div id="w-node-fce87cd5-4514-98ca-69f2-cf6ee0fa5c24-f93fd5eb" class="content8-content-wrap">
          <div class="content8-quote-wrap">
            <div class="label">What they say</div>
            <div class="size1-text">¡°We¡¯ve been long fans of the modern, yet inviting lighting that Pablo Designs has to offer.¡±<a href="https://prospero-uikit.webflow.io/2-content#"><strong><br></strong></a>
            </div>
          </div>
          <a data-w-id="fce87cd5-4514-98ca-69f2-cf6ee0fa5c2a" href="all-products.jsp" class="button-large w-inline-block">
            <div>SHOP THE FALL COLLECTION</div><img src="images/Arrow2x.svg" alt="" class="button-arrow">
          </a>
        </div>
        <div class="content8-grey-background"></div>
      </div>
    </div>
  </div>
  <div class="wrapper m0-100">
    <div class="section">
      <div class="w-layout-grid blog2-grid">
        <div id="w-node-_43846aa1-e6a0-f910-4af7-9f4d80a25968-f93fd5eb" class="blog2-headline-wrap">
          <div class="text-label">OUR ARTICLES<br></div>
          <div class="size3-text">Genius Blog Posts about the Use of Lighting in Your Home<br></div>
        </div>
        <div id="w-node-_43846aa1-e6a0-f910-4af7-9f4d80a2596e-f93fd5eb" class="w-dyn-list">
          <div role="list" class="w-dyn-items">
            <div role="listitem" class="w-dyn-item">
              <div>
                <div class="blog2-image-wrap">
                  <div class="label inside-label"></div>
                  <a href="#" class="blog2-image w-inline-block"></a>
                </div>
                <a href="#" class="size4-link"></a>
                <div class="blog2-button-wrap">
                  <a data-w-id="43846aa1-e6a0-f910-4af7-9f4d80a25977" href="#" class="button-text w-inline-block">
                    <div class="button-label">Explore Article</div><img src="images/arrow-dark2x.svg" alt="" class="button-arrow">
                  </a>
                </div>
              </div>
            </div>
          </div>
          <div class="w-dyn-empty">
            <div>No items found.</div>
          </div>
        </div>
        <div id="w-node-_43846aa1-e6a0-f910-4af7-9f4d80a2597e-f93fd5eb" class="w-dyn-list">
          <div role="list" class="grid w-dyn-items">
            <div id="w-node-_43846aa1-e6a0-f910-4af7-9f4d80a25980-f93fd5eb" role="listitem" class="w-dyn-item">
              <div>
                <div class="blog2-image-wrap">
                  <div class="label inside-label"></div>
                  <a href="#" class="blog2-image w-inline-block"></a>
                </div>
                <a href="#" class="size4-link"></a>
                <div class="blog2-button-wrap">
                  <a data-w-id="43846aa1-e6a0-f910-4af7-9f4d80a25987" href="#" class="button-text w-inline-block">
                    <div class="button-label">Explore Article</div><img src="images/arrow-dark2x.svg" alt="" class="button-arrow">
                  </a>
                </div>
              </div>
            </div>
          </div>
          <div class="w-dyn-empty">
            <div>No items found.</div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="wrapper m0-100">
    <div class="section"></div>
    <div class="content35-pictures-feed">
      <a href="#" class="content35-feed-image content35-image1 w-inline-block"></a>
      <a href="#" class="content35-feed-image content35-image2 w-inline-block"></a>
      <a href="#" class="content35-feed-image content35-image3 w-inline-block"></a>
      <a href="#" class="content35-feed-image content35-image4 w-inline-block"></a>
      <a href="#" class="content35-feed-image content35-image5 w-inline-block"></a>
      <a href="#" class="content35-feed-image content35-image6 w-inline-block"></a>
    </div>
    <div class="section">
      <div class="content35-bottom-grid">
        <div id="w-node-_4b9f8748-12ad-adad-8c0b-e11cc1999cfb-f93fd5eb">
          <div class="size5-text">Free Shipping</div>
          <div class="content35-item-label">within USA</div>
        </div>
        <div id="w-node-_4b9f8748-12ad-adad-8c0b-e11cc1999d00-f93fd5eb">
          <div class="size5-text">Easy Returns</div>
          <div class="content35-item-label">within 7 days</div>
        </div>
        <div id="w-node-_4b9f8748-12ad-adad-8c0b-e11cc1999d05-f93fd5eb">
          <div class="size5-text">1 year Warranty</div>
          <div class="content35-item-label">ON ALL LAMPS<br></div>
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
            <a href="index.jsp" aria-current="page" class="footer1-link w--current">Homepage</a>
            <a href="home-2.jsp" class="footer1-link">Homepage 2</a>
            <a href="blog.jsp" class="footer1-link">Blog</a>
            <a href="all-products.jsp" class="footer1-link">All Products</a>
          </div>
          <div id="w-node-_2d8a3600-59cf-08d2-fe17-bd16c739f7fa-c739f7eb" class="footer1-links-wrap">
            <div class="size6-text">Subpages</div>
            <a href="about.jsp" class="footer1-link">About</a>
            <a href="about-2.jsp" class="footer1-link">About 2</a>
            <a href="contact.jsp" class="footer1-link">Contact</a>
            <a href="contact-2.jsp" class="footer1-link">Contact 2</a>
          </div>
          <div id="w-node-_2d8a3600-59cf-08d2-fe17-bd16c739f805-c739f7eb" class="footer1-links-wrap">
            <div class="size6-text">Additional</div>
            <a href="promo-page.jsp" class="footer1-link">Promo Page (Uma)</a>
            <a href="help/styleguide.jsp" class="footer1-link">Styleguide</a>
            <a href="help/license.jsp" class="footer1-link">License</a>
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