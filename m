Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7451C89C7F4
	for <lists+ibm-acpi-devel@lfdr.de>; Mon,  8 Apr 2024 17:16:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rtqjc-0005Hj-R5;
	Mon, 08 Apr 2024 15:16:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1rtqjX-0005Ha-Kz
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 08 Apr 2024 15:16:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MeGqRsPK4F4ifIoW4vFpk0vD/NLFxc1zuaV/atwBur0=; b=e4B6hit31AzyVRtYDrdAYIvegz
 rQ0D79BfKMkmiHmJSRvgQbgsn4Y+T/hM6WxzDrd+32BOjBzdLuUIJ6F6U6h180s6Q5mTRlDbQVL86
 cK4e/z7NwY/bFGQpU1QjzrYg20u0EjJQ1YLVO1j18A46YPoiI+GowXIxEMZ5ewDsfGFE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MeGqRsPK4F4ifIoW4vFpk0vD/NLFxc1zuaV/atwBur0=; b=kM8T44aN14swbai7PDP8WT0HpG
 cU2FprRqitAQTp8eEH1yeQ/+DmVhczMfwD0dRteYY1mA5Ht8xY3wr12zD7qCcDaD2Xdu6Btym5AF3
 dpeLTgdHp6Axc/5f04KRfilcLSRf6Y0lPSZbP265ztbcdO+2bGodEJ5wLLPGNnyOVUZ0=;
Received: from wfhigh5-smtp.messagingengine.com ([64.147.123.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rtqjU-00026j-4K for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 08 Apr 2024 15:16:31 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailfhigh.west.internal (Postfix) with ESMTP id 6C7A418000BE;
 Mon,  8 Apr 2024 10:56:52 -0400 (EDT)
Received: from imap52 ([10.202.2.102])
 by compute3.internal (MEProxy); Mon, 08 Apr 2024 10:56:53 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to; s=fm3; t=1712588211; x=1712674611; bh=MeGqRsPK4F
 4ifIoW4vFpk0vD/NLFxc1zuaV/atwBur0=; b=AWwPDu5/kyr24uHVM4uQ1TcF4c
 dlRaoPT9j3sewvdWF4MOtn7QtFHUaGcB40Ij45ZcqBh+1HeFyT4rn4Gy4LUak+Q1
 l+1Te/Al3Nwx4eiJcpLk46gXax29QyfftLh8mSkdtbOJNxYkPPkyfquC5k6V8wfv
 pCzFFkQWDHZTB5QGduj+FLhZZ7875QdsLV4DwYB2obspOyCgZVmEsT+D9qWptkkN
 XBRJS0rQMCHqUNjUaYA22+3MacZxYKK9+vhAnVbSiJzCag0RrP7NpQFC2xvvoGNC
 vKKKijGjx+GMbPlmVCR8ClruhwgkOlE3DGdsysbX6p10lzF2woZtalwO6xmA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1712588211; x=1712674611; bh=MeGqRsPK4F4ifIoW4vFpk0vD/NLF
 xc1zuaV/atwBur0=; b=fMKeOxcsQ7NLCpxPRD6Zq0n88uV8G4ecCumCkylg9M/4
 YKnzsThGqT8LMLz7gOKDMgjf61kheWkXv4HHaZs53iO6Qw7gzC/bgCXJimxuk+Rj
 qEm4VTE+vqoM3FalnbZy5IJ/vI05XZBArOUz7xjz8KLFju+k4orK5hL77baQ7lJO
 Xhn8/xd5TW8hEd7YawFBeLeTxv/W50L/ZcdpmbCVc1Bx6u+dcSFYMQ4ILIgaJdgf
 RdorEQrl1OUHcwK3wBsc+JOKsJC3t+aLesjk37xO5kj39iIPDfvaZrOCQYiuLhf9
 8/eniR1cHV3QwQK0amjz91R4pylTixxmRZNhulieLQ==
X-ME-Sender: <xms:swUUZofagPIBlHj2SMQeFMY-V3WH0k0F2RD8LasE798wuC8CYWPcOw>
 <xme:swUUZqNxnNMlD0IF0yidcHOksCYpb09JuE3Mr813FytFNQpzKFBU3wuX4nT4AT7W4
 Hjgf6v0Ml8_8TFzwxQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudegiedgkedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvfevufgtsehttdertderredtnecuhfhrohhmpedfofgr
 rhhkucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssg
 drtggrqeenucggtffrrghtthgvrhhnpeeiueefjeeiveetuddvkeetfeeltdevffevudeh
 ffefjedufedvieejgedugeekhfenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmh
 epmhgrihhlfhhrohhmpehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggr
X-ME-Proxy: <xmx:swUUZpgsWbsiDz8F8gl9PX3LJ1xtXrv3re3wv-sDUW3_O4m7Cc2ZFw>
 <xmx:swUUZt_4CxQrwv7RobF8FXWzu5AjwNvIsWOq-Z0VJT1OiHEjWkViGQ>
 <xmx:swUUZksViVYcZGfnB6Rvk0gCuJG9Txp9ZhS_gs_4wt_1paWAJVcsJA>
 <xmx:swUUZkEPii1grCxAZw6HWnCnqmLFEzySfXspD-Ce65N0UyvPITMhtQ>
 <xmx:swUUZlmQW2GMXE45buRb4_I4Hdw6wN4Pn-k-PkYLmOZrRdgkhew2AzxR>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 90F70C60097; Mon,  8 Apr 2024 10:56:51 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.11.0-alpha0-368-gc733b1d8df-fm-20240402.001-gc733b1d8
MIME-Version: 1.0
Message-Id: <97f369ee-18b2-4e34-9e08-69329ca2193b@app.fastmail.com>
In-Reply-To: <a2237f76-dae6-4198-b393-7d0c18224205@redhat.com>
References: <mpearson-lenovo@squebb.ca>
 <20240324210817.192033-1-mpearson-lenovo@squebb.ca>
 <20240324210817.192033-4-mpearson-lenovo@squebb.ca>
 <a2237f76-dae6-4198-b393-7d0c18224205@redhat.com>
Date: Mon, 08 Apr 2024 10:56:54 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Hans de Goede" <hdegoede@redhat.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Thanks Hans On Mon, Apr 8, 2024, at 9:11 AM, Hans de Goede
 wrote: > Hi, > > On 3/24/24 10:08 PM,
 Mark Pearson wrote: >> New Lenovo platforms
 are adding the FN+N key to generate system debug >> details that suppor [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.156 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1rtqjU-00026j-4K
Subject: Re: [ibm-acpi-devel] [PATCH 3/4] platform/x86: thinkpad_acpi:
 Support for system debug info hotkey
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
Cc: dmitry.torokhov@gmail.com, linux-kernel@vger.kernel.org,
 "platform-driver-x86@vger.kernel.org"
 <platform-driver-x86@vger.kernel.org>, Vishnu Sankar <vsankar@lenovo.com>,
 ibm-acpi-devel@lists.sourceforge.net,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>, linux-input@vger.kernel.org,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Peter Hutterer <peter.hutterer@redhat.com>, Nitin Joshi1 <njoshi1@lenovo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Thanks Hans

On Mon, Apr 8, 2024, at 9:11 AM, Hans de Goede wrote:
> Hi,
>
> On 3/24/24 10:08 PM, Mark Pearson wrote:
>> New Lenovo platforms are adding the FN+N key to generate system debug
>> details that support can use for collecting important details on any
>> customer cases for Windows.
>> Add the infrastructure so we can do the same on Linux by generating a
>> SYS_DEBUG_INFO keycode to userspace.
>> 
>> Signed-off-by: Mark Pearson <mpearson-lenovo@squebb.ca>
>> Signed-off-by: Nitin Joshi <njoshi1@lenovo.com>
>> ---
>>  drivers/platform/x86/thinkpad_acpi.c | 4 ++++
>>  1 file changed, 4 insertions(+)
>> 
>> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
>> index 2bbb32c898e9..854ce971bde2 100644
>> --- a/drivers/platform/x86/thinkpad_acpi.c
>> +++ b/drivers/platform/x86/thinkpad_acpi.c
>> @@ -1787,6 +1787,7 @@ enum {	/* hot key scan codes (derived from ACPI DSDT) */
>>  	TP_ACPI_HOTKEYSCAN_NOTIFICATION_CENTER,
>>  	TP_ACPI_HOTKEYSCAN_PICKUP_PHONE,
>>  	TP_ACPI_HOTKEYSCAN_HANGUP_PHONE,
>> +	TP_ACPI_HOTKEYSCAN_SYS_DEBUG_INFO = 81,
>>  
>>  	/* Hotkey keymap size */
>>  	TPACPI_HOTKEY_MAP_LEN
>> @@ -3337,6 +3338,9 @@ static int __init hotkey_init(struct ibm_init_struct *iibm)
>>  		KEY_NOTIFICATION_CENTER,	/* Notification Center */
>>  		KEY_PICKUP_PHONE,		/* Answer incoming call */
>>  		KEY_HANGUP_PHONE,		/* Decline incoming call */
>> +		KEY_UNKNOWN,			/* AMT Toggle (event), 0x31A */
>> +		KEY_UNKNOWN, KEY_UNKNOWN,
>> +		KEY_SYS_DEBUG_INFO,             /* System debug info, 0x31D */
>>  		},
>>  	};
>>  
>
> Looking at the next patch 0x131c is TP_HKEY_EV_DOUBLETAP_TOGGLE and 0x131a is
> TP_HKEY_EV_AMT_TOGGLE based on this please change this to:
>
>   		KEY_NOTIFICATION_CENTER,	/* Notification Center */
>   		KEY_PICKUP_PHONE,		/* Answer incoming call */
>   		KEY_HANGUP_PHONE,		/* Decline incoming call */
> 		KEY_UNKNOWN,			/* TP_HKEY_EV_AMT_TOGGLE handled in driver, 0x31a */
> 		KEY_UNKNOWN,			/* ?, 0X31b */
> 		KEY_UNKNOWN,			/* TP_HKEY_EV_DOUBLETAP_TOGGLE handled in driver, 0x31c */
> 		KEY_SYS_DEBUG_INFO,             /* System debug info, 0x31d */
> 		},
>
Will do

Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
