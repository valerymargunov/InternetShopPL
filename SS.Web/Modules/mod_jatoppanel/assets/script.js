/*
# ------------------------------------------------------------------------
# JA Top Panel module
# ------------------------------------------------------------------------
# Copyright (C) 2004-2010 JoomlArt.com. All Rights Reserved.
# @license GNU/GPLv3 http://www.gnu.org/licenses/gpl-3.0.html
# Author: JoomlArt.com
# Websites: http://www.joomlart.com - http://www.joomlancers.com.
# ------------------------------------------------------------------------
*/
var JAToppanel = new Class({	
	initialize: function(element, options) {
		this.options = $extend({
			modulenid: '',
			duration: 1000,
			auto: 0,
			delay: 0,
			overlay: 0,
			cookie_suffix: 'jatoppanel_',
			dontshowagain: 1
		}, options || {});
		
		this.el = $(element);
		this.el.getParent().getParent().setStyle('position', 'relative');
		this.el.getParent().getParent().getParent().setStyle('position', 'relative');
		this.panel = this.el.getElement('div.ja-toppanel-panels');
		this.wraper = this.el.getElement('div.ja-toppanel-wraper');
		
		this.content = this.el.getElement('div.ja-toppanel-content');
		this.button = $('ja-toppanel-button-wraper-'+this.options.modulenid);
		if($('ja-toppanel-Overlay')==null){
			this.overlay = new Element('div', {'id': 'ja-toppanel-Overlay'});	
			this.overlay.inject($(document.body));
		}
		else{
			this.overlay = $('ja-toppanel-Overlay');
		}
		
		this.overlay.setStyles({'display':'block', 'visibility':'hidden'});
		
		this.el.setStyle('display', 'block');
		this.button.getElement('div.ja-toppanel-button-subwap').setStyle('left', this.panel.offsetWidth/2 - this.button.getElement('div.ja-toppanel-button-subwap').offsetWidth/2);
		
		if (!this.myslider) {
			this.myslider = new Fx.Slide(this.wraper, {duration: this.options.duration, open:true});
		}		
		this.myslider.hide ();
		
		if(!this.overlayFx  && this.options.overlay){
			this.overlayFx = new Fx.Styles(this.overlay, {duration: 500});
		}
		
		if($('dontshowagain'+this.options.modulenid)!=null){
			var el = $('dontshowagain'+this.options.modulenid);
			el.addEvent('click', function(){
				if(el.checked){
					Cookie.set(this.options.cookie_suffix + 'dontshowagain' + el.value, 1, {duration: 3});
				} else {
					Cookie.remove(this.options.cookie_suffix + 'dontshowagain' + el.value);
				}
			}.bind(this));
		}
		
		if(this.options.auto){
			$clear(this.timer);
			this.timmer = this.openPanel.delay(this.options.delay, this);
		}
		
		this.button.getElement('div.ja-toppanel-button-subwap').addEvent('click', function(){
			this.myslider.toggle();
			
			this.controlButtonDontshowagain($('ja-toppanel-button-subwap-'+this.options.modulenid));						
			
			if(this.options.overlay){
				if(this.overlay.getStyle('visibility')=='hidden'){
					this.overlayFx.start({
						'height': [0, window.getSize().scrollSize['y'] + this.content.offsetHeight],
						'opacity': [0, 0.7]
					});
				}
				else{
					this.overlayFx.start({
						'height': [this.overlay.offsetHeight, 0],
						'opacity': [0.7, 0]
					});
				}			
			}
		}.bind(this));
		
		/*this.close = this.content.getElement('span.ja-toppanel-close');
		if(this.close!=null){
			this.close.addEvent('click', function(){
				this.myslider.slideOut();
				this.myslider.slideIn();
				
				if(this.options.overlay){
					this.overlayFx.start({
						'height': [this.overlay.offsetHeight, 0],
						'opacity': [0.7, 0]
					});
				}
			}.bind(this));
		}*/
		
	},
	
	openPanel: function(){
		this.myslider.slideIn();
		this.myslider.slideOut();	
		if(this.options.dontshowagain){
			this.controlButtonDontshowagain($('ja-toppanel-button-subwap-'+this.options.modulenid))
		}
		if(this.options.overlay){
			this.overlayFx.start({
				'height': [0, window.getSize().scrollSize['y'] + this.content.offsetHeight],
				'opacity': [0, 0.7]
			});
		}
	},
	
	controlButtonDontshowagain: function(el){
		if(this.options.dontshowagain){
			if(!this.buttonFx){
				this.buttonFx = new Fx.Styles(el, {duration: 200});
			}
			if(!el.hasClass('open')){
				this.buttonFx.start({
					'height': [0, el.getPrevious().offsetHeight]
				});
				el.addClass('open');
				this.button.addClass('open');
			}
			else{
				this.buttonFx.start({
					'height': [el.offsetHeight, 0]
				});
				el.removeClass('open');
				this.button.removeClass('open');
			}				
		}					
	}
});