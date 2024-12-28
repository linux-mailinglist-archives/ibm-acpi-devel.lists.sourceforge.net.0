Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7209FD8E3
	for <lists+ibm-acpi-devel@lfdr.de>; Sat, 28 Dec 2024 04:32:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1tRNXv-0007T0-5D;
	Sat, 28 Dec 2024 03:31:23 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1tRNXt-0007Sk-MZ
 for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 28 Dec 2024 03:31:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:To:From:Date:MIME-Version:Sender:Reply-To:
 Cc:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oTCiyUx/+Iu2Q1iKJZ0C11ZHzMKd0uDToUXZUmnZC9g=; b=Gdsve4djNeIiUxeGR4z18tJM6t
 qw+s14CHFnlC39HzgyqHArgvf8LizSB50bh+9m+gbnFKh2s/0bEraApJIMLDP9ljufoJAzIBKy+uE
 xlcuCMlsFZ1T0GTLmzyT0CEQO/eL9kRcHNIwkfz5qCuAqkpEtOMDil4lFbPiovdSAI90=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:To:From:Date:MIME-Version:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oTCiyUx/+Iu2Q1iKJZ0C11ZHzMKd0uDToUXZUmnZC9g=; b=WHYWJ5Nidni9iD7KYWxsFqBro5
 vnWXBUYka+iTaWecasYbgTwyBmDBGbEypOlGdniljIVcsFOQcNYK1lb0jZVwcyA0FY4FriOdK40Pz
 hwezyf8q4kicO5Gik2741Q/Resxu1LOUFoe5jaKFBJUMTvGrd970As2+xA00KcsGOsgA=;
Received: from fout-b7-smtp.messagingengine.com ([202.12.124.150])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tRNXs-0002yg-J9 for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 28 Dec 2024 03:31:21 +0000
Received: from phl-compute-02.internal (phl-compute-02.phl.internal
 [10.202.2.42])
 by mailfout.stl.internal (Postfix) with ESMTP id D24E51140145;
 Fri, 27 Dec 2024 22:12:13 -0500 (EST)
Received: from phl-imap-10 ([10.202.2.85])
 by phl-compute-02.internal (MEProxy); Fri, 27 Dec 2024 22:12:14 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :content-transfer-encoding:content-type:content-type:date:date
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm3; t=1735355533;
 x=1735441933; bh=oTCiyUx/+Iu2Q1iKJZ0C11ZHzMKd0uDToUXZUmnZC9g=; b=
 Gx0uFCW9SJyIgblSonOVxISR1yFbwePs54I9de9HxcgQSj9aL/JbT8rUn671jL3j
 4R2WB/qfQK6pFy1dM485GtJW895iJ1ltZUhpBeLmqZFXK28J2NhVEJxBRJRhKkfg
 P8aq5nVwHfuUMvsTnbfcyGL3dMqNZUzk+nlSpIMpG8EuGTUhNri4v+YbU1XpugeI
 /Y7kiDGwy3euuFK9ennxzuyXczlEgiOpt3kiSerKQRhrQ5LgjWhQVmRuBnQrnjly
 IdQs7Tk5Tzfd0ioiwfCbJx1DDCeXkZU4VOROExuK8ZbxTZrz9lqwiUa5rTXR7jfw
 TCxgTgQlyHf9Ku4B0D8C2g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; t=1735355533; x=1735441933; bh=o
 TCiyUx/+Iu2Q1iKJZ0C11ZHzMKd0uDToUXZUmnZC9g=; b=Uh273FYS3gHKEoK4R
 BdVwb6CxtzjnDIPIz6ZHIHUV3KpxjovBarjzpVtQ5DmHFDwGzx/l1Pq3Dy0oiJdD
 QtNYwHwDgjdNLaIHxZnILrZ8VR/fAHNXtMmEJ2SNFnRSVX/3pdwc3c7p4om6U7+2
 Lf0Kdp5ke6TEBCeKHtAeZcPfbjNQuODh4WGe/P9OwqT4nFpthIKQwVGRPuCVWuFJ
 1x307Z2f1pf4kW0i+7m0U/kyRSJHjDFTnJQM4v864RtWC2e4GBhzp3gvYr35W/eF
 J0qPHYxzRQqGlsgDJ2nP5XRIzDl2htI/Fkx5elSD0FMhWUD8FFrCuydaJKnkoCt3
 mfzLw==
X-ME-Sender: <xms:jGxvZwy4sS39aHXLwBjqhFoym18o1Fd48g2GJgX4NyPTjPaMTVZOKQ>
 <xme:jGxvZ0RBDHtlDP8rLFVDXAbuuEZ8VKzOEOI2DuQjti0DKhGjzFrj8NSH_x4or6EY8
 lp2AwhqL38CFFHVa4A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefuddruddvuddgheegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
 htshculddquddttddmnecujfgurhepofggfffhvffkjghfufgtgfesthejredtredttden
 ucfhrhhomhepfdforghrkhcurfgvrghrshhonhdfuceomhhpvggrrhhsohhnqdhlvghnoh
 hvohesshhquhgvsggsrdgtrgeqnecuggftrfgrthhtvghrnhepkeffuedtveekjeeukefg
 leejgeetleduueetudefudehfefhheefleehheffffeknecuvehluhhsthgvrhfuihiivg
 eptdenucfrrghrrghmpehmrghilhhfrhhomhepmhhpvggrrhhsohhnqdhlvghnohhvohes
 shhquhgvsggsrdgtrgdpnhgspghrtghpthhtohepledpmhhouggvpehsmhhtphhouhhtpd
 hrtghpthhtohepvhhishhhnhhuohgtvhesghhmrghilhdrtghomhdprhgtphhtthhopehh
 mhhhsehhmhhhrdgvnhhgrdgsrhdprhgtphhtthhopehilhhpohdrjhgrrhhvihhnvghnse
 hlihhnuhigrdhinhhtvghlrdgtohhmpdhrtghpthhtohepihgsmhdqrggtphhiqdguvghv
 vghlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtoheptghorh
 gsvghtsehlfihnrdhnvghtpdhrtghpthhtohephhguvghgohgvuggvsehrvgguhhgrthdr
 tghomhdprhgtphhtthhopehlihhnuhigqdguohgtsehvghgvrhdrkhgvrhhnvghlrdhorh
 hgpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdho
 rhhgpdhrtghpthhtohepphhlrghtfhhorhhmqdgurhhivhgvrhdqgiekieesvhhgvghrrd
 hkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:jGxvZyU664AmucSeaTASHjGo43K8Kr-oGvCL1NDacU9anNXPx_W-iw>
 <xmx:jGxvZ-hrZC9l0yYREqQ4xg_3rnzZkRdQuWLEnBvCtCiMg8XLPtHzEQ>
 <xmx:jGxvZyAm2Ew_dmg9WNctaH1X2qkX6v_pFeUHthO9n-1I1ZpJGDID2A>
 <xmx:jGxvZ_KXr1DAOJu36RvCZi1mC_HAB0Fx2t-yK1VbyGn5lhJWKWmOYw>
 <xmx:jWxvZ-31oAL9Wu_ORlA_bfWhjcmNQmY-QqwtjVfCVVpeZBihAIXLMlMI>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id 030473C0066; Fri, 27 Dec 2024 22:12:12 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
Date: Fri, 27 Dec 2024 22:11:51 -0500
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Vishnu Sankar" <vishnuocv@gmail.com>, "Jonathan Corbet" <corbet@lwn.net>, 
 "Henrique de Moraes Holschuh" <hmh@hmh.eng.br>,
 "Hans de Goede" <hdegoede@redhat.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 ibm-acpi-devel@lists.sourceforge.net,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>
Message-Id: <48ae0687-0426-48d0-8f50-0b8f4e849697@app.fastmail.com>
In-Reply-To: <20241227231840.21334-1-vishnuocv@gmail.com>
References: <20241227231840.21334-1-vishnuocv@gmail.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Thanks Vishnu, On Fri, Dec 27, 2024, at 6:18 PM,
 Vishnu Sankar
 wrote: > F8 mode key on Lenovo 2025 platforms use a different key code. >
 Adding support for the new keycode 0x1401. > > Tested on X1 Carbon Gen 13
 and [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [202.12.124.150 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [202.12.124.150 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [202.12.124.150 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1tRNXs-0002yg-J9
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad-acpi: Add
 support for hotkey 0x1401
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Thanks Vishnu,

On Fri, Dec 27, 2024, at 6:18 PM, Vishnu Sankar wrote:
> F8 mode key on Lenovo 2025 platforms use a different key code.
> Adding support for the new keycode 0x1401.
>
> Tested on X1 Carbon Gen 13 and X1 2-in-1 Gen 10.
>
> Signed-off-by: Vishnu Sankar <vishnuocv@gmail.com>
> ---
>  Documentation/admin-guide/laptops/thinkpad-acpi.rst | 10 +++++++---
>  drivers/platform/x86/thinkpad_acpi.c                |  4 +++-
>  2 files changed, 10 insertions(+), 4 deletions(-)
>
> diff --git a/Documentation/admin-guide/laptops/thinkpad-acpi.rst 
> b/Documentation/admin-guide/laptops/thinkpad-acpi.rst
> index 7f674a6cfa8a..4ab0fef7d440 100644
> --- a/Documentation/admin-guide/laptops/thinkpad-acpi.rst
> +++ b/Documentation/admin-guide/laptops/thinkpad-acpi.rst
> @@ -445,8 +445,10 @@ event	code	Key		Notes
>  0x1008	0x07	FN+F8		IBM: toggle screen expand
>  				Lenovo: configure UltraNav,
>  				or toggle screen expand.
> -				On newer platforms (2024+)
> -				replaced by 0x131f (see below)
> +				On 2024 platforms replaced by
> +				0x131f (see below) and on newer
> +				platforms (2025 +) keycode is
> +				replaced by 0x1401 (see below).
> 
>  0x1009	0x08	FN+F9		-
> 
> @@ -506,9 +508,11 @@ event	code	Key		Notes
> 
>  0x1019	0x18	unknown
> 
> -0x131f	...	FN+F8	        Platform Mode change.
> +0x131f	...	FN+F8		Platform Mode change (2024 systems).
>  				Implemented in driver.
> 
> +0x1401	...	FN+F8		Platform Mode change (2025 + systems).
> +				Implemented in driver.
>  ...	...	...
> 
>  0x1020	0x1F	unknown
> diff --git a/drivers/platform/x86/thinkpad_acpi.c 
> b/drivers/platform/x86/thinkpad_acpi.c
> index 6371a9f765c1..2cfb2ac3f465 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -184,7 +184,8 @@ enum tpacpi_hkey_event_t {
>  						   */
>  	TP_HKEY_EV_AMT_TOGGLE		= 0x131a, /* Toggle AMT on/off */
>  	TP_HKEY_EV_DOUBLETAP_TOGGLE	= 0x131c, /* Toggle trackpoint doubletap 
> on/off */
> -	TP_HKEY_EV_PROFILE_TOGGLE	= 0x131f, /* Toggle platform profile */
> +	TP_HKEY_EV_PROFILE_TOGGLE	= 0x131f, /* Toggle platform profile in 
> 2024 systems */
> +	TP_HKEY_EV_PROFILE_TOGGLE2	= 0x1401, /* Toggle platform profile in 
> 2025 + systems */
> 
>  	/* Reasons for waking up from S3/S4 */
>  	TP_HKEY_EV_WKUP_S3_UNDOCK	= 0x2304, /* undock requested, S3 */
> @@ -11200,6 +11201,7 @@ static bool tpacpi_driver_event(const unsigned 
> int hkey_event)
>  		tp_features.trackpoint_doubletap = !tp_features.trackpoint_doubletap;
>  		return true;
>  	case TP_HKEY_EV_PROFILE_TOGGLE:
> +	case TP_HKEY_EV_PROFILE_TOGGLE2:
>  		platform_profile_cycle();
>  		return true;
>  	}
> -- 
> 2.45.2

Looks good to me.
Reviewed-by: Mark Pearson <mpearson-lenovo@squebb.ca>

Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
