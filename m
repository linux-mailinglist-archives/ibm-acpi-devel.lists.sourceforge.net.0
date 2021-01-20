Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 29F712FD5C4
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 20 Jan 2021 17:36:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:To:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=nmAu2JUFs135NkI3glksi/sIxpwKlIvahBlCyYe3bCs=; b=MdPUKYp0wLFt6StliYE6dJkgiZ
	/cZXWVSfis3qtYd8bLgaH7AE4vIcxLKralemes5zAcZF6WDyfjSm1QxwU2xD3ke00vnXOgGs6SUy9
	LG3txbovhEutYd3oCmHTtCrCHFuwyzkQ1n+mI8ilLN2QBLBxGNc0/rm7PVhWIhgYEMOE=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1l2GSK-0000Di-4t; Wed, 20 Jan 2021 16:35:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <thinkpadacpi2020@vorpal.se>) id 1l2GSG-0000DO-Eh
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 20 Jan 2021 16:35:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Message-ID:To:Subject:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=J3X7pzOZDjUt7k15mXnztn0Yop/dT/tvkv17K3QunMY=; b=mizpB93gtf74lPrF+yJ07t0rIG
 wWgRtTFF8U6Q6xUktc+Yw3hAjNfatF/Ps36PjZaPSeumY0CV8JGI1ULYmTlG2fYl7iOqzPlENf69P
 4g8I/NpudCZyM7nGvS2R19MeCgfvgwn6uFBncvHBlKNzmq9bQcraDy4G3EImapx376es=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:To:
 Subject:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=J3X7pzOZDjUt7k15mXnztn0Yop/dT/tvkv17K3QunMY=; b=L
 dRhRofx/o4nDSigBupltCZChUBPyq+Aae9Z4cdpz2VXYKMEbt8oVyFGeLbJggWJ82UH2kv8ms20kT
 mmr8ZP4/8pUQUX9UNYhIC8SED5k/06AGFeY3MAHwZnMnVb/DznER0I2111wmxkSZ+Rwe4y8G0y7RA
 BTE83/p3vx8EueKI=;
Received: from vorpal.se ([151.236.221.200])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1l2GRy-00Cjsq-Qq
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 20 Jan 2021 16:35:34 +0000
Received: from [192.168.2.9] (c193-150-230-73.bredband.comhem.se
 [193.150.230.73]) by vorpal.se (Postfix) with ESMTPSA id 712641416D
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Wed, 20 Jan 2021 15:29:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=vorpal.se; s=2019;
 t=1611156592; bh=AmC7UrHf0B4n1mu+CWxT7l5d6u2dxyzGBcRb0pF5ZAw=;
 h=From:Subject:To:Date:From;
 b=K4WcndPrhL2uNB5nKylMF3Hm310othROAKVW+J3PZV6du6F6+S/tRpVkX9PJ/LJPx
 wGoipyAKJJEoO54hZbHEXsgYjS5S6Hf9IZV5wk5x1jLXfK5+IG+ImO54Hb57j/7SlH
 wVIqSWcdK370rsWbw2Bl21Z5mc7EmrH0/PWMt0bMbLjJuE8Lc8DpcDrAZX8wse2tpB
 lAlZg3sKSeddv+Lb9hqYZO7YbaCRT8mc/voBlSUGntpIEnP/F5rghipH521EHlpysB
 V/v5PThhut0TH4p/xjux5C10sqUh0h6vY2vGmq0ZAfoV9g/VhiD3sR3O3/23/2+CtJ
 8fW+SXrB91Gxw==
To: ibm-acpi-devel@lists.sourceforge.net
Message-ID: <49b3e817-93d3-bdc4-c9ec-c8f8686af662@vorpal.se>
Date: Wed, 20 Jan 2021 16:29:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l2GRy-00Cjsq-Qq
Subject: [ibm-acpi-devel] Unhandled HKEY events on Lenovo ThinkPad P15 Gen 1
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
From: thinkpadacpi2020--- via ibm-acpi-devel
 <ibm-acpi-devel@lists.sourceforge.net>
Reply-To: thinkpadacpi2020@vorpal.se
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

I hope this hasn't already been resolved and I'm reporting a duplicate! 
If so, I apologize, but I could not find anything on this by googling.

Three of the special function keys on my Lenovo P15 Gen1 laptop are not 
working, nor reporting anything with "xinput test" or "evtest". In dmesg 
I get the following messages:

For the "speech bubble" key (on F9):

[27642.269290] thinkpad_acpi: unhandled HKEY event 0x1317
[27642.269291] thinkpad_acpi: please report the conditions when this 
event happened to ibm-acpi-devel@lists.sourceforge.net

For the "answer telephone" key (on F10):

[27642.585707] thinkpad_acpi: unhandled HKEY event 0x1318
[27642.585711] thinkpad_acpi: please report the conditions when this 
event happened to ibm-acpi-devel@lists.sourceforge.net

For the "reject telephone call" key (on F11):

[27642.877307] thinkpad_acpi: unhandled HKEY event 0x1319
[27642.877309] thinkpad_acpi: please report the conditions when this 
event happened to ibm-acpi-devel@lists.sourceforge.net

I have uploaded a picture of what the keys look like (from a Nordic 
keyboard): 
https://www.dropbox.com/s/mnr3t95x0k71fxh/thinkpad_p15_keys.jpg?dl=0

This was tested on Ubuntu 20.04 with the 5.8.0-38-generic kernel.

Best regards,
Arvid Norlander



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
