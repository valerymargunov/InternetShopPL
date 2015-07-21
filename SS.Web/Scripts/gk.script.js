/*

#------------------------------------------------------------------------
# myStore - May 2010 (for Joomla 1.5)
#
# Copyright (C) 2007-2010 Gavick.com. All Rights Reserved.
# License: Copyrighted Commercial Software
# Website: http://www.gavick.com
# Support: support@gavick.com   
#------------------------------------------------------------------------ 
# Based on T3 Framework
#------------------------------------------------------------------------
# Copyright (C) 2004-2009 J.O.O.M Solutions Co., Ltd. All Rights Reserved.
# @license - GNU/GPL, http://www.gnu.org/copyleft/gpl.html
# Author: J.O.O.M Solutions Co., Ltd
# Websites: http://www.joomlart.com - http://www.joomlancers.com
#------------------------------------------------------------------------

*/

//Call noconflict if detect jquery
//Apply jquery.noConflict if jquery is enabled



if ($defined(window.jQuery) && $type(jQuery.noConflict)=='function') {
	jQuery.noConflict();
	jQuery.noConflict();
}

function switchFontSize (ckname,val){
	var bd = $E('body');
	switch (val) {
		case 'inc':
			if (CurrentFontSize+1 < 7) {
				bd.removeClass('fs'+CurrentFontSize);
				CurrentFontSize++;
				bd.addClass('fs'+CurrentFontSize);
			}		
		break;
		case 'dec':
			if (CurrentFontSize-1 > 0) {
				bd.removeClass('fs'+CurrentFontSize);
				CurrentFontSize--;
				bd.addClass('fs'+CurrentFontSize);
			}		
		break;
		default:
			bd.removeClass('fs'+CurrentFontSize);
			CurrentFontSize = val;
			bd.addClass('fs'+CurrentFontSize);		
	}
	Cookie.set(ckname, CurrentFontSize,{duration:365});
}

function switchTool (ckname, val) {
	createCookie(ckname, val, 365);
	window.location.reload();
}

function createCookie(name,value,days) {
  if (days) {
    var date = new Date();
    date.setTime(date.getTime()+(days*24*60*60*1000));
    var expires = "; expires="+date.toGMTString();
  }else expires = "";
  document.cookie = name+"="+value+expires+"; path=/";
}

//addEvent - attach a function to an event
function gkAddEvent(obj, evType, fn){ 
 if (obj.addEventListener){ 
   obj.addEventListener(evType, fn, false); 
   return true; 
 } else if (obj.attachEvent){ 
   var r = obj.attachEvent("on"+evType, fn); 
   return r; 
 } else { 
   return false; 
 } 
}

Fx.Opacity = Fx.Style.extend({initialize: function(el, options){this.now = 1;this.parent(el, 'opacity', options);},toggle: function(){return (this.now > 0) ? this.start(1, 0) : this.start(0, 1);},show: function(){return this.set(1);}});

Fx.Width = Fx.Style.extend({initialize: function(el, options){this.element = $(el);this.element.setStyle('overflow', 'hidden');this.iniWidth = this.element.getStyle('width').toInt();this.parent(this.element, 'width', options);},toggle: function(){var style = this.element.getStyle('width').toInt();if (style > 0) return this.start(style, 0);else return this.start(0, this.iniWidth);},show: function(){return this.set(this.iniWidth);}}); 

Fx.Height = Fx.Style.extend({initialize: function(el, options){this.parent(el, 'height', options);this.element.setStyle('overflow', 'hidden');},toggle: function(){return (this.element.offsetHeight > 0) ? this.custom(this.element.offsetHeight, 0) : this.custom(0, this.element.scrollHeight);},show: function(){return this.set(this.element.scrollHeight);}}); 

window.addEvent('load', function() {
	new SmoothScroll(); 
	var login = false;
	var register = false;
	var cart = false;
	var tools = false;
	var login_fx = null;
	var hlogin_fx = null;
	var register_fx = null;
	var hregister_fx = null;
	var cart_fx = null;
	var hcart_fx = null;
	var tools_fx = null;
	var link_login_fx = null;
	var link_reg_fx = null;
	var login_over = false;
	var register_over = false;
	var cart_over = false;

	if($('btn_login')){
		login_fx = new Fx.Opacity($('popup_login'),{duration:300}).set(0);
		hlogin_fx = new Fx.Height($('popup_login'),{duration:300}).set(0);
		
		$('popup_login').setStyle('display','block');
		$('btn_login').addEvent('click', function(e){
			new Event(e).stop();
			if(!login){
				login_fx.start(1);
				hlogin_fx.toggle();
				login = true;	
				$('btn_login').addClass('popup');
				
				$('popup_login').setStyles({
					"left" : $('btn_login').getCoordinates().left + "px",
					"top" : ($('btn_login').getCoordinates().top) + "px"
				});
			}else{
				login_fx.start(0);
				hlogin_fx.start(0);
				login = false;
				$('btn_login').removeClass('popup');
			}

			if(register){
				register_fx.start(0);
				hregister_fx.start(0);
				register = false;
				$('btn_register').removeClass("popup");
			}

			if(cart){
				cart_fx.start(0);
				hcart_fx.start(0);
				cart = false;
				$('btn_cart').removeClass("popup");
			}
		});
		
		$('popup_login').addEvent('mouseenter',function(){login_over = true;});
		$('popup_login').addEvent('mouseleave',function(){login_over = false;});
	}

	if($('btn_register')){
		register_fx = new Fx.Opacity($('popup_register'),{duration:300}).set(0);
		hregister_fx = new Fx.Height($('popup_register'),{duration:300}).set(0);
		$('popup_register').setStyle('display','block');
		$('btn_register').addEvent('click', function(e){
			new Event(e).stop();
			if(!register){
				register_fx.start(1);
				hregister_fx.toggle();
				register = true;	
				$('btn_register').addClass("popup");
				
				$('popup_register').setStyles({
					"left" : $('btn_register').getCoordinates().left + "px",
					"top" : ($('btn_register').getCoordinates().top) + "px"
				});		
			}else{
				register_fx.start(0);
				hregister_fx.start(0);
				register = false;
				$('btn_register').removeClass("popup");
			}

			if(login){
				login_fx.start(0);
				hlogin_fx.start(0);
				login = false;
				$('btn_login').removeClass("popup");
			}

			if(cart){
				cart_fx.start(0);
				hcart_fx.start(0);
				cart = false;
				$('btn_cart').removeClass("popup");
			}
		});	

		$('popup_register').addEvent('mouseenter',function(){register_over = true;});
		$('popup_register').addEvent('mouseleave',function(){register_over = false;});
	}

	if($('btn_cart')){
		cart_fx = new Fx.Opacity($('popup_cart'),{duration:300}).set(0);
		hcart_fx = new Fx.Height($('popup_cart'),{duration:300}).set(0);
		
		$('popup_cart').setStyle('display','block');
		$('btn_cart').addEvent('click', function(e){
			new Event(e).stop();
			if(!cart){
				cart_fx.start(1);
				hcart_fx.toggle();
				cart = true;	
				$('btn_cart').addClass('popup');
				
				$('popup_cart').setStyles({
					"left" : ($('btn_cart').getCoordinates().left - 238) + "px",
					"top" : ($('btn_cart').getCoordinates().top) + "px"
				});
			}else{
				cart_fx.start(0);
				hcart_fx.start(0);
				cart = false;
				$('btn_cart').removeClass('popup');
			}

			if(register){
				register_fx.start(0);
				hregister_fx.start(0);
				register = false;
				$('btn_register').removeClass("popup");
			}
			
			if(login){
				login_fx.start(0);
				hlogin_fx.start(0);
				login = false;
				$('btn_login').removeClass("popup");
			}
		});
		
				
		$('popup_cart').addEvent('mouseenter',function(){cart_over = true;});
		$('popup_cart').addEvent('mouseleave',function(){cart_over = false;});
	}

	if($('btn_tools')){
		var opened = false;
		if($('btn_login')) link_login_fx = new Fx.Opacity($('btn_login'),{duration:300});
		if($('btn_register')) link_reg_fx = new Fx.Opacity($('btn_register'),{duration:300});
		
		$('popup_tools').getParent().setProperty('class','gk_hide').setStyles({
			'display' : 'block'
		});
		$('popup_tools').setStyle('display', 'block');
		tools_fx = new Fx.Width($('popup_tools').getParent(),{duration:300}).set(0);
		$('btn_tools').addEvent('click', function(e){
			new Event(e).stop();
			if(!window.ie) tools_fx.toggle();
			else tools_fx.start((opened) ? 0 : 135);
			if($('btn_login')) link_login_fx.toggle();
			if($('btn_register')) link_reg_fx.toggle();
			opened = !opened;

			if(login){
				login_fx.start(0);
				hlogin_fx.start(0);
				login = false;
				$('btn_login').removeClass("popup");
			}

			if(register){
				register_fx.start(0);
				hregister_fx.start(0);
				register = false;
				$('btn_register').removeClass("popup");
			}

			if(cart){
				cart_fx.start(0);
				hcart_fx.start(0);
				cart = false;
				$('btn_cart').removeClass("popup");
			}
		});	
	}
	//
	if($('gk-cart')) gk_vm_cart_count();
	//
	if($('gk_product_tabs')){
		$$('#gk_product_tabs li').each(function(el, i){
			el.addEvent("click", function(e){
				$$('.gk_product_tab').addClass('gk_unvisible');
				$$('.gk_product_tab')[i].removeClass('gk_unvisible');
				$$('#gk_product_tabs li').setProperty('class', '');
				$$('#gk_product_tabs li')[i].setProperty('class', 'gk_product_tab_active');
			});
		});
	} 
	//
	if($('stylearea')){
		$A($$('.style_switcher')).each(function(element,index){
			element.addEvent('click',function(event){
				var event = new Event(event);
				event.preventDefault();
				changeStyle(index+1);
			});
		});
		new SmoothScroll();
	}
	
	document.body.addEvent("click", function(e){
		if(login && !login_over){
			login_fx.start(0);
			hlogin_fx.start(0);
			login = false;
			$('btn_login').removeClass("popup");
		}
		if(register && !register_over){
			register_fx.start(0);
			hregister_fx.start(0);
			register = false;
			$('btn_register').removeClass("popup");
		}
		if(cart && !cart_over){
			cart_fx.start(0);
			hcart_fx.start(0);
			cart = false;
			$('btn_cart').removeClass("popup");
		}
	});
});

// Function to change styles
function changeStyle(style){
	var file = tmplurl+'/css/style'+style+'.css';
	new Asset.css(file);
	new Cookie.set('gk37_style',style,{duration: 200,path: "/"});
	(function(){if(CufonCheck()) Cufon.refresh();}).delay(500);
}

function CufonCheck(){ return (typeof(Cufon) == "undefined")?  false: true; }

function gk_vm_cart_count(){
	var amount = 0;
	$$('.gk_vm_minicart_product div strong').each(function(el){ amount += el.innerHTML.toInt(); });
	if($E('#gk-items strong')) $E('#gk-items strong').innerHTML = amount;
}

// VM function override
function handleAddToCart( formId, parameters ) {
	formCartAdd = document.getElementById( formId );
	
	var callback = function(responseText) {
		updateMiniCarts();
		// close an existing mooPrompt box first, before attempting to create a new one (thanks wellsie!)
		if (document.boxB) {
			document.boxB.close();
			clearTimeout(timeoutID);
		}

		document.boxB = new MooPrompt(notice_lbl, responseText, {
				buttons: 2,
				width:400,
				height:150,
				overlay: false,
				button1: ok_lbl,
				button2: cart_title,
				onButton2: 	handleGoToCart
			});
			
		setTimeout( 'document.boxB.close()', 3000 );
	}
	
	var opt = {
	    // Use POST
	    method: 'post',
	    // Send this lovely data
	    data: $(formId),
	    // Handle successful response
	    onComplete: callback,
	    
	    evalScripts: true
	}

	new Ajax(formCartAdd.action, opt).request();
	
	(function(){if($('gk-cart')) gk_vm_cart_count();}).delay(3000);
}


// JCaptionCheck
function JCaptionCheck(){ return (typeof(JCaption) == "undefined")?  false: true; }

if(!JCaptionCheck()) {
	var JCaption = new Class({
		initialize: function(selector)
		{
			this.selector = selector;
			var images = $$(selector);
			images.each(function(image){ this.createCaption(image); }, this);
		},

		createCaption: function(element)
		{
			var caption   = document.createTextNode(element.title);
			var container = document.createElement("div");
			var text      = document.createElement("p");
			var width     = element.getAttribute("width");
			var align     = element.getAttribute("align");
			var docMode = document.documentMode;

			//Windows fix
			if (!align)
				align = element.getStyle("float");  // Rest of the world fix
			if (!align) // IE DOM Fix
				align = element.style.styleFloat;

			text.appendChild(caption);
			text.className = this.selector.replace('.', '_');

			if (align=="none") {
				if (element.title != "") {
					element.parentNode.replaceChild(text, element);
					text.parentNode.insertBefore(element, text);
				}
			} else {
				element.parentNode.insertBefore(container, element);
				container.appendChild(element);
				if ( element.title != "" ) {
					container.appendChild(text);
				}
				container.className   = this.selector.replace('.', '_');
				container.className   = container.className + " " + align;
				container.setAttribute("style","float:"+align);

				//IE8 fix
				if (!docMode|| docMode < 8) {
					container.style.width = width + "px";
				}
			}

		}
	});

	document.caption = null;
	window.addEvent('load', function() {
		var caption = new JCaption('img.caption')
		document.caption = caption
	});
}
