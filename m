Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 27AE87AD8BC
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 25 Sep 2023 15:16:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1qklRS-0007Uz-4g;
	Mon, 25 Sep 2023 13:16:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1qklRR-0007Uk-1U
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 25 Sep 2023 13:16:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GuYaxQnJLWNAfmB5LaJ/NWEiM96TNXNxEIYmi/0fQfA=; b=CC/HvILLXFinX4CIva9xxrWNVV
 MImDfHLw3rLX+cYaG+DoeuCeFWufEBNnN3lXKUjhAC/yIe31Cb4pFpqNRC1HlZb7+IYMsymZUq/qW
 HCxZ2bS9NUT6k/OKTRmQbtD/hkb+aebAdqMEyyRU/p+qCQiMuoI02NHf3ipwOYqNI7Cg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GuYaxQnJLWNAfmB5LaJ/NWEiM96TNXNxEIYmi/0fQfA=; b=mN+RZ7bLWhe5fqVse7YqBfHmCK
 ppf8rxPDlUPdpQMp5v/ogBlV7ePiO1QxJQTFbyYOll3Sd9pMLhDgXPGOv4Rmd0QtuXZWZvR1Cxbmj
 9FtgxDs0sSQ0vcVO8V1ZXF/rjW6aSxdCbLyryrgOBmWrXKwZA4Ie23UjfMUe23gv/rec=;
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qklRN-005tGR-Gv for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 25 Sep 2023 13:16:01 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id 0064D5C26F7;
 Mon, 25 Sep 2023 08:56:24 -0400 (EDT)
Received: from imap52 ([10.202.2.102])
 by compute5.internal (MEProxy); Mon, 25 Sep 2023 08:56:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to; s=fm3; t=1695646584; x=1695732984; bh=Gu
 YaxQnJLWNAfmB5LaJ/NWEiM96TNXNxEIYmi/0fQfA=; b=PqZbUoiAyGkzFKLha3
 Psvg7JkD+vdeOtZsc+v2Qtv5fzlZFsgi/RiWmOQabYiP7AzDSxvjC+NN3w9SVy45
 /Ck0yHNVq0kmP9Zj6ZxoADe4ETOIf1gBbgmdUJdEKs/EYHY3UukpfsbZZHtBC8qc
 1SWC48hL0qesGSlX/PB53rV1GOfI/27m12q9G8oNBJnqhI1gexDCAEB/acEfIhqp
 hV07Aq1gKn47czQTGlrIpURiNUWAuqIES3dEJudEajVfgVbccw1iuR4FMrMx8Z2U
 ChkQvhunKUpXApOs/KwGd0zenlfldjOmd+wGaVYHMsIUln3xYB3wWTMRzPJG1rRl
 ClOQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; t=1695646584; x=1695732984; bh=GuYaxQnJLWNAf
 mB5LaJ/NWEiM96TNXNxEIYmi/0fQfA=; b=YizDOkAcYDPJNJIKsg0K5Xa5pYa3F
 6MvMQDB12OFvC8DDmu2Tmie4kerF2y6wpyyyxXt0wh5/TVyc5Wrouhcj/mSudzjG
 jmpA36KMdV4PkS0gSj9R05u9U9mS4hWebpMPqEPYK9458DIvaBnERdpF4jd8sNMl
 d/0vNSt/1eB6ni8ddjTe6SUWCDWuly7Aao2cxuMyZbroRt4HG3tRSRU9is+uYRLl
 UyPatJIbT8+Aj9mfa133KZf/KvNpn86Oc3V3CPNr7lxWLNAum354HOI5iuvxmbPL
 iBHYETn8evveD5HYqOm69tQdRfmxqBUPsW//Lw4/oEBzZjWWb5dVwu2Qg==
X-ME-Sender: <xms:eIMRZc188YaI18If8_Qi0hYPJBOurGH-1f4svv21vjCxeTDHHfu1HA>
 <xme:eIMRZXFt5IXq1MxSu01uk3IfDih-IM5az3pTX1XL3w-8AQKqVBtRcE8N7M2zEmsPb
 kpJSY2auUO4eMPouYM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedviedrudelgedgheejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvfevufgtsehttdertderredtnecuhfhrohhmpedfofgr
 rhhkucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssg
 drtggrqeenucggtffrrghtthgvrhhnpeeivedtkeeftdefhfdugfelgeehieeivdefffek
 jeetuddvueeijefgjeekudevtdenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecuve
 hluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhhpvggrrhhs
 ohhnqdhlvghnohhvohesshhquhgvsggsrdgtrg
X-ME-Proxy: <xmx:eIMRZU53IhaB_TWRcOGvjRTJGadg-HQHeLtDdNuC3hpildY0fACE8w>
 <xmx:eIMRZV1MqEjvvSVTqacPFM3Lh1nbeR7ZJPKTb3JmsGh7iHHhfyiiXQ>
 <xmx:eIMRZfHVQ2w-HVNxjSu2qd0c55A3N58R3Tqit6uHDQgXsRt2bG3GyQ>
 <xmx:eIMRZU6vmz7suZuPg1Oh-DggHz2EcWQgVuZhVHsxZ6QS-c0GdrBSzg>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 75C14C6008B; Mon, 25 Sep 2023 08:56:24 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-761-gece9e40c48-fm-20230913.001-gece9e40c
MIME-Version: 1.0
Message-Id: <de3914ef-6f35-47c2-b2da-a509c775ebd8@app.fastmail.com>
In-Reply-To: <e86b094a-f55a-4bdd-9d98-5710567c54cb@kernel.org>
References: <047d3c51-0a9e-4c3e-beef-625a7aa4f3c3@kernel.org>
 <505264f5-cbbb-4ffe-a3e4-93d2397e80da@kernel.org>
 <beeab87b-820a-475a-b0c6-99b1b8e491ea@kernel.org>
 <207922c7-7a56-499b-bbfd-9e8d6a0a06df@kernel.org>
 <74ad10fa-f0f6-f80f-7db3-fb01aae6f2d5@redhat.com>
 <e86b094a-f55a-4bdd-9d98-5710567c54cb@kernel.org>
Date: Mon, 25 Sep 2023 08:56:04 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Jiri Slaby" <jirislaby@kernel.org>, "Hans de Goede" <hdegoede@redhat.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, "Len Brown" <lenb@kernel.org>,
 "Henrique de Moraes Holschuh" <hmh@hmh.eng.br>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Thanks Hans & Jiri, On Mon, Sep 25, 2023, at 5:15 AM, Jiri
 Slaby wrote: > Hi, > > On 25. 09. 23, 10:57, Hans de Goede wrote: >> Jiri,
 Thank you for all the debugging you have done on this. Can you please file
 >> a bug wi [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.28 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qklRN-005tGR-Gv
Subject: Re: [ibm-acpi-devel] WARNING at drivers/acpi/platform_profile.c:74
 in platform_profile_show()
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
Cc: "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 "platform-driver-x86@vger.kernel.org"
 <platform-driver-x86@vger.kernel.org>,
 Linux kernel mailing list <linux-kernel@vger.kernel.org>,
 ibm-acpi-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Thanks Hans & Jiri,

On Mon, Sep 25, 2023, at 5:15 AM, Jiri Slaby wrote:
> Hi,
>
> On 25. 09. 23, 10:57, Hans de Goede wrote:
>> Jiri, Thank you for all the debugging you have done on this. Can you please file
>> a bug with the details / summary here:
>> 
>> https://bugzilla.kernel.org/enter_bug.cgi?product=Drivers
>> 
>> Using Platform_x86 as component so that Mark has all the info in one place ?
>
> Done:
> https://bugzilla.kernel.org/show_bug.cgi?id=217947
>
Ack - replied to the ticket with details. 

We'll need to debug what is going on and I think I need a patch to improve the PSC vs AMT mode detection (and handling the error to....)

Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
