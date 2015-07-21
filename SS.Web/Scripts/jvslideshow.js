/**
 * @package JV Plugin Slideshow for Joomla! 1.5
 * @author http://www.ZooTemplate.com
 * @copyright (C) 2010- ZooTemplate.Com
 * @license JS files are GNU/GPL
**/

var JVSlideShow = new Class({
	options:{
		delay:3000
	},
	initialize:function(options){ 		
		this.setOptions(options);
		this.slideImg = $$(this.options.slideImg);	
		this.slideImgContainer = $(this.options.slideImgContainer);			
		this.currentIter = 0;	
		this.constructElement();
		if(this.options.showButNext == 1) {
			this.butNext = $$(this.options.butNext)[0];
			this.butPre = $$(this.options.butPre)[0];	
			this.butPre.addEvent('click',function(){this.preItem();}.bind(this));
			this.butPre.addEvent('mouseleave',function(){this.butPre.setStyle('opacity',1)}.bind(this));
			this.butPre.addEvent('mouseenter',function(){this.butPre.setStyle('opacity',1)}.bind(this));
			this.butNext.addEvent('click',function(){this.nextItem(true)}.bind(this));
			this.butNext.addEvent('mouseleave',function(){this.butNext.setStyle('opacity',1)}.bind(this));
			this.butNext.addEvent('mouseenter',function(){this.butNext.setStyle('opacity',1)}.bind(this));
		}	
		if(this.options.auto==1){
			this.timer = this.nextItem.delay(this.options.delay,this);
		}
	},	
	constructElement:function(){
		this.slideImg.each(function(item,i){
			item.setStyle('opacity',0);
		}.bind(this));
		this.slideImgContainer.removeClass('loading');
        this.slideImg[0].setStyle('opacity',1);
        this.maxIter = this.slideImg.length;        	
	},
	clearTimer:function(){
		$clear(this.timer);
	},
	prepareTimer:function(){
		if(this.options.auto==1){
			this.timer = this.nextItem.delay(this.options.delay, this);
		}else{
			this.clearTimer();
		}
	},
	goToByClick:function(num){	
	if(num !=this.currentIter) {		
		this.info.stop();
		this.clearTimer();				
        this.changeItem(num); 
        this.prepareTimer();             
	}
	},
    goTo:function(num){    	
    	this.clearTimer();
    	//this.changeItem(num);
    	this.changeItem(num);
    	this.prepareTimer();   	    	   
    },   
	changeItem:function(num){		
		if (this.currentIter != num){		
			this.oldSlide = new Fx.Styles(this.slideImg[this.currentIter], {duration:this.options.slidetransition, wait: false});
            this.newSlide = new Fx.Styles(this.slideImg[num],{duration:this.options.slidetransition, wait: false});
            JVSlideShow.Transitions[this.options.styleEffect].pass([
                this.oldSlide,
                this.newSlide,
                this.currentIter,
                num], this)();
            this.currentIter = num;                                               
		}		
	},	 	  
	nextItem:function(wait){		
		this.nextIter = this.currentIter+1;		
        if (this.nextIter >= this.maxIter)
            this.nextIter = 0;
        if(wait){
			this.clearTimer();				
        	this.changeItem(this.nextIter); 
        	this.prepareTimer();
        	return; 	
        }             
		this.goTo(this.nextIter);		
	},
	preItem:function(){
		this.nextIter = this.currentIter-1;
		if (this.nextIter <= -1)
			this.nextIter = this.maxIter - 1;
		this.clearTimer();				
        this.changeItem.delay(100,this,this.nextIter); 
        this.prepareTimer(); 	
		//this.goTo(this.nextIter);	
	}
});
JVSlideShow.implement(new Events);
JVSlideShow.implement(new Options);
JVSlideShow.Transitions = new Abstract ({
    fade: function(oldFx, newFx, oldPos, newPos){
        oldFx.options.transition = newFx.options.transition = Fx.Transitions.linear;
        oldFx.options.duration = newFx.options.duration = this.options.fadeDuration;
        if (newPos > oldPos) newFx.start({opacity: 1});
        else
        {
            newFx.set({opacity: 1});
            oldFx.start({opacity: 0});
        }
    },
    crossfade: function(oldFx, newFx, oldPos, newPos){
        oldFx.options.transition = newFx.options.transition = Fx.Transitions.linear;
        oldFx.options.duration = newFx.options.duration = this.options.fadeDuration;
        newFx.start({opacity: 1});
        oldFx.start({opacity: 0});
    },
    fadebg: function(oldFx, newFx, oldPos, newPos){
        oldFx.options.transition = newFx.options.transition = Fx.Transitions.linear;
        oldFx.options.duration = newFx.options.duration = this.options.fadeDuration / 2;
        oldFx.start({opacity: 0}).chain(newFx.start.pass([{opacity: 1}], newFx));
    }
});
/**
 * @author jon
 */
JVSlideShow.Transitions.extend({
    fadeslidelefttoright: function(oldFx, newFx, oldPos, newPos){
        oldFx.options.transition = newFx.options.transition = Fx.Transitions.Cubic.easeOut;
        oldFx.options.duration = newFx.options.duration = 1000;      
        if (newPos > oldPos)
        {                   
            newFx.start({
                left: [this.options.slideWidth, 0],
                opacity: 1
            });
            oldFx.start({opacity: [1,0]});
        } else {
            newFx.start({opacity: [0,1]});
            oldFx.start({
                left: [0, this.options.slideWidth],
                opacity: 0
            }).chain(function(fx){fx.set({left: 0});}.pass(oldFx));
        }
    },
    fadesliderighttoleft: function(oldFx, newFx, oldPos, newPos){
        oldFx.options.transition = newFx.options.transition = Fx.Transitions.Cubic.easeOut;
        oldFx.options.duration = newFx.options.duration = 1000;
        if (newPos > oldPos)
        {
            newFx.start({opacity: [0,1]});
            oldFx.start({
                left: [0, this.options.slideWidth],
                opacity: 0
            }).chain(function(fx){fx.set({left: 0});}.pass(oldFx));
        } else {
            newFx.start({
                left: [this.options.slideWidth, 0],
                opacity: 1
            });
            oldFx.start({opacity: [1,0]});
        }
    },
    fadeslidebottomtoup: function(oldFx, newFx, oldPos, newPos){
        oldFx.options.transition = newFx.options.transition = Fx.Transitions.Cubic.easeOut;
        oldFx.options.duration = newFx.options.duration = 1000;
        if (newPos > oldPos)
        {
            newFx.start({opacity: [0,1]});
            oldFx.start({
                bottom: [0, this.options.slideHeight],
                opacity: 0
            }).chain(function(fx){fx.set({bottom: 0});}.pass(oldFx));
        } else {
            newFx.start({
            	bottom: [this.options.slideHeight, 0],
                opacity: 1
            });
            oldFx.start({opacity: [1,0]});
        }
    },
    fadeslidetoptodown: function(oldFx, newFx, oldPos, newPos){
        oldFx.options.transition = newFx.options.transition = Fx.Transitions.Cubic.easeOut;
        oldFx.options.duration = newFx.options.duration = 1000;
        if (newPos > oldPos)
        {
            newFx.start({opacity: [0,1]});
            oldFx.start({
                top: [0, this.options.slideWidth],
                opacity: 0
            }).chain(function(fx){fx.set({top: 0});}.pass(oldFx));
        } else {
            newFx.start({
            	top: [this.options.slideWidth, 0],
                opacity: 1
            });
            oldFx.start({opacity: [1,0]});
        }
    },
    horizontalrighttoleft: function(oldFx, newFx, oldPos, newPos){
        oldFx.options.transition = newFx.options.transition = Fx.Transitions.linear;               
        if (
            ((newPos > oldPos) || ((newPos==0) && (oldPos == (this.maxIter-1) ))) &&
            (!((newPos == (this.maxIter-1 )) && (oldPos == 0)))
        ) {
            oldFx.set({opacity: 1});
            oldFx.start({
                left: [0, this.options.slideWidth * -1]
            });
            newFx.set({opacity: 1, left: this.options.slideWidth});
            newFx.start({
                left: [this.options.slideWidth, 0]
            });
        } else  {
            oldFx.set({opacity: 1});
            oldFx.start({
                left: [0, this.options.slideWidth]
            });
            newFx.set({opacity: 1, left: this.options.slideWidth * -1});
            newFx.start({
                left: [this.options.slideWidth * -1, 0]
            });
        }
    },
    horizontallefttoright: function(oldFx, newFx, oldPos, newPos){
        oldFx.options.transition = newFx.options.transition = Fx.Transitions.linear;       
        if (
            ((newPos > oldPos) || ((newPos==0) && (oldPos == (this.maxIter-1) ))) &&
            (!((newPos == (this.maxIter-1 )) && (oldPos == 0)))
        ) {
            oldFx.set({opacity: 1});
            oldFx.start({
                left: [0, this.options.slideWidth]
            });
            newFx.set({opacity: 1, left: this.options.slideWidth * -1});
            newFx.start({
                left: [this.options.slideWidth * -1, 0]
            });
        } else  {
            oldFx.set({opacity: 1});
            oldFx.start({
                left: [0, this.options.slideWidth * -1]
            });
            newFx.set({opacity: 1, left: this.options.slideWidth});
            newFx.start({
                left: [this.options.slideWidth, 0]
            });
        }
    },
    horizontalbottomtoup: function(oldFx, newFx, oldPos, newPos){
        oldFx.options.transition = newFx.options.transition = Fx.Transitions.linear;      
        if (
            ((newPos > oldPos) || ((newPos==0) && (oldPos == (this.maxIter-1) ))) &&
            (!((newPos == (this.maxIter-1 )) && (oldPos == 0)))
        ) {
            oldFx.set({opacity: 1});
            oldFx.start({
                top: [0, this.options.slideHeight * -1]
            });
            newFx.set({opacity: 1, top: this.options.slideHeight});
            newFx.start({
                top: [this.options.slideHeight, 0]
            });
        } else  {
            oldFx.set({opacity: 1});
            oldFx.start({
                top: [0, this.options.slideHeight]
            });
            newFx.set({opacity: 1, top: this.options.slideHeight * -1});
            newFx.start({
                top: [this.options.slideHeight * -1, 0]
            });
        }
    },
    horizontaltoptodown: function(oldFx, newFx, oldPos, newPos){
        oldFx.options.transition = newFx.options.transition = Fx.Transitions.linear;       
        if (
            ((newPos > oldPos) || ((newPos==0) && (oldPos == (this.maxIter-1) ))) &&
            (!((newPos == (this.maxIter-1 )) && (oldPos == 0)))
        ) {
            oldFx.set({opacity: 1});
            oldFx.start({
                top: [0, this.options.slideHeight]
            });
            newFx.set({opacity: 1, top: this.options.slideHeight * -1});
            newFx.start({
                top: [this.options.slideHeight * -1, 0]
            });
        } else  {
            oldFx.set({opacity: 1});
            oldFx.start({
                top: [0, this.options.slideHeight * -1]
            });
            newFx.set({opacity: 1, top: this.options.slideHeight});
            newFx.start({
                top: [this.options.slideHeight, 0]
            });
        }
    },
    switchbottomtoup: function(oldFx, newFx, oldPos, newPos){
        oldFx.options.transition = newFx.options.transition = Fx.Transitions.linear;       
        
        //var jvheight = this.galleryElement.offsetHeight;
        //alert(this.galleryElement.offsetHeight);
        if (
            ((newPos > oldPos) || ((newPos==0) && (oldPos == (this.maxIter-1) ))) &&
            (!((newPos == (this.maxIter-1 )) && (oldPos == 0)))
        ) {
            oldFx.set({opacity: 1});
            oldFx.start({
                opacity: [1, 0],
                bottom: [0, this.options.slideHeight]
            });
            newFx.set({
                opacity: 1,
                bottom: this.options.slideHeight * -1
            });
            newFx.start({
                opacity: [0, 1],
                bottom: [this.options.slideHeight, 0]
            });
        } else  {
            oldFx.set({opacity: 1});
            oldFx.start({
                opacity: [1, 0],
                bottom: [0, this.options.slideHeight]
            });
            newFx.set({
                opacity: 1,
                bottom: this.options.slideHeight
            });
            newFx.start({
            	bottom: [this.options.slideHeight, 0]
            });
        }
    },
    switchtoptodown: function(oldFx, newFx, oldPos, newPos){
        oldFx.options.transition = newFx.options.transition = Fx.Transitions.linear;       
        
        //var jvheight = this.galleryElement.offsetHeight;
        //alert(this.galleryElement.offsetHeight);
        if (
            ((newPos > oldPos) || ((newPos==0) && (oldPos == (this.maxIter-1) ))) &&
            (!((newPos == (this.maxIter-1 )) && (oldPos == 0)))
        ) {
            oldFx.set({opacity: 1});
            oldFx.start({
                opacity: [1, 0],
                top: [0, this.options.slideHeight]
            });
            newFx.set({
                opacity: 1,
                top: this.options.slideHeight * -1
            });
            newFx.start({
                opacity: [0, 1],
                top: [this.options.slideHeight, 0]
            });
        } else  {
            oldFx.set({opacity: 1});
            oldFx.start({
                opacity: [1, 0],
                top: [0, this.options.slideHeight]
            });
            newFx.set({
                opacity: 1,
                top: this.options.slideHeight
            });
            newFx.start({
                top: [this.options.slideHeight, 0]
            });
        }
    },
    switchlefttoright: function(oldFx, newFx, oldPos, newPos){
        oldFx.options.transition = newFx.options.transition = Fx.Transitions.linear;       
        
        //var jvheight = this.galleryElement.offsetHeight;
        //alert(this.galleryElement.offsetHeight);
        if (
            ((newPos > oldPos) || ((newPos==0) && (oldPos == (this.maxIter-1) ))) &&
            (!((newPos == (this.maxIter-1 )) && (oldPos == 0)))
        ) {
            oldFx.set({opacity: 1});
            oldFx.start({
                opacity: [1, 0],
                left: [0, this.options.slideWidth]
            });
            newFx.set({
                opacity: 1,
                left: this.options.slideWidth * -1
            });
            newFx.start({
                opacity: [0, 1],
                left: [this.options.slideWidth, 0]
            });
        } else  {
            oldFx.set({opacity: 1});
            oldFx.start({
                opacity: [1, 0],
                left: [0, this.options.slideWidth]
            });
            newFx.set({
                opacity: 1,
                left: this.options.slideWidth
            });
            newFx.start({
            	left: [this.options.slideWidth, 0]
            });
        }
    },
    switchrighttoleft: function(oldFx, newFx, oldPos, newPos){
        oldFx.options.transition = newFx.options.transition = Fx.Transitions.linear;       
        
        //var jvheight = this.galleryElement.offsetHeight;
        //alert(this.galleryElement.offsetHeight);
        if (
            ((newPos > oldPos) || ((newPos==0) && (oldPos == (this.maxIter-1) ))) &&
            (!((newPos == (this.maxIter-1 )) && (oldPos == 0)))
        ) {
            oldFx.set({opacity: 1});
            oldFx.start({
                opacity: [1, 0],
                right: [0, this.options.slideWidth]
            });
            newFx.set({
                opacity: 1,
                right: this.options.slideWidth * -1
            });
            newFx.start({
                opacity: [0, 1],
                right: [this.options.slideWidth, 0]
            });
        } else  {
            oldFx.set({opacity: 1});
            oldFx.start({
                opacity: [1, 0],
                right: [0, this.options.slideWidth]
            });
            newFx.set({
                opacity: 1,
                right: this.options.slideWidth
            });
            newFx.start({
            	right: [this.options.slideWidth, 0]
            });
        }
    }

});

