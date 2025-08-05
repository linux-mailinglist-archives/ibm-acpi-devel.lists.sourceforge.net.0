Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 50637B1B9E7
	for <lists+ibm-acpi-devel@lfdr.de>; Tue,  5 Aug 2025 20:17:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:References:In-Reply-To:Message-Id:To:From:Date:MIME-Version:Sender:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rhyDV6Nschb4tsfxtVFUpGBdVj2rKBR6ouW2Pg/bE38=; b=QDKTWt6+ktxfM1+ABPNDJRZcdC
	U4FwWOVCfwwsjuo4WcsfNq63Vew94vYlIXAYbh5l/qPmQJ3JubRimG1Wr+sA7s3zA19JaKm+zun9I
	zT3d+uwBG+Gt1bVPHdDr8Zl1JrsbJXVT3yxLIeU6Qy8K0uRIBXL+dlqzymHxh/LdR/bU=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1ujMDP-0000MZ-P6;
	Tue, 05 Aug 2025 18:16:48 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1ujMD0-0000K0-ST
 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 05 Aug 2025 18:16:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:To:From:Date:MIME-Version:Sender:Reply-To:
 Cc:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KQF0R/dXparkOF0MVX8n0O4lUbagmMcFPuiFwlUG+0s=; b=ml0oOgl5FFvmzvJVgwYV5vH+hb
 YD4vuNMXk4kwu8mH89LHovGil7vg7TbhEbFXWAQghkIWgNby0ZJwOz+oopkuR+R5UV+9kbb75ONOt
 cmSI4rZK1Rc07aqoXEZouC3sXAu5TfosiYmMMcVHMPF//b+Ulz/vl5X9J8j7uWHyEZoA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:To:From:Date:MIME-Version:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KQF0R/dXparkOF0MVX8n0O4lUbagmMcFPuiFwlUG+0s=; b=UeHBThq0V/C0kqCX2hjn0e3AOf
 pBz+/6DOCUbcxNMh4IkO8kQvkZJx00KNhMYqL8I6o1pYslxgz9maH4tdBW+Qy/EY+qQZ3c91YFjAv
 003KApAzZzyBWDGOaCgymDG8Lv0KAEeBa/L101hJD9tj1WvlhRF4OXqavJbem/1E/kGk=;
Received: from fhigh-a5-smtp.messagingengine.com ([103.168.172.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ujMD0-0004HZ-Im for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 05 Aug 2025 18:16:23 +0000
Received: from phl-compute-12.internal (phl-compute-12.phl.internal
 [10.202.2.52])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 9574D14001B0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue,  5 Aug 2025 13:58:28 -0400 (EDT)
Received: from phl-imap-08 ([10.202.2.84])
 by phl-compute-12.internal (MEProxy); Tue, 05 Aug 2025 13:58:28 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :content-transfer-encoding:content-type:content-type:date:date
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm1; t=1754416708;
 x=1754503108; bh=KQF0R/dXparkOF0MVX8n0O4lUbagmMcFPuiFwlUG+0s=; b=
 fZhujqtmljK54muYN5+M94IIQPdeGqSIh7m1qedtPoVjT6LsFQXMI6Bv7t2z9E1c
 Odga9zSi0o8aeiU46vG36VBg84nJCU/2+qNEkPfv2dk8OHC62dmKfh4SgJr3a0Nd
 t3j7ie6w3QpaFwDaGzJMK4MDnysy769yCLciLfpDQ4QUsEioekOjNA5pRrjMp18K
 ZbSJTVDELsengXHtm5vAR8aiRwDhhbWj6J4dLw9I5Y3lArr8CqPQN0phcQFs8uzT
 xmqozTg0Va4BfYff1aWQp5yYUX/V/fT3Pu44aaAk53LM/vgYUxcjMOu9bOilQ8bF
 Wv8qGz/xo2WSvVradBAahw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm3; t=1754416708; x=1754503108; bh=K
 QF0R/dXparkOF0MVX8n0O4lUbagmMcFPuiFwlUG+0s=; b=ijYxdlUWCBb402fvf
 MrwO1GtH9b/cqGRVHyHYYP+WLmrkR8VPXhuZK7c+QPdI2JvZuKfbXP8PlokaHOgs
 Q05oFtDIxNIygVeIuZu+dBeSJrWib1MuXMNJuAvUMiX3/8yh0LAIbs4AM2b4XHUR
 g/4ArAu9t0h1YjCFLgHN4oMqnwZkS+VbcBzZdbHc++ta6j7N6JhLAn4jcu+yQUMi
 ysDMsDiDGGZS5pTipUW/XiiXH/SkUQBT/OgRoh9vxH2g+gTxwSo4yriqQU/TKfbt
 EVIR8w3m9CbBRBRdj8yvQuh+7YbPxb5WOSUiZ8pgo5A8eKEkK21YC/DSsMvYwQgA
 qbY+g==
X-ME-Sender: <xms:REaSaOcm_TkBFT_aiLqFIZcr3QyhZEdiaNw_6ATc15yH1kc4_KeZgA>
 <xme:REaSaIM2p5jXdelSvT5TkAXMZFk56rFFbBggNBvwBVxfyzD4EaqbEt8BJQJgZFsOk
 md3OyzBTaC24YXk3w4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgdduudehkeefucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpefoggffhffvkfgjfhfutgfgsehtjeertd
 ertddtnecuhfhrohhmpedfofgrrhhkucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdq
 lhgvnhhovhhosehsqhhuvggssgdrtggrqeenucggtffrrghtthgvrhhnpeefleevgfelge
 euveduleevkeekuefhtdejheejteetkeffleeiveeltdffteejkeenucffohhmrghinhep
 khgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrg
 hilhhfrhhomhepmhhpvggrrhhsohhnqdhlvghnohhvohesshhquhgvsggsrdgtrgdpnhgs
 pghrtghpthhtohepuddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepihgsmhdqrg
 gtphhiqdguvghvvghlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvght
X-ME-Proxy: <xmx:REaSaA1kON2a0cfshyuJPgULeg3pM1v3F2mQwfW6lXJV3uOAxgzKDg>
 <xmx:REaSaPU8B_7f5-0HbFKApq217ulr8Kt7HjA6LyvcysXVc_TUJ-2CCA>
 <xmx:REaSaD7_XxN0j7rWQly93SL64FEobbVsIqN3XSRewVi_j7NX3Gbicg>
 <xmx:REaSaOJqWJ_GCEU-VkDVQNElXzuj53Y74AfU0NgV_97tq4MbJY_KUA>
 <xmx:REaSaKGQSNreeuaHb0ClOLLlSFMrlqIqbkhdcJydH2RBx6nzcQEDgpWY>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id 43A532CE0071; Tue,  5 Aug 2025 13:58:28 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: T38170e6b3f1d03cd
Date: Tue, 05 Aug 2025 13:58:08 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: ibm-acpi-devel@lists.sourceforge.net
Message-Id: <9c07c492-1351-4239-b17f-4bd8dda6f71b@app.fastmail.com>
In-Reply-To: <CAEk1YH4dFncVBuf7JGEdG8Nrf9Bnyy0XbHF6daQiCWrogN=UGA@mail.gmail.com>
References: <CAEk1YH4dFncVBuf7JGEdG8Nrf9Bnyy0XbHF6daQiCWrogN=UGA@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Damjan On Tue, Aug 5, 2025, at 9:40 AM, Damjan Georgievski
 wrote: > Hi all, > I've been compiling recent torvalds/master and noticed
 I've lost the > control of the *mute mic led* (on the Thinkpad X9-14). >
 > [...] Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [103.168.172.156 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1ujMD0-0004HZ-Im
Subject: Re: [ibm-acpi-devel] SND_HDA_GENERIC_LEDS/SND_CTL_LED dependency of
 config THINKPAD_ACPI
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

Hi Damjan

On Tue, Aug 5, 2025, at 9:40 AM, Damjan Georgievski wrote:
> Hi all,
> I've been compiling recent torvalds/master and noticed I've lost the
> control of the *mute mic led* (on the Thinkpad X9-14).
>
> For context, the `snd-ctl-led` ("ALSA control interface to LED trigger
> code") allows the mic mute led to follow the muted state of the
> microphone capture mixer,
> and to select if you want the led on when the mic is muted or is capturing.
>
> Problem is, both SND_HDA_GENERIC_LEDS and SND_CTL_LED are not user
> selectable, and
>
> * SND_CTL_LED is selected/enabled by SND_HDA_GENERIC when
> SND_HDA_GENERIC_LEDS is enabled; and
> * SND_HDA_GENERIC_LEDS is only selected by 4 of the codecs in
> `sound/hda/codecs/`.
>
> Now none of those 4 codecs are required on *this* Thinkpad, so not
> sure what the proper solution should be.
>
> I did fix the issue *for me* by adding
> `select SND_HDA_GENERIC_LEDS if SND_HDA_GENERIC` to `config
> THINKPAD_ACPI` - but I'm not sure if that's the proper way forward.
>
I assume you're using your own config instead of a standard one from a distro? I checked with both Ubuntu and Fedora (that I have on my system currently) and they have this option enabled - but they also have Realtek (and others) enabled which would have pulled it in.

I believe the X9-14 uses the Cirrus codec so my guess is we should be adding this to the Cirrus Kconfig. Let me just check with the Cirrus folk if they have any thoughts/concerns.

As a heads up - if you're using the X9-14 keep an eye on this proposed fix:
https://lore.kernel.org/linux-input/20250803065726.2895470-1-aaron.ma@canonical.com/T/#t
It fixes a rare kernel crash condition we've been seeing on suspend/resume

Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
