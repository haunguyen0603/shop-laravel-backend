@extends('master')
@section('content')
<script>
    //made by vipul mirajkar thevipulm.appspot.com
    var TxtType = function(el, toRotate, period) {
        this.toRotate = toRotate;
        this.el = el;
        this.loopNum = 0;
        this.period = parseInt(period, 10) || 2000;
        this.txt = '';
        this.tick();
        this.isDeleting = false;
    };

    TxtType.prototype.tick = function() {
        var i = this.loopNum % this.toRotate.length;
        var fullTxt = this.toRotate[i];

        if (this.isDeleting) {
            this.txt = fullTxt.substring(0, this.txt.length - 1);
        } else {
            this.txt = fullTxt.substring(0, this.txt.length + 1);
        }

        this.el.innerHTML = '<span class="wrap">'+this.txt+'</span>';

        var that = this;
        var delta = 200 - Math.random() * 100;

        if (this.isDeleting) { delta /= 2; }

        if (!this.isDeleting && this.txt === fullTxt) {
            delta = this.period;
            this.isDeleting = true;
        } else if (this.isDeleting && this.txt === '') {
            this.isDeleting = false;
            this.loopNum++;
            delta = 500;
        }

        setTimeout(function() {
            that.tick();
        }, delta);
    };

    window.onload = function() {
        var elements = document.getElementsByClassName('typewrite');
        for (var i=0; i<elements.length; i++) {
            var toRotate = elements[i].getAttribute('data-type');
            var period = elements[i].getAttribute('data-period');
            if (toRotate) {
                new TxtType(elements[i], JSON.parse(toRotate), period);
            }
        }
        // INJECT CSS
        var css = document.createElement("style");
        css.type = "text/css";
        css.innerHTML = ".typewrite > .wrap { border-right: 0.08em solid #fff}";
        document.body.appendChild(css);
    };
</script>
	{{-- <div class="inner-header">
		<div class="container">
			<div class="pull-left">
				<h6 class="inner-title">Contacts</h6>
			</div>
			<div class="pull-right">
				<div class="beta-breadcrumb font-large">
					<a href="/">Home</a> / <span>Contacts</span>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div> --}}
	<div class="beta-map">
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.6778650353567!2d106.66443081462239!3d10.759291092333143!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752ee1ff354f3f%3A0x18f40d9f2c7f8e18!2zVHJ1bmcgVMOibSBUaW4gSOG7jWMgLSDEkEggS2hvYSBI4buNYyBU4buxIE5oacOqbiAoQ1MyKQ!5e0!3m2!1svi!2s!4v1601199049106!5m2!1svi!2s" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
	</div>
	<div class="container">
		<div id="content" class="space-top-none">
			
			<div class="space50">&nbsp;</div>
			<div class="row">
				<div class="col-sm-8">
					<h2 style="color:#428bca">Gửi yêu cầu tới chúng tôi</h2>
					<div class="space20">&nbsp;</div>
					<form action="{{ route('lienhe') }}" method="post" class="contact-form">
						<input type="hidden" name="_token" value="{{csrf_token()}}">
						<div class="form-block">
							<input name="your_name" type="text" placeholder="Your Name (required)" required>
						</div>
						<div class="form-block">
							<input name="your_email" type="email" placeholder="Your Email (required)" required>
						</div>
						<div class="form-block">
							<input name="your_subject" type="text" placeholder="Subject" required>
						</div>
						<div class="form-block">
							<textarea name="your_note" placeholder="Your Message" required></textarea>
						</div>
						<div class="form-block">
							<button type="submit" class="beta-btn primary">Send Message <i class="fa fa-chevron-right"></i></button>
						</div>
					</form>
				</div>
				<div class="col-sm-4" style="text-align: left;" >
					<h2 style="color:#428bca">Thông tin liên hệ</h2>
					<div class="space20">&nbsp;</div>
					<h6 class="contact-title"><b>Địa chỉ</b></h6>
					<br>
					<i class='far fa-building' style='font-size:24px;color:#428bca'></i> 137E Nguyễn Chí Thanh, Phường 9, Quận 5, TP. Hồ Chí Minh, Việt Nam
					<div class="space20">&nbsp;</div>
					<h6 class="contact-title"><b>Số điện thoại</b></h6>
					<br>
					<i class="fas fa-phone" style='font-size:24px;color:#428bca'></i><b> 0392009814</b><br><br>
					<i class="fas fa-phone" style='font-size:24px;color:#428bca'></i><b> 0938090374</b>
					<div class="space20">&nbsp;</div>
					<h6 class="contact-title"><b>Email</b></h6>
					<br>
					<i class="fas fa-envelope-open-text" style='font-size:24px;color:#428bca'></i><b> haunguyen0603@gmail.com</b>
				</div>
			</div>
		</div> <!-- #content -->
	</div> <!-- .container -->
@endsection