Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C6833B19011
	for <lists+ibm-acpi-devel@lfdr.de>; Sat,  2 Aug 2025 23:26:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:References:In-Reply-To:Message-Id:To:From:Date:MIME-Version:Sender:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OVnWpYgQ/GufY3c2a1XdeJ+TAk2am1xKaPbalIfG4kU=; b=V1sVMSbFIsBs49xkq403iQ79+G
	SN0/qPeLBccTaIJa4m/wmOqY8pqTNjjwUUGHhqqQ17Lm+SybQ29NlG8WADYY1omNvxy/vF9r1i2W/
	QU1WecXxb6W2IYdxz51MtN8QeC23YaFEVCkQQtUm0AFXzu6QX37M8WPuOE7FQyKUqWEU=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uiJkF-0007hI-4z;
	Sat, 02 Aug 2025 21:26:23 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1uiJkC-0007hB-VB
 for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 02 Aug 2025 21:26:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:To:From:Date:MIME-Version:Sender:Reply-To:
 Cc:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IzIkVkhi5JkbxVD9Iwunmrz7bkfDVa0JeiQpnbpnr20=; b=EsM3i89AxW1ro/axhPiqI9FmTn
 i8kDCQnansAJldihtZw6Uh8PgWwxP4rWHcM4RV0ym+uCU7eSEMrnZTGRnaLYJA9xaXYLpcohWgwtR
 qc7Ul5q9kuU2uwFdFU3FA8aOrS8P+D50R9LFb2P9Hki2Z5UpNXC5BErEOXkASMcZv6ao=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:To:From:Date:MIME-Version:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IzIkVkhi5JkbxVD9Iwunmrz7bkfDVa0JeiQpnbpnr20=; b=lBAbI5plcmNMlRI94hIFY/qMYw
 6tbYQ2EmjcCghhzRznZIV77P4AuXk+U+Td6TwzTOGtaPBeMubyRWl2lB96LynihBkjLcSPsug4yfq
 EvIzgtqDrI9nV2mrwcG6Jb4eFVU2ifddFg3EFEB9XvGcjKCJ5f1NgroHa6Jql62P7L5M=;
Received: from fhigh-b2-smtp.messagingengine.com ([202.12.124.153])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uiJkB-0001eh-M0 for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 02 Aug 2025 21:26:20 +0000
Received: from phl-compute-12.internal (phl-compute-12.phl.internal
 [10.202.2.52])
 by mailfhigh.stl.internal (Postfix) with ESMTP id 5144D7A0359
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Sat,  2 Aug 2025 17:07:36 -0400 (EDT)
Received: from phl-imap-08 ([10.202.2.84])
 by phl-compute-12.internal (MEProxy); Sat, 02 Aug 2025 17:07:36 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :content-transfer-encoding:content-type:content-type:date:date
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm1; t=1754168856;
 x=1754255256; bh=IzIkVkhi5JkbxVD9Iwunmrz7bkfDVa0JeiQpnbpnr20=; b=
 HxhsF+TdNJ3JBsIvlbjBFzM3REu0rGJqtp2URKsgqO1+/7rLlKVaMYAZboWIuMeR
 6LtZRrw94oGYJF4zghFrHvGupOG65HLfzXU/IlHhwKuc0HePFA8YHRXWNR6u1XeP
 tUAHInAgFIPSDafXIPp9k5GvKj9hWutvENdYAXSqzaid9MGsM1wexQPnjviHMBSd
 AfEmAf1NAG5t2xJjIsbYUeTqt2xw20M7D42y2Zzzv6V7waakM6b1gvzFUvUg1bwh
 G1tV1JdzQP1qEoj7CPqUTqJ+kv6E1AXxxF35OKaLLwSSaOijsSKstxysCCeEJVZC
 IOGF1FTD0DvTOdbZOVOPnA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm3; t=1754168856; x=1754255256; bh=I
 zIkVkhi5JkbxVD9Iwunmrz7bkfDVa0JeiQpnbpnr20=; b=ZOYgkaYB6xAKWIfi7
 m6wc9rin1iyR2UYKkkBDReF+VbBDZ0RNsF7l3jhigYU1O1Dpul5vpg7+Uu7cM1Sm
 aWEmV6+BQuC0hlvBBtG8+xFaf3Zx9kxvy8xsG3rg4pdMGN1fy+3RZRQ28I2GjQPC
 ZfB1iuQ48WKq71xyfGb7qQZXFUVBkosEcOn8N82he3fnbL+PMbVa6Kb1TlkXzZE7
 hFcJIWhOX07KcBbQpydhcnOndyqaZZwneiy3wXRZLUe1rC43NEDfb3W4iO0tWmjn
 n296knGTG9yt1ZseEQsJo5zxrFeAMi2LHOSgPUyi16NzhqBfdebxSFADXYFpSrVS
 K5VpQ==
X-ME-Sender: <xms:F36OaH6Hk-4EYQoQnFB4JjsgGPKYwNRDLCZwnLLx4sMUCOvo-yj6QQ>
 <xme:F36OaM4AqpRLune2_szdUhmzzIAEnUrAlT_Wlw2VYwUOGuDE4e8ESpiPBWyjcFcJ8
 C1SwXyeYEOSy5X5hLY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgddutdejieduucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucgoufhushhpvggtthffohhmrghinhculdegledmnecujf
 gurhepofggfffhvffkjghfufgtgfesthejredtredttdenucfhrhhomhepfdforghrkhcu
 rfgvrghrshhonhdfuceomhhpvggrrhhsohhnqdhlvghnohhvohesshhquhgvsggsrdgtrg
 eqnecuggftrfgrthhtvghrnhepheeuvdeileeugfelkeeigffgteegvddvudehffetveev
 kefftdfhtdeileejveeunecuffhomhgrihhnpehsuhhpvghruhhsvghrrdgtohhmpdhsoh
 hurhgtvghfohhrghgvrdhnvghtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghm
 pehmrghilhhfrhhomhepmhhpvggrrhhsohhnqdhlvghnohhvohesshhquhgvsggsrdgtrg
 dpnhgspghrtghpthhtohepuddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepihgs
 mhdqrggtphhiqdguvghvvghlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvght
X-ME-Proxy: <xmx:F36OaNzWOJfItf-Sz84-vRd3_oOisgWGz5pC-uGcEksAjoemcH-2bw>
 <xmx:F36OaBgZMvAz_q-vmucnIbgaHJvO73x0q8ZrScMlVO3jEUQ9KZrhcQ>
 <xmx:F36OaCUsq_szF8QPZs0gxAXe_bi1OMTDJGYP9taoTnjOxwvpcl1oyw>
 <xmx:F36OaD0TpsjulqR5yef4_nfMNFu7PuHZK3SBMQgDLhDaZVYmbmBwgw>
 <xmx:GH6OaNjYr7-oiDeyVHyFGRYDnIBm-PLib4HTUEkvKyJ1OSsJ2hRD8ps9>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id CBAD12CE0072; Sat,  2 Aug 2025 17:07:35 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: T9ea20aea0e4cb3ff
Date: Sat, 02 Aug 2025 17:07:10 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: ibm-acpi-devel@lists.sourceforge.net
Message-Id: <6f141105-f9cd-44b6-a6c6-38eb6c3a6767@app.fastmail.com>
In-Reply-To: <CAEk1YH7qpNzVVxEAZJCVNd1iUUSfNy28G6sARrzjgoVNqPQYKg@mail.gmail.com>
References: <CAEk1YH7qpNzVVxEAZJCVNd1iUUSfNy28G6sARrzjgoVNqPQYKg@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi On Sat, Aug 2, 2025, at 4:16 PM, Damjan Georgievski wrote:
 > Hi all, > I have a user related question about the copilot button on recent
 > laptops, but in particular the Thinkpad X9-14 (LunarLake) > > [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1uiJkB-0001eh-M0
Subject: Re: [ibm-acpi-devel] Support Q: copilot button on thinkpad x9-14
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

Hi

On Sat, Aug 2, 2025, at 4:16 PM, Damjan Georgievski wrote:
> Hi all,
> I have a user related question about the copilot button on recent
> laptops, but in particular the Thinkpad X9-14 (LunarLake)
>
> The Copilot button, which when pressed generates a LEFT META + LEFT
> SHIFT + F23 key combination on  the "AT Translated Set 2 keyboard".
> Is this something that can be overridden somehow? Ideally I'd like it
> to become a right ctrl. Not sure if that can be done in the kernel, in
> the BIOS or
> I should be looking at some user-space solution
>
That's the correct keycode for that button (as per Microsoft design) and there isn't anything in the BIOS/FW to change it I'm afraid (interesting idea though - I'll ask the FW team if it's something we can consider for future platforms because it would be nice)

It looks like some people have had success using keyd or kmonad to remap it:
https://superuser.com/questions/1849424/make-copilot-key-work-as-right-ctrl-again-under-linux
I haven't tried this myself.

Mark
>
> evtest reports this:
> Event: time 1754165237.366411, -------------- SYN_REPORT ------------
> Event: time 1754165238.892087, type 4 (EV_MSC), code 4 (MSC_SCAN), value db
> Event: time 1754165238.892087, type 1 (EV_KEY), code 125 (KEY_LEFTMETA), value 1
> Event: time 1754165238.892087, -------------- SYN_REPORT ------------
> Event: time 1754165238.892984, type 4 (EV_MSC), code 4 (MSC_SCAN), value 2a
> Event: time 1754165238.892984, type 1 (EV_KEY), code 42 (KEY_LEFTSHIFT), value 1
> Event: time 1754165238.892984, -------------- SYN_REPORT ------------
> Event: time 1754165238.893919, type 4 (EV_MSC), code 4 (MSC_SCAN), value 6e
> Event: time 1754165238.893919, type 1 (EV_KEY), code 193 (KEY_F23), value 1
> Event: time 1754165238.893919, -------------- SYN_REPORT ------------
> Event: time 1754165238.927818, type 4 (EV_MSC), code 4 (MSC_SCAN), value 6e
> Event: time 1754165238.927818, type 1 (EV_KEY), code 193 (KEY_F23), value 0
> Event: time 1754165238.927818, -------------- SYN_REPORT ------------
> Event: time 1754165238.931839, type 4 (EV_MSC), code 4 (MSC_SCAN), value 2a
> Event: time 1754165238.931839, type 1 (EV_KEY), code 42 (KEY_LEFTSHIFT), value 0
> Event: time 1754165238.931839, -------------- SYN_REPORT ------------
> Event: time 1754165238.934798, type 4 (EV_MSC), code 4 (MSC_SCAN), value db
> Event: time 1754165238.934798, type 1 (EV_KEY), code 125 (KEY_LEFTMETA), value 0
> Event: time 1754165238.934798, -------------- SYN_REPORT ------------
>
> -- 
> damjan
>
>
> _______________________________________________
> ibm-acpi-devel mailing list
> ibm-acpi-devel@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
