Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 431038B1243
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 24 Apr 2024 20:28:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rzhLZ-0007hd-8E;
	Wed, 24 Apr 2024 18:27:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1rzhLX-0007hS-3O
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Apr 2024 18:27:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=b1igEN2FEvryVdN0GD97w9dQJ5HJoT+BTW4hH0R+1/I=; b=elAAG+8OqnPJPIf5TBjxFAd4ef
 adhBjLnLq8/3oEXu6z8E7CoAYLVg0P5Jg3Yqh7H1SyMqxFc3hUmByVzhi74yq42LBvON+mYyPtMTy
 FgweRhgonwD3M3sIKqHTXjysz9rOcRlI9TqAA2KkkZ59rYfRf9LmnUAFiSAwugswGbWY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=b1igEN2FEvryVdN0GD97w9dQJ5HJoT+BTW4hH0R+1/I=; b=eMLoebqXyOI/MDxOBznTXQEo8O
 +fiQg15WALGGuzeYWxjZB25Fg7yIp/6my4RsPlRaNpYFi2CxeMhudWUHZ4iJ6pdt2J6yX8jf6Na1P
 k2EiraHCqJS4SN0Sxme2MJCkp2Twb79aufNSSh+MRPhO6rYzdVM9oidpwTLUC94tsEjE=;
Received: from wfhigh7-smtp.messagingengine.com ([64.147.123.158])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rzhLV-00084P-Ox for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Apr 2024 18:27:55 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailfhigh.west.internal (Postfix) with ESMTP id 2934418000C3;
 Wed, 24 Apr 2024 14:27:48 -0400 (EDT)
Received: from imap52 ([10.202.2.102])
 by compute3.internal (MEProxy); Wed, 24 Apr 2024 14:27:48 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to; s=fm1; t=1713983267; x=1714069667; bh=b1igEN2FEv
 ryVdN0GD97w9dQJ5HJoT+BTW4hH0R+1/I=; b=CvYrMC4Wi33f7aEpp0ds9oPPAB
 i20s7tndcG4Z0oCGsl9BJTgG46xvpRBxpGaQHyNZV6ccbNguy5WJHh1itdwsKjKP
 tvVlHSCbg9FYSqm2qyQ1unlzHvcdwKyhhSXQn2cgtonU/DRL2sdoXupdlH2qNHej
 R8438da80zoO6fMcSSeRuuBhn3nyxTwQMo1jcSlnsMCLblsKOeUYtzveO4aNcXow
 XikJD/B/fTGw5C4ffP494mMPyzDWl3oA5CrAyFPLEru2oEnVc+1flMjs6Ou32GrO
 zI4eaMxpezUMH4F6ULpF/A0WDFj+V+TKZV6t5Fsql5zG7e3DyjxCkF785tow==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1713983267; x=1714069667; bh=b1igEN2FEvryVdN0GD97w9dQJ5HJ
 oT+BTW4hH0R+1/I=; b=EWoPgRejW3hmlskFFYONJ0G/qCUOPAPYAnmLxC73c5O2
 Z478jZGV6qdgLdCYXiwXxIl3Q1/nzTMKHzRPNXcZXoO5WwtbX9OPOsLvD8+981/F
 ZhSsg9HuDXU56npr2xoGBqBqEonlaTbDLpQ81nSBxhRYmkTDVkwU8EmcTi/PKj9r
 iMIRIxNspZ5p3t5vEyV5z1bnuBzPSeP0DY6h4on6QthaIWG2puielnDq67fVRkWH
 S33GMuFir7BnTmj9DaSHtmSWxkiJLs/vV9v9RWonSxfWihW6G55bEQabIIExjtFx
 fnhrXa45GCXVQ0/64kc6/ROHrfHGApfPJkN+yG3Vug==
X-ME-Sender: <xms:I08pZi-39Eh3ATZGPG_od5sIhHbAcG1hZwhmtIVZ-DNDCv9ooWF2Nw>
 <xme:I08pZitVENbOdW1ftmxGJ8zX2DMlJaYTAF5iT3GOFzPLHeEbBsppM7PYm7-9YcFR7
 e9sCIKrAx7vYebIFg0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudelhedgieehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvfevufgtsehttdertderredtnecuhfhrohhmpedfofgr
 rhhkucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssg
 drtggrqeenucggtffrrghtthgvrhhnpeeiueefjeeiveetuddvkeetfeeltdevffevudeh
 ffefjedufedvieejgedugeekhfenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmh
 epmhgrihhlfhhrohhmpehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggr
X-ME-Proxy: <xmx:I08pZoA9fZZxAvQjr7DFV1mPWXCW5WKWddhezNKwlo9N5SVjYJ_bMg>
 <xmx:I08pZqebd4-IgsblKbtA0w0TdcM9ThZ5h-7T8lQuYLFmmm1SSM_jSw>
 <xmx:I08pZnMU_RcQds-BRkxnLqTCnrmElXVSeWKw28rkiWA3ISplAMPUyw>
 <xmx:I08pZkmjC6zp4CAraXG6cgI0yM7mcx6G76QIoT5ZwMlSjVEbKuKgrQ>
 <xmx:I08pZieAtSS1_XcV8wXUWc9EFFD7EJcBLdzY6C5hetrmh0-iz8g7WIOz>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 4DF3DC60097; Wed, 24 Apr 2024 14:27:47 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.11.0-alpha0-386-g4cb8e397f9-fm-20240415.001-g4cb8e397
MIME-Version: 1.0
Message-Id: <10eeb2d3-0786-43e5-99dd-f609804021a2@app.fastmail.com>
In-Reply-To: <20240424122834.19801-1-hdegoede@redhat.com>
References: <20240424122834.19801-1-hdegoede@redhat.com>
Date: Wed, 24 Apr 2024 14:28:49 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Hans de Goede" <hdegoede@redhat.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 "Andy Shevchenko" <andy@kernel.org>,
 "Henrique de Moraes Holschuh" <hmh@hmh.eng.br>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Apr 24, 2024, at 8:28 AM, Hans de Goede wrote: > Hi
 All, > > Here is v2 of my patch-series to refactor thinkpad_acpi's hotkey
 handling > and to add support for some new hotkeys on new models. [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: squebb.ca]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1rzhLV-00084P-Ox
Subject: Re: [ibm-acpi-devel] [PATCH v2 00/24] platform/x86: thinkpad_acpi:
 Refactor hotkey handling and add support for some new hotkeys
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
Cc: ibm-acpi-devel@lists.sourceforge.net, "platform-driver-x86@vger.kernel.org"
 <platform-driver-x86@vger.kernel.org>, Nitin Joshi1 <njoshi1@lenovo.com>,
 Vishnu Sankar <vishnuocv@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net



On Wed, Apr 24, 2024, at 8:28 AM, Hans de Goede wrote:
> Hi All,
>
> Here is v2 of my patch-series to refactor thinkpad_acpi's hotkey handling
> and to add support for some new hotkeys on new models.
>
> Changes in v2:
> - Some small code style tweaks in response to reviews
> - Add various Reviewed-by and Tested-by tags
>
> Relevant parts of v1 cover-letter:
>
> I have been very careful to not introduce any changes wrt support for
> the original ThinkPad models / hotkeys which use the hotkey_*_mask
> related code.
>
> I've also done my best to avoid any *significant* functional change but
> there are still some functional changes, which should all not impact
> userspace compatibility:
>
> 1. Adaptive keyboard special keys will now also send EV_MSC events with
>    the scancode, just like all the other hotkeys.
>
> 2. Rely on the input core for KEY_RESERVED suppression. This means that
>    keys marked as KEY_RESERVED will still send EV_MSC evdev events when
>    pressed (which helps users with mapping them to non reserved KEY_FOO
>    values if desired).
>
> 3. Align the keycodes for volume up/down/mute and brightness up/down with
>    those set by userspace through udev upstream's hwdb. Note these are all
>    for keys which are suppressed by hotkey_reserved_mask by default.
>    So this is only a functional change for users who override the default
>    hotkey-mask *and* who do not have udev's default hwdb installed.
>
> 4. Suppress ACPI netlink event generation for unknown 0x1xxx hkey events to
>    avoid userspace starting to rely on the netlink events for new hotkeys
>    before these have been added to the keymap, only to have the netlink
>    events get disabled by the adding of the new hotkeys to the keymap.
>
>    This should not cause a behavior change for existing models since all
>    currently known 0x1xxx events have a mapping.
>
> Here is a quick breakdown of the patches in this series:
>
> Patch 1 - 2: Fix a small locking issue on rmmod the only problem here
>    really is a lockdep warning, so I plan to route these fixes through
>    for-next together with the rest to keep things simple.
>
> Patch 3 - 14: Do a bunch of cleanups and refactoring
>
> Patch 15: Implements functional change no 4. I really kinda want to just
>    completely disable ACPI netlink event generation when also sending evdev
>    events instead of reporting these twice. But for the 0x11xx / 0x13xx
>    hkey events the kernel has send ACPI netlink events for years now. So
>    this disables ACPI netlink events for any new hotkeys going forward.
>
> Patch 16 - 18: Refactor / cleanup reserved key handling
>
> Patch 19: Actually move to sparse-keymaps
>
> Patch 20: Update the keymap for 2 adaptive kbd Fn row keys
>
> Patch 21 - 24: Mark's original patches adding support for the new Fn + N
>    key combo and for trackpoint doubletap slightly reworked to use
>    the new sparse-keymap.
>
> Regards,
>
> Hans
>
>
> Hans de Goede (20):
>   platform/x86: thinkpad_acpi: Take hotkey_mutex during hotkey_exit()
>   platform/x86: thinkpad_acpi: Provide hotkey_poll_stop_sync() dummy
>   platform/x86: thinkpad_acpi: Drop setting send_/ignore_acpi_ev
>     defaults twice
>   platform/x86: thinkpad_acpi: Drop ignore_acpi_ev
>   platform/x86: thinkpad_acpi: Use tpacpi_input_send_key() in adaptive
>     kbd code
>   platform/x86: thinkpad_acpi: Do hkey to scancode translation later
>   platform/x86: thinkpad_acpi: Make tpacpi_driver_event() return if it
>     handled the event
>   platform/x86: thinkpad_acpi: Move adaptive kbd event handling to
>     tpacpi_driver_event()
>   platform/x86: thinkpad_acpi: Move special original hotkeys handling
>     out of switch-case
>   platform/x86: thinkpad_acpi: Move hotkey_user_mask check to
>     tpacpi_input_send_key()
>   platform/x86: thinkpad_acpi: Always call tpacpi_driver_event() for
>     hotkeys
>   platform/x86: thinkpad_acpi: Drop tpacpi_input_send_key_masked() and
>     hotkey_driver_event()
>   platform/x86: thinkpad_acpi: Move hkey > scancode mapping to
>     tpacpi_input_send_key()
>   platform/x86: thinkpad_acpi: Move tpacpi_driver_event() call to
>     tpacpi_input_send_key()
>   platform/x86: thinkpad_acpi: Do not send ACPI netlink events for
>     unknown hotkeys
>   platform/x86: thinkpad_acpi: Change hotkey_reserved_mask
>     initialization
>   platform/x86: thinkpad_acpi: Use correct keycodes for volume and
>     brightness keys
>   platform/x86: thinkpad_acpi: Drop KEY_RESERVED special handling
>   platform/x86: thinkpad_acpi: Switch to using sparse-keymap helpers
>   platform/x86: thinkpad_acpi: Add mappings for adaptive kbd
>     clipping-tool and cloud keys
>
> Mark Pearson (4):
>   platform/x86: thinkpad_acpi: Simplify known_ev handling
>   platform/x86: thinkpad_acpi: Support for trackpoint doubletap
>   platform/x86: thinkpad_acpi: Support for system debug info hotkey
>   platform/x86: thinkpad_acpi: Support hotkey to disable trackpoint
>     doubletap
>
>  drivers/platform/x86/thinkpad_acpi.c | 854 +++++++++++----------------
>  1 file changed, 353 insertions(+), 501 deletions(-)
>
> -- 
> 2.44.0

For the entire v2 series:
Reviewed-by: mpearson-lenovo@squebb.ca

Plus a thank you. I learnt a bunch about the keymap interface/sub-system from reviewing the patch series; and I think the new sparse-keymap is a really nice cleanup.

Mark 


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
