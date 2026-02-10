Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KAjAAM+gi2l1XQAAu9opvQ
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 10 Feb 2026 22:19:11 +0100
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D6E011F5AF
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 10 Feb 2026 22:19:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:References:In-Reply-To:Message-Id:To:From:Date:MIME-Version:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Vl1bwXeeRVSePA1natIFhuUCpZlAEj1OxXuWRqlh8xs=; b=gWH80SrRs9R1o5OBMTpwB3MZeI
	HHGEFnnebu5HcvR8g5/1zl/WpoDDVcXW3JGyL23TFPg1oXZNhnHQ5OeNCY6AxUrHwwe2zeAOqGM2x
	5BUk9IAj1GUmwCqICIGjVeCkMw0RovR/T3RaDEFWfsC7YroOzs9ByptGLbRSPjGdJlRU=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1vpv7T-0007Tr-Bw;
	Tue, 10 Feb 2026 21:18:03 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1vpv7S-0007Th-3j
 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 10 Feb 2026 21:18:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SBwAH2DYmviUwcY6OiI2XKeGoCrvFfja3I8zI+mh7yc=; b=dxr0msElNVHjunvweZmNaugtkz
 3MBG+fJUqfIu9pOkzbPUrPZT8S1uWQa8sre8L132ikNGLm/oJ28tEFpIvJwA5ptT+gXvucHzbPY9b
 yx4WRG0c/l6GAMC+Se8rRMN9tf0p8kCDN5jIdo1fCr9cIphUz5l/ErTFWkt7dpLl1nCM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SBwAH2DYmviUwcY6OiI2XKeGoCrvFfja3I8zI+mh7yc=; b=BvfXeuV0GTIMDSYdAyJ+2Ga+lu
 aWjXqsLTBnbHFGG08BBb0K1AG8qeUPw348+ubeQNKouEJDw2pzx5u4rvvAQfyHSAv51tJM3rN6CGo
 Fmp+i7UhI5ja3reC3rn63CloatL8pseur0bJc5PTtFckfJemZm10q7nN0I4jNqctYMKw=;
Received: from fhigh-a7-smtp.messagingengine.com ([103.168.172.158])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vpv7Q-0004UK-IQ for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 10 Feb 2026 21:18:02 +0000
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
 by mailfhigh.phl.internal (Postfix) with ESMTP id D2FB214000F5;
 Tue, 10 Feb 2026 16:17:49 -0500 (EST)
Received: from phl-imap-08 ([10.202.2.84])
 by phl-compute-02.internal (MEProxy); Tue, 10 Feb 2026 16:17:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm1; t=1770758269;
 x=1770844669; bh=SBwAH2DYmviUwcY6OiI2XKeGoCrvFfja3I8zI+mh7yc=; b=
 GYunz3Pgp2+KYzQiVyy2UqVbs6EOTbPctpPV5gM0P25sUaVETIHpXzz03xt73k2w
 EBGdiBKLSFkHwT7mInyygE/DOxWhrWqESgKsfzaXZvHKb+HC5LZ9SN/mPi98ewUx
 qEbWhR71sAmpPPTy5saQroya86YtnrTDgzWbr8EdxFPN+1kDKvM+NAoxuVrXaw5C
 FlUYoxEupUt4Nwpuk1PGfADDhlqGwuhwBeBwi8frp2RgrIP3++4/r/Ut1xWvr55L
 ZcsXFMZoOJOT3TT5lU9JeZwVK3uLK8EHv8AFobUFuDcCknVQof12TkLPmnEJ8No/
 7ecD28sk9yLz8xTcQYeaBg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1770758269; x=
 1770844669; bh=SBwAH2DYmviUwcY6OiI2XKeGoCrvFfja3I8zI+mh7yc=; b=f
 GW0htSaXyHeBmDu4QtSfJEXUx/BThK7iu1WDcd7AgHyzOMzHH4mQmxmZeIQx/fAI
 2LtgHcfMJEgro7jT5KZNomDapRQQ5/BixE6ILHKSLONPCNgfZtQ7Wi9bP1+GjyV2
 ygG4znpgOt/1UxiCYZe7AnWzL/4mZzBpUpmtKWo0NS4+hcnwsJrhYhCBW6sHHOaX
 WaTIjc53f/FLZXcHv2PBo/8vx9IbXCw1JqkjTr/u3rkUv0H79ZjD5zMZph/1Qp2X
 XNPFrQst/qLFQQMbKOdKE5jSBVrvF9HvomJrezXo+dR8UoVwA5zDqPsadLLHKRIg
 VwCG1Q95BDuEbRNJS+u+w==
X-ME-Sender: <xms:faCLaVDLTPG4toZgg9TJKefS4sFNdq2y0NriEzJNOWqje1m71IAAWg>
 <xme:faCLaeVEq2WRGlITnV4nX9X5MyiKHxynIGoVlx4-H57ZCtuxDVy98x5x-6Wrzbfzp
 _UnCgOX1PhTxSn5jnK6a_TSehzjwXQcI1_5pZEUsu6vnFRnTwc2jtM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddvtddtjeegucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
 gurhepofggfffhvfevkfgjfhfutgfgsehtjeertdertddtnecuhfhrohhmpedfofgrrhhk
 ucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtg
 grqeenucggtffrrghtthgvrhhnpedtffevgfethfevteduvdefleevkedtuddvlefghefg
 ieekffejteejveffkedthfenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecuvehluh
 hsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhhpvggrrhhsohhn
 qdhlvghnohhvohesshhquhgvsggsrdgtrgdpnhgspghrtghpthhtohepuddtpdhmohguvg
 epshhmthhpohhuthdprhgtphhtthhopeguvghrvghkjhhohhhnrdgtlhgrrhhksehgmhgr
 ihhlrdgtohhmpdhrtghpthhtohepvhhishhhnhhuohgtvhesghhmrghilhdrtghomhdprh
 gtphhtthhopehhmhhhsehhmhhhrdgvnhhgrdgsrhdprhgtphhtthhopehhrghnshhgsehk
 vghrnhgvlhdrohhrghdprhgtphhtthhopehvshgrnhhkrghrsehlvghnohhvohdrtghomh
 dprhgtphhtthhopehilhhpohdrjhgrrhhvihhnvghnsehlihhnuhigrdhinhhtvghlrdgt
 ohhmpdhrtghpthhtohepihgsmhdqrggtphhiqdguvghvvghlsehlihhsthhsrdhsohhurh
 gtvghfohhrghgvrdhnvghtpdhrtghpthhtohepihesrhhonhhgrdhmohgvpdhrtghpthht
 oheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:faCLaSlyQDRmUraPm9_nEB29VKlGzoSIwH3_jtevqnqqOrg_XeaIjA>
 <xmx:faCLaVtEsugetjx2QDPqDhu32ls7rFklEnyZK_SsWYsIqrHdKEKe4w>
 <xmx:faCLadr3__r7mSt8hUla2uVun3SN1PoIsPtQCSIOgcgQp7BIiCq_gA>
 <xmx:faCLabfO0x2XF9NLB8nXFrrM7jbJugmIFKAfNyEfn_ioX37Y8C0IZw>
 <xmx:faCLaYpcrcoTaulRrwkRASYcRuijquFVArnunFJLKoTPL9TRCW3pAOvj>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id E4B0F2CE0072; Tue, 10 Feb 2026 16:17:48 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: ASaOPSC57OEF
Date: Tue, 10 Feb 2026 16:17:28 -0500
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Rong Zhang" <i@rong.moe>, "Hans de Goede" <hansg@kernel.org>,
 "Vishnu Sankar" <vishnuocv@gmail.com>
Message-Id: <f54339a7-5410-41f9-9e82-c7732a568b80@app.fastmail.com>
In-Reply-To: <a539da08664a2903420538b75de8dd512344a3ad.camel@rong.moe>
References: <20260203232219.11683-1-vishnuocv@gmail.com>
 <30354f74-91c0-4fd6-82b1-15f79ae7a60f@kernel.org>
 <1dbfcf656cdb4af0299f90d7426d2ec7e2b8ac9e.camel@rong.moe>
 <255c1844-4992-4a7d-9519-39071a208a98@app.fastmail.com>
 <69b9a9df97f4d10e2d11d6b0eb81bbf41fb4cbde.camel@rong.moe>
 <1acdc04a-e692-4ea6-8580-13f0b6d24f44@app.fastmail.com>
 <79e768d8-5c09-4d77-8172-3f43fe5ba0fa@kernel.org>
 <a539da08664a2903420538b75de8dd512344a3ad.camel@rong.moe>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Feb 10, 2026, at 11:11 AM, Rong Zhang wrote: > Hi
 all, > > Thanks for your insight. > > On Tue, 2026-02-10 at 11:31 +0100, Hans
 de Goede wrote: >> Hi all, >> >> On 9-Feb-26 19:44, Mark Pearson [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1vpv7Q-0004UK-IQ
Subject: Re: [ibm-acpi-devel] [PATCH] thinkpad_acpi: Add Auto mode support
 with dynamic max_brightness
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
Cc: linux-kernel@vger.kernel.org, "platform-driver-x86@vger.kernel.org"
 <platform-driver-x86@vger.kernel.org>, Vishnu Sankar <vsankar@lenovo.com>,
 ibm-acpi-devel@lists.sourceforge.net,
 "Derek J . Clark" <derekjohn.clark@gmail.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.80 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	XM_UA_NO_VERSION(0.01)[];
	FORGED_RECIPIENTS(0.00)[m:i@rong.moe,m:hansg@kernel.org,m:vishnuocv@gmail.com,m:linux-kernel@vger.kernel.org,m:platform-driver-x86@vger.kernel.org,m:vsankar@lenovo.com,m:ibm-acpi-devel@lists.sourceforge.net,m:derekjohn.clark@gmail.com,m:hmh@hmh.eng.br,m:ilpo.jarvinen@linux.intel.com,m:derekjohnclark@gmail.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[squebb.ca];
	FREEMAIL_TO(0.00)[rong.moe,kernel.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_MIXED(0.00)[];
	FORWARDED(0.00)[ibm-acpi-devel@lists.sourceforge.net];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[mpearson-lenovo@squebb.ca,ibm-acpi-devel-bounces@lists.sourceforge.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lenovo.com,lists.sourceforge.net,gmail.com,hmh.eng.br,linux.intel.com];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[mpearson-lenovo@squebb.ca,ibm-acpi-devel-bounces@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,squebb.ca:s=fm1,messagingengine.com:s=fm3];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[ibm-acpi-devel];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,squebb.ca:-,messagingengine.com:-];
	RCPT_COUNT_SEVEN(0.00)[10];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	ARC_NA(0.00)[]
X-Rspamd-Queue-Id: 0D6E011F5AF
X-Rspamd-Action: no action

On Tue, Feb 10, 2026, at 11:11 AM, Rong Zhang wrote:
> Hi all,
>
> Thanks for your insight.
>
> On Tue, 2026-02-10 at 11:31 +0100, Hans de Goede wrote:
>> Hi all,
>> 
>> On 9-Feb-26 19:44, Mark Pearson wrote:
>> 
>> ...
>> 
>> > Yeah - that's fair. You're right - we shouldn't change the brightness field.
>> > 
>> > So, how about adding two sysfs nodes to the LED class?
>> >  - auto_brightness_capable - indicates the LED brightness can go into an auto control mode
>> 
>> There is no need for this, the mere presence of
>> the "auto_brightness_enabled" sysfs attribute (which can
>> be in a sysfs-attr-group with an is_visible callback)
>> is enough to indicate that the backlight is auto
>> brightness capable.

Good point - agreed

>> 
>> >  - auto_brightness_enabled - indicates if the LED is in the auto_brightness controlled state or not.
>> 
>> This is for auto-brightness based on an ambient light sensor
>> (ALS), right ?
>> 
>> My vote would go to use "als_enabled", just like is already done in:
>> 
>> Documentation/ABI/testing/sysfs-platform-dell-laptop
>

I didn't realise it had been done before (2014 too!)

> In my previous reply I said 'if my proposal is rejected we will have to
> continue on "als_enabled"'. But after some consideration, I have a
> major concern about its naming: extensibility.
>
> More and more devices already come with a human presence detection
> sensor (HPD). Suppose that a future device implements auto-brightness
> based on its HPD, the name will be irrelevant and we must introduce
> "hpd_enabled" then. Userspace programs must be rewritten to handle
> both.
>
> Mark, do you think such devices may appear in the foreseeable future?
>

Not on my radar....but I also don't have a crystal ball.

> Another concern of mine on the approach is that it may lead to chaos if
> a future device implements auto-brightness based on multiple sensors.
> In this case a well-defined interface should have an aggregated
> attribute^ simply representing whether auto-brightness is on or off.
>
> For this reason, a sensor-neutral name will be better if we should
> stick with the device attribute approach.
>

I'm with Hans that if it's been done before then consistency would be nice.
But then again the Dell implementation is Dell specific and we're trying to do something a bit more generic so I don't feel strongly about it

What about "auto_enabled" and the value can be "off" or "als" for now, and if some other mechanism is added in the future it is extensible to other control mechanisms (and they could be multiple - e.g. "als,hpd"). I'm worried we're over-thinking it though.

> ^: A private hw control trigger is like an aggregated attribute while
> it can provide trigger attributes for fine-grained control.
>
>> adding new sysfs attributes to a LED class device although
>> possible is a bit frowned upon though.
>
> Yeah, That's one of the reasons why I made that proposal.
>
>> In that sense using a trigger is better because it more
>> closely matches how the LED class API is supposed to be
>> used would maybe be better.
>> 
>> So I've gone and re-read Rong's trigger proposal:
>> 
>> https://lore.kernel.org/all/a90584179f4c90cd58c03051280a6dda63f6cc1d.camel@rong.moe/
>> 
>> Rong, previously you also went a bit further with implementing this
>> already which you described here:
>> 
>> https://lore.kernel.org/all/8a132e7473655ca0119af10339c63beb4df7c201.camel@rong.moe/
>> 
>> One of the problems you encountered there is what to do if
>> the user actually set a trigger themselves and the EC moves
>> between fixed-brightness-value <-> ALS .
>> 
>> My first idea was to just always override the trigger with
>> the special ALS trigger or none.
>
> My PoC does the opposite, see my explanation below.
>
>> But thinking more about this this is wrong. E.g. there
>> are triggers which turn the backlight on when user input
>> is detected and then off after a while, which would be
>> a perfect reasonable thing to use together with a kbd-backlight.
>
> Yes, that's why my PoC intentionally does nothing when an other trigger
> is active, effectively allowing the active trigger to override the ALS
> trigger. See led_trigger_do_hw_control_transition().
>
>> Thinking more about this triggers are typically for deciding
>> when to turn the LED on/off not for controlling brightness
>
> The trigger "pattern" can control LED's brightness.
>
>> many of them actually allow still writing the brightness
>> sysfs attr and then when the LED should be on according to
>> that trigger, the trigger use the last written brightness.
>
> Thanks for the information! I didn't know there are triggers behaving
> like this before.
>
>> Looking at things this way ALS is not really a trigger, it
>> is more of a brightness control mechanism.
>
> IIUC, being able to control something that is not capable for a general
> purpose LED trigger is the reason why the private trigger interface
> exists.
>
>> So I think the best and also KISS solution here would be
>> to go with adding a "als_enabled" sysfs attr to the
>> LED class device, which is only visible when support,
>> just like is already done in:
>> 
>> Documentation/ABI/testing/sysfs-platform-dell-laptop
>> 
>> I would also call led_classdev_notify_brightness_hw_changed() 
>> when the EC moves between fixed-brightness-value <-> ALS.
>> 
>> Userspace will likely already have a poll() going on on
>> the brightness_hw_changed sysfs attr, so this way userspace
>> which is aware of the als_enabled sysfs attr can also check
>> that.
>> 
>> You can then report brightness_max as the new value when calling
>> led_classdev_notify_brightness_hw_changed() since the ALS can go
>> up to brightness_max, likewise you could also always return
>> brightness_max when reading the brightness value while in ALS mode.
>
> Makes sense. If we decide we should stick with the device attribute
> approach, I will adopt this in v2 of my ideapad-laptop series.
>
>> The only real question left then is what to do on brightness
>> writes. I would do the same as what triggers do here, ignore
>> writing non 0 values and turn off the backlight (and thus also
>> ALS) when 0 is written.
>
> I have two concerns on this behavior:
>
> 1.
>
> IIUC, there is no way for a LED device to determine if it is attached
> to a trigger. The LED core does know this, but it won't tell the LED
> device driver.
>
> In other words, we can't distinguish trigger requests from userspace
> ones in our brightness_set[_blocking] callback, so we have to either
> ignore both or none. As a result, we can't ignore anything and must
> blindly accept any incoming requests in order not to break triggers.
>
> That's another reason why I made my proposal -- it must become a
> trigger in order to be aware of other triggers.
>
> Am I missing something? Or did you mean we should add the attribute to
> the LED core?
>
> 2.
>
> I quickly rechecked the LED core's code, and it doesn't behave as you
> expected. It doesn't ignore non-zero written values when a trigger is
> attached to the LED, and it will set the LED's brightness to the
> written value despite the trigger (it will be discarded by next trigger
> event, though).
>

I'm a bit confused here to be honest.
If a user sets a specific level - then it should disable auto mode shouldn't it?

> When the effective trigger is a hw control trigger, LED core's behavior
> effectively disables hw control. Hmm... it seems that this side-effect
> has been documented:
>
>    When the LED is in hw control, no software blink is possible and
>    doing so will effectively disable hw control.
>
> So in my perspective the hw control trigger approach is semantically
> correct here (in an unexpected way).
>
>> Note as for actually allowing "auto" for the brightness value
>> (read/write) that would break userspace assumptions that that
>> file always contains an integer, so that is not an option IMHO.
>> 

Yeah - I think we're all in agreement that it was a bad idea. I have swept it back under the rock it came from

>> Regards,
>> 
>> Hans
>> 
>
> On Mon, 2026-02-09 at 13:44 -0500, Mark Pearson wrote:
>> Thanks Rong
>> 
>> On Mon, Feb 9, 2026, at 1:14 PM, Rong Zhang wrote:
>> > [...]
>> > 
>> > If there is a mechanism to set the brightness on specific events or
>> > conditions, it is a trigger. If the trigger is controlled by hardware,
>> > it's a hw control trigger. That's why I propose using a private hw
>> > control trigger to represent this to make it semantically correct.
>> 
>> Ah. I think it will be confusing for most users. They're not going to think of it as a trigger (that's my guess anyway)
>
> I guess most users simply tune the keyboard backlight via desktop
> environments, so it won't directly make them confused. When it comes to
> desktop environments, this is precisely why we want the interface
> capable to notify userspace about HW status transition.
>
> And both `cros_ec' and `turris-omnia' have been using private hw
> control triggers to represent auto mode.
>
>> > [...]
>> > 
>> > I admit that my proposal is complicated and may need a lot of time to
>> > make it into its right path. It may even be rejected by LED folks. But
>> > it's the best approach I can think of considering our requirements on
>> > the interface:
>> > 
>> > 1. It shouldn't break any existing interfaces.
>> > 2. It's exposed to userspace for getting or setting its status.
>> > 3. HW status transition should reach userspace (similar to
>> > LED_BRIGHT_HW_CHANGED).
>> 
>> Just to check - for #3 do you mean it should report the brightness changes when it's in auto mode (i.e. if it got brighter or dimmer); or if it should just report it switched in/out of auto mode. 
>> I don't think we need to report every brightness status change - and switching modes should be user directed so is no different to currently. Am I missing something?
>
> I meant auto-brightness on <-> off, or fixed-brightness-value <-> ALS
> in Hans' words.
>

great - makes sense

>> Thanks
>> Mark
>
> To conclude:
>
> 1. My proposal:
>
> Upsides:
> - mutually exclusive with other triggers (hence less chaos)
> - semantic correctness
> - extensibility (through trigger attributes)
> - acts as an aggregate switch to turn on/off hw control
>
> Downsides:
> - complexity
> - needs approval from LED folks
> - (I admit both are major blockers...)
>
> 2. Device attribute
>
> Upsides:
> - simplicity, KISS
> - no need to touch LED core
> - extensible as long as it has a sensor-neutral name
>
> Downsides:
> - must have zero influence on the brightness_set[_blocking] callback in
> order not to break triggers
> - potential interference with triggers and the brightness attribute
> - weird semantic
>
> I am actually OK with both approaches. If you still consider the device
> attribute approach is better after reading my concerns, I will no
> longer insist on my proposal.
>

My (limited) vote is for the simplest solution - because it's just a keyboard light. But I'll defer to Hans here - I don't think I know enough to have a strong opinion.

Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
