Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 56A34B4A2
	for <lists+ibm-acpi-devel@lfdr.de>; Sun, 28 Apr 2019 00:17:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1hKVd4-0008Bd-Lf; Sat, 27 Apr 2019 22:17:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pavel@ucw.cz>) id 1hKVd3-0008BS-7U
 for ibm-acpi-devel@lists.sourceforge.net; Sat, 27 Apr 2019 22:17:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=s/NvIwceS24qCAn06VHkFnrZZMpmW7xsS31oc0sQmvg=; b=NJ/e7WKpsIhyPaosWBhoZl23IL
 9yCRxgR7dxU1Du5Mmzvdx+/cUc7vq230la6kvbA7dW75/tWd1/bUFzvQX3y/vK7XCgXc+SLggfxn7
 6diQQiCWHI4xiSog+dsBF7myIS2JrSFfL+lqh+o3bNPTqpKQ/cnUUSKkOOmzukil1cQM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=s/NvIwceS24qCAn06VHkFnrZZMpmW7xsS31oc0sQmvg=; b=QRBv8vzkhBFFilSbxjoMc53kU4
 DvUKB3B/bW9b3PPfdQEFj9DWMiCyyPNFLtUjsVomLpTXMyKJMO5DZgQV4f+XScqWgXDmioOKztp+L
 dpHYu6obPhT5I8VBJUzp6u5TYDpXNUNw6PsCXebxSmRgdU3pqqI3r+ZgpjXBgypbIMBM=;
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hKVd1-00GyVo-12
 for ibm-acpi-devel@lists.sourceforge.net; Sat, 27 Apr 2019 22:17:05 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id 1367780709; Sun, 28 Apr 2019 00:16:47 +0200 (CEST)
Date: Sun, 28 Apr 2019 00:16:55 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Jacek Anaszewski <jacek.anaszewski@gmail.com>
Message-ID: <20190427221655.GA3844@amd>
References: <20190426123513.GA18172@amd> <20190426214246.GA24966@amd>
 <84fac57d-1121-a1da-fb45-16a2521bdef9@gmail.com>
 <20190427193411.GA9709@amd>
 <2578a614-beb9-1c9d-9f74-208a8a7ab64f@gmail.com>
MIME-Version: 1.0
In-Reply-To: <2578a614-beb9-1c9d-9f74-208a8a7ab64f@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: cuni.cz]
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hKVd1-00GyVo-12
Subject: Re: [ibm-acpi-devel] Thinkpad ACPI led -- it keeps blinking
X-BeenThere: ibm-acpi-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: thinkpad-acpi/ibm-acpi Linux driver development
 <ibm-acpi-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/ibm-acpi-devel>, 
 <mailto:ibm-acpi-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=ibm-acpi-devel>
List-Post: <mailto:ibm-acpi-devel@lists.sourceforge.net>
List-Help: <mailto:ibm-acpi-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel>, 
 <mailto:ibm-acpi-devel-request@lists.sourceforge.net?subject=subscribe>
Cc: ibm-acpi-devel@lists.sourceforge.net, ibm-acpi@hmh.eng.br,
 linux-leds@vger.kernel.org, platform-driver-x86@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============2316593121854628134=="
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net


--===============2316593121854628134==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="fUYQa+Pmc3FrFX/N"
Content-Disposition: inline


--fUYQa+Pmc3FrFX/N
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

It seems quite clear:

static int timer_trig_activate(struct led_classdev *led_cdev)
{
        printk("timer_trig_activate\n");
	if (led_cdev->flags & LED_INIT_DEFAULT_TRIGGER) {
=09
        led_blink_set(led_cdev, &led_cdev->blink_delay_on, &led_cdev->blink=
_delay_off);

	printk("timer_trig_activate done\n");

        return 0;
}

static void timer_trig_deactivate(struct led_classdev *led_cdev)
{
        printk("timer_trig_deactivate\n");

	/* Stop blinking */
	led_set_brightness(led_cdev, LED_OFF);

        printk("timer_trig_deactivate done\n");
}

We get timer_trig_deactivate() immediately followed by
timer_trig_activate().

set_brightness goes to workqueue because it would block. That means
that blink_set() happens before set_brightness...

								Pavel

[   16.194141] e1000e 0000:02:00.0 eth1: 10/100 speed: disabling TSO
[  145.887931] timer_trig_activate
[  145.888011] LED set 0 to 2
[  145.888879] LED set 0 to 2... 0
[  145.888893] timer_trig_activate done
[  149.977138] timer_trig_deactivate
[  149.977169] timer_trig_deactivate done
[  149.977479] timer_trig_activate
[  149.977497] LED set 0 to 2
[  149.978281] LED set 0 to 2... 0
[  149.978295] timer_trig_activate done
[  149.978415] LED set 0 to 0
[  149.979851] LED set 0 to 0... 0
[  184.839252] timer_trig_deactivate
[  184.839282] timer_trig_deactivate done
[  184.839319] timer_trig_activate
[  184.839337] LED set 0 to 2
[  184.839907] LED set 0 to 0
[  184.840369] LED set 0 to 2... 0
[  184.840383] timer_trig_activate done
[  184.843318] LED set 0 to 0... 0
root@amd:/sys/class/leds/tpacpi::power#

diff --git a/drivers/leds/led-core.c b/drivers/leds/led-core.c
index e3da7c0..ca1f69b 100644
--- a/drivers/leds/led-core.c
+++ b/drivers/leds/led-core.c
@@ -166,6 +166,7 @@ static void led_blink_setup(struct led_classdev *led_cd=
ev,
 {
 	if (!test_bit(LED_BLINK_ONESHOT, &led_cdev->work_flags) &&
 	    led_cdev->blink_set &&
+	    /* This can sleep */
 	    !led_cdev->blink_set(led_cdev, delay_on, delay_off))
 		return;
=20
diff --git a/drivers/leds/trigger/ledtrig-timer.c b/drivers/leds/trigger/le=
dtrig-timer.c
index ca898c1..0b061bb5 100644
--- a/drivers/leds/trigger/ledtrig-timer.c
+++ b/drivers/leds/trigger/ledtrig-timer.c
@@ -104,6 +104,7 @@ static void pattern_init(struct led_classdev *led_cdev)
=20
 static int timer_trig_activate(struct led_classdev *led_cdev)
 {
+	printk("timer_trig_activate\n");
 	if (led_cdev->flags & LED_INIT_DEFAULT_TRIGGER) {
 		pattern_init(led_cdev);
 		/*
@@ -115,14 +116,18 @@ static int timer_trig_activate(struct led_classdev *l=
ed_cdev)
=20
 	led_blink_set(led_cdev, &led_cdev->blink_delay_on,
 		      &led_cdev->blink_delay_off);
+	printk("timer_trig_activate done\n");
=20
 	return 0;
 }
=20
 static void timer_trig_deactivate(struct led_classdev *led_cdev)
 {
+	printk("timer_trig_deactivate\n");
 	/* Stop blinking */
 	led_set_brightness(led_cdev, LED_OFF);
+
+	printk("timer_trig_deactivate done\n");
 }
=20
 static struct led_trigger timer_led_trigger =3D {
diff --git a/drivers/mmc/core/host.c b/drivers/mmc/core/host.c
index 3a4402a..b3fa9c9 100644
--- a/drivers/mmc/core/host.c
+++ b/drivers/mmc/core/host.c
@@ -363,11 +363,11 @@ int mmc_of_parse_voltage(struct device_node *np, u32 =
*mask)
 	int num_ranges, i;
=20
 	voltage_ranges =3D of_get_property(np, "voltage-ranges", &num_ranges);
-	num_ranges =3D num_ranges / sizeof(*voltage_ranges) / 2;
 	if (!voltage_ranges) {
 		pr_debug("%pOF: voltage-ranges unspecified\n", np);
 		return 0;
 	}
+	num_ranges =3D num_ranges / sizeof(*voltage_ranges) / 2;
 	if (!num_ranges) {
 		pr_err("%pOF: voltage-ranges empty\n", np);
 		return -EINVAL;
diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/th=
inkpad_acpi.c
index 57d9ae9..3ec6636 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -5867,6 +5867,8 @@ static int led_set_status(const unsigned int led,
=20
 	int rc =3D 0;
=20
+	printk("LED set %d to %d\n", led, ledstatus);
+
 	switch (led_supported) {
 	case TPACPI_LED_570:
 		/* 570 */
@@ -5876,7 +5878,7 @@ static int led_set_status(const unsigned int led,
 			return -EPERM;
 		if (!acpi_evalf(led_handle, NULL, NULL, "vdd",
 				(1 << led), led_sled_arg1[ledstatus]))
-			rc =3D -EIO;
+			return -EIO;
 		break;
 	case TPACPI_LED_OLD:
 		/* 600e/x, 770e, 770x, A21e, A2xm/p, T20-22, X20 */
@@ -5900,12 +5902,14 @@ static int led_set_status(const unsigned int led,
 			return -EPERM;
 		if (!acpi_evalf(led_handle, NULL, NULL, "vdd",
 				led, led_led_arg1[ledstatus]))
-			rc =3D -EIO;
+			return -EIO;
 		break;
 	default:
-		rc =3D -ENXIO;
+		return -ENXIO;
 	}
=20
+	printk("LED set %d to %d... %d\n", led, ledstatus, rc);
+
 	if (!rc)
 		tpacpi_led_state_cache[led] =3D ledstatus;
=20

=09
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--fUYQa+Pmc3FrFX/N
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAlzE1NcACgkQMOfwapXb+vJgFACgplv96Oc196GwivJnpG3bzLS0
gxwAoJll4FbFvNNdgzW89qNi//F99zup
=Ysda
-----END PGP SIGNATURE-----

--fUYQa+Pmc3FrFX/N--


--===============2316593121854628134==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============2316593121854628134==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

--===============2316593121854628134==--

