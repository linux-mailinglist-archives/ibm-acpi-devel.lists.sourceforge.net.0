Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 13E0B9B2CD1
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 28 Oct 2024 11:26:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1t5Mwu-0006DI-94;
	Mon, 28 Oct 2024 10:26:12 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1t5Mws-0006D9-At
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 28 Oct 2024 10:26:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sar9VsxVQKkAejXjEiNOhId5O63SyubO6yyvZ3N3wos=; b=ZoYtLEN65rQD/t1u0sa2zUkCak
 PPC9RNH6lzFL44rcnPjUVhmGxKJ3jEH/pFkEkg7FuUpGnyeO38TgbcwA8YzYw/jK7axU7/xxHNolD
 TkpZXzZHZ6nX+F2P395/ZS8Z/SrNuJwYCWTVfCrJ8otdAvcn8Kz+YPIM6rkTedtxkyzw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sar9VsxVQKkAejXjEiNOhId5O63SyubO6yyvZ3N3wos=; b=D2XZuhVMx3DOw/WFdQNa6uxzl1
 V9OTa94XswItLSifPh2pkZZ9N1iozMJDt6af6UwKIlXbU1IFHNENW6fyBOiWWZU2Bs5QNl1P/jxnQ
 B2Mcz65D5RUpK58jaYJ1O6SqondZ6kFxuPpdY5oFjDUTWr+E9cveq4V9cq/y7LICiVgQ=;
Received: from fhigh-b1-smtp.messagingengine.com ([202.12.124.152])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t5Mwr-0002IB-DF for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 28 Oct 2024 10:26:10 +0000
Received: from phl-compute-02.internal (phl-compute-02.phl.internal
 [10.202.2.42])
 by mailfhigh.stl.internal (Postfix) with ESMTP id A4E0825400E3;
 Mon, 28 Oct 2024 06:09:15 -0400 (EDT)
Received: from phl-imap-10 ([10.202.2.85])
 by phl-compute-02.internal (MEProxy); Mon, 28 Oct 2024 06:09:16 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm1; t=1730110155;
 x=1730196555; bh=sar9VsxVQKkAejXjEiNOhId5O63SyubO6yyvZ3N3wos=; b=
 Uj6S+w3EsK7vBGgYgRiNHAeBCOjO+hluLm/ZDEx16mTCxKPnbtQc8xJN4zWjXo+i
 +ddku4qMcPJ4Jw/zggHuT75VDnU8ZB3nKvJYcDaZDuaS27FunM5GfPsxHW9Tfzuu
 Cro6LlUUFiT3fc3XJjrii9/UpciZIgUsh5p+Z5/uR02KoApd9QNbWhPpOvXPyQ+B
 aQkqN3xyfaRQOw/2BQOwtyWCm79QhePNv0GlARInbliOp54dZEb7ZsyojJbhQPn9
 r6VMhLdWFNeHxR8quV3svsp6W/NBihxCzkHKMudb76Qf7ZODKsfrhJZpf5E/DKuu
 cMoPfN3bYbLpzOAn9uloKA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1730110155; x=
 1730196555; bh=sar9VsxVQKkAejXjEiNOhId5O63SyubO6yyvZ3N3wos=; b=m
 06uzmj6UrsA6Qz3BrugQ3VMh8EJHifVlKz31dTerIC8Nc/uYJ4vxWwKugOAsdHQc
 ZoIxWHi13/tWPB1tYPW9PQzDqAkk7vYETZ9YVuF0SGdhtTeEr4kR7APZvdpTZGNZ
 LhgaO7P0KHxKCzoKGcZ2Gd/wLN24FIyHAz1CjRPorRe8mkO+R1cNmk3fMp7l/5mq
 Wo0zaS0ei9YUl+ndJbphQ9OGE8UTvPmlt7h+9wWZek9J4PMddY/5TT0P1PUTiRgG
 hV39SjLaYHGOK3sc0cSJqLSgPd7CoFJc7alnXef37CD81ZGzA5ggtuCPwGkY2h2r
 lzQsS58+Gn0bbevWyJeEA==
X-ME-Sender: <xms:ymIfZ7DP-SF0NnlxihdXVJPG84rrLBdEZwOv9RMk9xt6oZPm-6UdbA>
 <xme:ymIfZxiqK0ZpDAGFME6hJUvwyIb-i0TZyjXOTUBUnVJOw2IIJs5qEPhPA4zoOKn6X
 BN07IVqGFvXKw7OlCo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrvdejkedgudduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
 htshculddquddttddmnecujfgurhepofggfffhvfevkfgjfhfutgfgsehtjeertdertddt
 necuhfhrohhmpedfofgrrhhkucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdqlhgvnh
 hovhhosehsqhhuvggssgdrtggrqeenucggtffrrghtthgvrhhnpefhuedvheetgeehtdeh
 tdevheduvdejjefggfeijedvgeekhfefleehkeehvdffheenucevlhhushhtvghrufhiii
 gvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehmphgvrghrshhonhdqlhgvnhhovhho
 sehsqhhuvggssgdrtggrpdhnsggprhgtphhtthhopedvuddpmhhouggvpehsmhhtphhouh
 htpdhrtghpthhtohepshhhhigrmhdqshhunhgurghrrdhsqdhksegrmhgurdgtohhmpdhr
 tghpthhtohepmhgrrhhiohdrlhhimhhonhgtihgvlhhlohesrghmugdrtghomhdprhgtph
 htthhopehikhgvrdhprghnsegtrghnohhnihgtrghlrdgtohhmpdhrtghpthhtoheprghl
 vgigsggvlhhmgeeksehgmhgrihhlrdgtohhmpdhrtghpthhtoheptghorhgvnhhtihhnrd
 gthhgrrhihsehgmhgrihhlrdgtohhmpdhrtghpthhtoheplhhuiihmrgigihhmihhlihgr
 nhesghhmrghilhdrtghomhdprhgtphhtthhopehhmhhhsehhmhhhrdgvnhhgrdgsrhdprh
 gtphhtthhopehsohihvghrsehirhhlrdhhuhdprhgtphhtthhopehlvghnsgeskhgvrhhn
 vghlrdhorhhg
X-ME-Proxy: <xmx:ymIfZ2lU6bB_nQCB6QBhlau5S4mCOfg0wNDw6Gt1fX5qugpWIGO-vw>
 <xmx:ymIfZ9yy3hjeaciaQQCLZdLt7xqyRPMJLVcbpCZWRpP9RS14dQJNJQ>
 <xmx:ymIfZwSUl5KDdYo8NaAWlKR78KTG9jzZOXYUKjxdAJvmq3Gzox5_Uw>
 <xmx:ymIfZwY6HAZmRpVLn3OBYd6TSHHOTOwv17FI7JRTaJEsJ62XvjaHsw>
 <xmx:y2IfZ5SmE_-4EeWtNR4G_HnlCuKLDtuqjDRmS9XG1jgOSEtuP99Fajk3>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id 5C2A73C0066; Mon, 28 Oct 2024 06:09:14 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
Date: Mon, 28 Oct 2024 06:08:54 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Limonciello, Mario" <mario.limonciello@amd.com>,
 "Hans de Goede" <hdegoede@redhat.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Message-Id: <67ce52b7-d63b-432d-8cad-50063c06c394@app.fastmail.com>
In-Reply-To: <20241025193055.2235-4-mario.limonciello@amd.com>
References: <20241025193055.2235-1-mario.limonciello@amd.com>
 <20241025193055.2235-4-mario.limonciello@amd.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Oct 25, 2024, at 3:30 PM, Mario Limonciello wrote:
 > To allow registering and unregistering multiple platform handlers calls
 > to platform_profile_remove() will need to know which handler is t [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [202.12.124.152 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1t5Mwr-0002IB-DF
Subject: Re: [ibm-acpi-devel] [PATCH 3/8] ACPI: platform_profile: Add
 platform handler argument to platform_profile_remove()
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
Cc: Alexis Belmonte <alexbelm48@gmail.com>,
 Shyam Sundar S K <Shyam-sundar.S-k@amd.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Gergo Koteles <soyer@irl.hu>,
 "Luke D . Jones" <luke@ljones.dev>, Ai Chao <aichao@kylinos.cn>,
 open list <linux-kernel@vger.kernel.org>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>,
 Lee Chun-Yi <jlee@suse.com>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 Corentin Chary <corentin.chary@gmail.com>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Ike Panhc <ike.pan@canonical.com>,
 Matthew Schwartz <matthew.schwartz@linux.dev>,
 Maximilian Luz <luzmaximilian@gmail.com>,
 "open list:THINKPAD ACPI EXTRAS DRIVER" <ibm-acpi-devel@lists.sourceforge.net>,
 Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net



On Fri, Oct 25, 2024, at 3:30 PM, Mario Limonciello wrote:
> To allow registering and unregistering multiple platform handlers calls
> to platform_profile_remove() will need to know which handler is to be
> removed.  Add an argument for this.
>
> Tested-by: Matthew Schwartz <matthew.schwartz@linux.dev>
> Signed-off-by: Mario Limonciello <mario.limonciello@amd.com>
> ---
>  drivers/acpi/platform_profile.c                     | 2 +-
>  drivers/platform/surface/surface_platform_profile.c | 2 +-
>  drivers/platform/x86/acer-wmi.c                     | 4 ++--
>  drivers/platform/x86/amd/pmf/sps.c                  | 2 +-
>  drivers/platform/x86/asus-wmi.c                     | 4 ++--
>  drivers/platform/x86/dell/dell-pc.c                 | 2 +-
>  drivers/platform/x86/hp/hp-wmi.c                    | 2 +-
>  drivers/platform/x86/ideapad-laptop.c               | 2 +-
>  drivers/platform/x86/inspur_platform_profile.c      | 4 +++-
>  drivers/platform/x86/thinkpad_acpi.c                | 2 +-
>  include/linux/platform_profile.h                    | 2 +-
>  11 files changed, 15 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/acpi/platform_profile.c 
> b/drivers/acpi/platform_profile.c
> index d2f7fd7743a13..c24744da20916 100644
> --- a/drivers/acpi/platform_profile.c
> +++ b/drivers/acpi/platform_profile.c
> @@ -205,7 +205,7 @@ int platform_profile_register(struct 
> platform_profile_handler *pprof)
>  }
>  EXPORT_SYMBOL_GPL(platform_profile_register);
> 
> -int platform_profile_remove(void)
> +int platform_profile_remove(struct platform_profile_handler *pprof)
>  {
>  	sysfs_remove_group(acpi_kobj, &platform_profile_group);
> 
> diff --git a/drivers/platform/surface/surface_platform_profile.c 
> b/drivers/platform/surface/surface_platform_profile.c
> index 958afd7bce223..0879b739c5e8b 100644
> --- a/drivers/platform/surface/surface_platform_profile.c
> +++ b/drivers/platform/surface/surface_platform_profile.c
> @@ -228,7 +228,7 @@ static int surface_platform_profile_probe(struct 
> ssam_device *sdev)
> 
>  static void surface_platform_profile_remove(struct ssam_device *sdev)
>  {
> -	platform_profile_remove();
> +	platform_profile_remove(&sdev->tpd->handler);
>  }
> 
>  static const struct ssam_device_id ssam_platform_profile_match[] = {
> diff --git a/drivers/platform/x86/acer-wmi.c 
> b/drivers/platform/x86/acer-wmi.c
> index 53fbc9b4d3df7..71761d4220c26 100644
> --- a/drivers/platform/x86/acer-wmi.c
> +++ b/drivers/platform/x86/acer-wmi.c
> @@ -2546,7 +2546,7 @@ static int acer_platform_probe(struct 
> platform_device *device)
> 
>  error_hwmon:
>  	if (platform_profile_support)
> -		platform_profile_remove();
> +		platform_profile_remove(&platform_profile_handler);
>  error_platform_profile:
>  	acer_rfkill_exit();
>  error_rfkill:
> @@ -2569,7 +2569,7 @@ static void acer_platform_remove(struct 
> platform_device *device)
>  	acer_rfkill_exit();
> 
>  	if (platform_profile_support)
> -		platform_profile_remove();
> +		platform_profile_remove(&platform_profile_handler);
>  }
> 
>  #ifdef CONFIG_PM_SLEEP
> diff --git a/drivers/platform/x86/amd/pmf/sps.c 
> b/drivers/platform/x86/amd/pmf/sps.c
> index e2d0cc92c4396..cfa88c0c9e594 100644
> --- a/drivers/platform/x86/amd/pmf/sps.c
> +++ b/drivers/platform/x86/amd/pmf/sps.c
> @@ -425,5 +425,5 @@ int amd_pmf_init_sps(struct amd_pmf_dev *dev)
> 
>  void amd_pmf_deinit_sps(struct amd_pmf_dev *dev)
>  {
> -	platform_profile_remove();
> +	platform_profile_remove(&dev->pprof);
>  }
> diff --git a/drivers/platform/x86/asus-wmi.c 
> b/drivers/platform/x86/asus-wmi.c
> index c7c104c65a85a..f5f8cda7fd19c 100644
> --- a/drivers/platform/x86/asus-wmi.c
> +++ b/drivers/platform/x86/asus-wmi.c
> @@ -4885,7 +4885,7 @@ static int asus_wmi_add(struct platform_device 
> *pdev)
>  fail_custom_fan_curve:
>  fail_platform_profile_setup:
>  	if (asus->platform_profile_support)
> -		platform_profile_remove();
> +		platform_profile_remove(&asus->platform_profile_handler);
>  fail_fan_boost_mode:
>  fail_platform:
>  	kfree(asus);
> @@ -4912,7 +4912,7 @@ static void asus_wmi_remove(struct 
> platform_device *device)
>  	asus_wmi_battery_exit(asus);
> 
>  	if (asus->platform_profile_support)
> -		platform_profile_remove();
> +		platform_profile_remove(&asus->platform_profile_handler);
> 
>  	kfree(asus);
>  }
> diff --git a/drivers/platform/x86/dell/dell-pc.c 
> b/drivers/platform/x86/dell/dell-pc.c
> index 3cf79e55e3129..4196154cc37d9 100644
> --- a/drivers/platform/x86/dell/dell-pc.c
> +++ b/drivers/platform/x86/dell/dell-pc.c
> @@ -273,7 +273,7 @@ static int thermal_init(void)
>  static void thermal_cleanup(void)
>  {
>  	if (thermal_handler) {
> -		platform_profile_remove();
> +		platform_profile_remove(thermal_handler);
>  		kfree(thermal_handler);
>  	}
>  }
> diff --git a/drivers/platform/x86/hp/hp-wmi.c 
> b/drivers/platform/x86/hp/hp-wmi.c
> index 26cac73caf2b9..bb8771d8b5cd8 100644
> --- a/drivers/platform/x86/hp/hp-wmi.c
> +++ b/drivers/platform/x86/hp/hp-wmi.c
> @@ -1692,7 +1692,7 @@ static void __exit hp_wmi_bios_remove(struct 
> platform_device *device)
>  	}
> 
>  	if (platform_profile_support)
> -		platform_profile_remove();
> +		platform_profile_remove(&platform_profile_handler);
>  }
> 
>  static int hp_wmi_resume_handler(struct device *device)
> diff --git a/drivers/platform/x86/ideapad-laptop.c 
> b/drivers/platform/x86/ideapad-laptop.c
> index 1f94c14c3b832..50819ac919e87 100644
> --- a/drivers/platform/x86/ideapad-laptop.c
> +++ b/drivers/platform/x86/ideapad-laptop.c
> @@ -1135,7 +1135,7 @@ static void ideapad_dytc_profile_exit(struct 
> ideapad_private *priv)
>  	if (!priv->dytc)
>  		return;
> 
> -	platform_profile_remove();
> +	platform_profile_remove(&priv->dytc->pprof);
>  	mutex_destroy(&priv->dytc->mutex);
>  	kfree(priv->dytc);
> 
> diff --git a/drivers/platform/x86/inspur_platform_profile.c 
> b/drivers/platform/x86/inspur_platform_profile.c
> index 03da2c8cf6789..f6bc5ca9da91d 100644
> --- a/drivers/platform/x86/inspur_platform_profile.c
> +++ b/drivers/platform/x86/inspur_platform_profile.c
> @@ -190,7 +190,9 @@ static int inspur_wmi_probe(struct wmi_device 
> *wdev, const void *context)
> 
>  static void inspur_wmi_remove(struct wmi_device *wdev)
>  {
> -	platform_profile_remove();
> +	struct inspur_wmi_priv *priv;
> +	priv = dev_get_drvdata(&wdev->dev);
> +	platform_profile_remove(&priv->handler);
>  }
> 
>  static const struct wmi_device_id inspur_wmi_id_table[] = {
> diff --git a/drivers/platform/x86/thinkpad_acpi.c 
> b/drivers/platform/x86/thinkpad_acpi.c
> index c8c316b8507a5..619a4db74e5f3 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -10637,7 +10637,7 @@ static int tpacpi_dytc_profile_init(struct 
> ibm_init_struct *iibm)
> 
>  static void dytc_profile_exit(void)
>  {
> -	platform_profile_remove();
> +	platform_profile_remove(&dytc_profile);
>  }
> 
>  static struct ibm_struct  dytc_profile_driver_data = {
> diff --git a/include/linux/platform_profile.h b/include/linux/platform_profile.h
> index 6fa988e417428..58279b76d740e 100644
> --- a/include/linux/platform_profile.h
> +++ b/include/linux/platform_profile.h
> @@ -36,7 +36,7 @@ struct platform_profile_handler {
>  };
> 
>  int platform_profile_register(struct platform_profile_handler *pprof);
> -int platform_profile_remove(void);
> +int platform_profile_remove(struct platform_profile_handler *pprof);
>  int platform_profile_cycle(void);
>  void platform_profile_notify(void);
> 
> -- 
> 2.43.0

Looks good to me.
Reviewed-by: Mark Pearson <mpearson-lenovo@squebb.ca>

Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
