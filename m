Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 69CBCA3A336
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 18 Feb 2025 17:51:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1tkQoT-00016W-Q8;
	Tue, 18 Feb 2025 16:51:14 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1tkQoS-00016I-Mu
 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 18 Feb 2025 16:51:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=p7pvXcz+nJelHwX+jlHgdJlucSENiNqsN9eSnjiFOGY=; b=Hb/VDJJLRiIPIq9lYE6ErbKnTQ
 hpz8AfrgeVLtnsPNa21kroy/mHc76eP2+T+RFLgv1AX/8uvxw5nb2d2CrSyp0iX4tU0thLDQ7QfM/
 55nPAHgu5TD6hUQ5Ekym5XVxFRuVtna6zStiahfF/u9HZWUe6pyC5bHhxLqpGjXRVrt8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=p7pvXcz+nJelHwX+jlHgdJlucSENiNqsN9eSnjiFOGY=; b=CT6r7do53eX739KGW7fdnvtEe3
 DAtoeMey5UaQaK34NK+cT5R9vV2qh8+50lcJgmT0YgwUq3+JNjwj1TdEyy5qv0zcFSlE/rFVcUIE5
 Q74yqH8w94VyU1ojWJsikOYlESywmBffpuF1ARBfsL1ybwrMFKBZAbP6AR6VBVqguWgw=;
Received: from fout-a5-smtp.messagingengine.com ([103.168.172.148])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tkQoQ-0006NC-Iy for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 18 Feb 2025 16:51:13 +0000
Received: from phl-compute-04.internal (phl-compute-04.phl.internal
 [10.202.2.44])
 by mailfout.phl.internal (Postfix) with ESMTP id 9E39013808BC;
 Tue, 18 Feb 2025 11:50:53 -0500 (EST)
Received: from phl-imap-10 ([10.202.2.85])
 by phl-compute-04.internal (MEProxy); Tue, 18 Feb 2025 11:50:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm1; t=1739897453;
 x=1739983853; bh=p7pvXcz+nJelHwX+jlHgdJlucSENiNqsN9eSnjiFOGY=; b=
 H3lqZn73VbEoh2Z0DGBhKZuAmPfJ+5QuMsL5EGEcHwtJmLkE8DKqXnn2nRw/fyjc
 dcBDsgTZ40faqO5uTn7x7iYw68Fg/lK/VLgN7tuVaZNgz9VqSMB80yLA293id279
 2puoy3SyMqOThgO52N7LB80w3ebaUwoyTzi2UMOUCZDheXYMoDsECat/IrwO0OnU
 T2PyHfBCdJ6bLdc4vB/eQwOL8WyALYb7osQrpXzYDYY6GHGmgIRhPFuz1Ag9b3gp
 SMY++Du4AABp1SqEzRWwQ7do8tB+fHvmzgVm3mmLBgvu4eF2manFrtSjK821G3dZ
 p+E06GoTAUewq0MLTrHnrg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1739897453; x=
 1739983853; bh=p7pvXcz+nJelHwX+jlHgdJlucSENiNqsN9eSnjiFOGY=; b=N
 s7jMGRPobdgS4aEFzfzaBqiS9ZqCjsyj7XPigoQWcPoXrpJeGwuhW5GHsVZS6dQL
 RwGWShS74AM4RCSEcPWpDzYGZasVpNw0EFMVVx8wAZA++Q7+NxDYZgVZTkKslY3d
 NlXrvPma5X2TSsb7I1xw8jAmkHyYd+2gvK3pbwezwigLdEJOD8xVL+WXKxW88E5a
 GS/VWNwkJXwX9Bfn4lGIaO3THPd8T3USozhL4HdFY4ImD9BQVfIC0fvpiXkrALrb
 Pxdy9UeZ/YLPptpQ+YSE54yHjcRfWfw64YXAadD/0uUvj7JTnJ3StRkVfVNDnAsp
 r4amFw2OCCPCHAKutm+og==
X-ME-Sender: <xms:bLq0Z_TFqWy4luisCgu6g7OFQJaZpLiJRHg5-l-712P753jihdgTGw>
 <xme:bLq0ZwydCCksIpB2soONEf6EAx6s9kwCGn5_Ui778bWM9RPGwAZuIqfL_j9DY5kM-
 EZP3AAnSO-CMT9QXO0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgdeiudekgecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
 uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivg
 hnthhsucdlqddutddtmdenucfjughrpefoggffhffvvefkjghfufgtgfesthejredtredt
 tdenucfhrhhomhepfdforghrkhcurfgvrghrshhonhdfuceomhhpvggrrhhsohhnqdhlvg
 hnohhvohesshhquhgvsggsrdgtrgeqnecuggftrfgrthhtvghrnhephfeuvdehteeghedt
 hedtveehuddvjeejgffgieejvdegkefhfeelheekhedvffehnecuvehluhhsthgvrhfuih
 iivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhhpvggrrhhsohhnqdhlvghnohhv
 ohesshhquhgvsggsrdgtrgdpnhgspghrtghpthhtohepjedpmhhouggvpehsmhhtphhouh
 htpdhrtghpthhtohepkhhuuhhrthgssehgmhgrihhlrdgtohhmpdhrtghpthhtohephhhm
 hheshhhmhhdrvghnghdrsghrpdhrtghpthhtohepihhlphhordhjrghrvhhinhgvnheslh
 hinhhugidrihhnthgvlhdrtghomhdprhgtphhtthhopehisghmqdgrtghpihdquggvvhgv
 lheslhhishhtshdrshhouhhrtggvfhhorhhgvgdrnhgvthdprhgtphhtthhopehhuggvgh
 hovgguvgesrhgvughhrghtrdgtohhmpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghl
 sehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtohepphhlrghtfhhorhhmqdgurh
 hivhgvrhdqgiekieesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:bLq0Z03-M1xLYhtyPXO3WYHtckHRmS0IqiRlAwEo6KcEb7ndGUgffA>
 <xmx:bLq0Z_Dge3JsCwLVN07g3g8A_GCYbqI68HDPpO1JIf1BA07QFAe2qQ>
 <xmx:bLq0Z4gqWsR96iWR-tQOaIedAeSTGBz2lp5EKFCdDmZBijrk__fIbg>
 <xmx:bLq0Zzro4EK5bTCbU_Le_BgySoGEWVwNtNULEzWkMlVuZOqs-FRrGw>
 <xmx:bbq0ZzWQpMh-EbHDoGpO14cj1SKPcZkrSxtr4W6jpT5tZemA0DYVTPbP>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id 3660F3C0066; Tue, 18 Feb 2025 11:50:52 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
Date: Tue, 18 Feb 2025 11:50:31 -0500
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Kurt Borja" <kuurtb@gmail.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Message-Id: <9a98e10c-dd14-45a9-96ec-6ebca8b68616@app.fastmail.com>
In-Reply-To: <20250215000302.19753-3-kuurtb@gmail.com>
References: <20250215000302.19753-1-kuurtb@gmail.com>
 <20250215000302.19753-3-kuurtb@gmail.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Kurt, On Fri, Feb 14, 2025, at 7:03 PM, Kurt Borja wrote:
 > Let the driver core manage the lifetime of the HWMON device, by > registering
 it inside tpacpi_hwmon_pdriver's probe and using > devm_hwmon_device [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.148 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.148 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.148 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1tkQoQ-0006NC-Iy
Subject: Re: [ibm-acpi-devel] [PATCH 2/2] platform/x86: thinkpad_acpi: Move
 HWMON initialization to tpacpi_hwmon_pdriver's probe
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
Cc: Hans de Goede <hdegoede@redhat.com>, "platform-driver-x86@vger.kernel.org"
 <platform-driver-x86@vger.kernel.org>, linux-kernel@vger.kernel.org,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 ibm-acpi-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Kurt,

On Fri, Feb 14, 2025, at 7:03 PM, Kurt Borja wrote:
> Let the driver core manage the lifetime of the HWMON device, by
> registering it inside tpacpi_hwmon_pdriver's probe and using
> devm_hwmon_device_register_with_groups().
>
> Signed-off-by: Kurt Borja <kuurtb@gmail.com>
> ---
>  drivers/platform/x86/thinkpad_acpi.c | 44 +++++++++++-----------------
>  1 file changed, 17 insertions(+), 27 deletions(-)
>
> diff --git a/drivers/platform/x86/thinkpad_acpi.c 
> b/drivers/platform/x86/thinkpad_acpi.c
> index ad9de48cc122..a7e82157bd67 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -367,7 +367,6 @@ static struct {
>  	u32 beep_needs_two_args:1;
>  	u32 mixer_no_level_control:1;
>  	u32 battery_force_primary:1;
> -	u32 sensors_pdrv_registered:1;
>  	u32 hotkey_poll_active:1;
>  	u32 has_adaptive_kbd:1;
>  	u32 kbd_lang:1;
> @@ -11815,12 +11814,10 @@ static void thinkpad_acpi_module_exit(void)
>  {
>  	tpacpi_lifecycle = TPACPI_LIFE_EXITING;
> 
> -	if (tpacpi_hwmon)
> -		hwmon_device_unregister(tpacpi_hwmon);
> -	if (tp_features.sensors_pdrv_registered)
> +	if (tpacpi_sensors_pdev) {
>  		platform_driver_unregister(&tpacpi_hwmon_pdriver);
> -	if (tpacpi_sensors_pdev)
>  		platform_device_unregister(tpacpi_sensors_pdev);
> +	}
> 
>  	if (tpacpi_pdev) {
>  		platform_driver_unregister(&tpacpi_pdriver);
> @@ -11891,6 +11888,17 @@ static int __init tpacpi_pdriver_probe(struct 
> platform_device *pdev)
>  	return ret;
>  }
> 
> +static int __init tpacpi_hwmon_pdriver_probe(struct platform_device *pdev)
> +{
> +	tpacpi_hwmon = devm_hwmon_device_register_with_groups(
> +		&tpacpi_sensors_pdev->dev, TPACPI_NAME, NULL, tpacpi_hwmon_groups);
> +
> +	if (IS_ERR(tpacpi_hwmon))
> +		pr_err("unable to register hwmon device\n");
> +
> +	return PTR_ERR_OR_ZERO(tpacpi_hwmon);
> +}
> +
>  static int __init thinkpad_acpi_module_init(void)
>  {
>  	const struct dmi_system_id *dmi_id;
> @@ -11964,37 +11972,19 @@ static int __init thinkpad_acpi_module_init(void)
>  		return ret;
>  	}
> 
> -	tpacpi_sensors_pdev = platform_device_register_simple(
> -						TPACPI_HWMON_DRVR_NAME,
> -						PLATFORM_DEVID_NONE, NULL, 0);
> +	tpacpi_sensors_pdev = platform_create_bundle(&tpacpi_hwmon_pdriver,
> +						     tpacpi_hwmon_pdriver_probe,
> +						     NULL, 0, NULL, 0);
>  	if (IS_ERR(tpacpi_sensors_pdev)) {
>  		ret = PTR_ERR(tpacpi_sensors_pdev);
>  		tpacpi_sensors_pdev = NULL;
> -		pr_err("unable to register hwmon platform device\n");
> +		pr_err("unable to register hwmon platform device/driver bundle\n");
>  		thinkpad_acpi_module_exit();
>  		return ret;
>  	}
> 
>  	tpacpi_lifecycle = TPACPI_LIFE_RUNNING;
> 
> -	ret = platform_driver_register(&tpacpi_hwmon_pdriver);
> -	if (ret) {
> -		pr_err("unable to register hwmon platform driver\n");
> -		thinkpad_acpi_module_exit();
> -		return ret;
> -	}
> -	tp_features.sensors_pdrv_registered = 1;
> -
> -	tpacpi_hwmon = hwmon_device_register_with_groups(
> -		&tpacpi_sensors_pdev->dev, TPACPI_NAME, NULL, tpacpi_hwmon_groups);
> -	if (IS_ERR(tpacpi_hwmon)) {
> -		ret = PTR_ERR(tpacpi_hwmon);
> -		tpacpi_hwmon = NULL;
> -		pr_err("unable to register hwmon device\n");
> -		thinkpad_acpi_module_exit();
> -		return ret;
> -	}
> -
>  	return 0;
>  }
> 
> -- 
> 2.48.1

Thanks for doing this.

For the series - all looks good and I tested on a X1 Carbon 12 and confirmed the Thinkpad devices are there under /sys/devices/thinkpad_acpi and /sys/class/hwmon. Didn't find any issues.

Reviewed-by: Mark Pearson <mpearson-lenovo@squebb.ca>
Tested-by: Mark Pearson <mpearson-lenovo@squebb.ca>

Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
