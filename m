Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 78EA78AC276
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 22 Apr 2024 02:38:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1ryhgY-0005pH-1N;
	Mon, 22 Apr 2024 00:37:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1ryhgV-0005p9-Ss
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 22 Apr 2024 00:37:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pBgqZ1/wwKK9PG4q3FogvE+JTkbuEcsXPcPthjvREik=; b=buL9eXYA87HIS3v643d+WyU5s4
 fOWRb6hjnrBiF/cFHQev5xTg9opGMwlQAka+EpawbMhWmz80N0BDDKc/0TTN0D8FYN+RDiD363lCq
 iXz/X/lVwAxT/9YweAuTfNEH88J47qmcqM3VSFcTqWWhMQ3qQLQKtS81UKl0BCEVjQQw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pBgqZ1/wwKK9PG4q3FogvE+JTkbuEcsXPcPthjvREik=; b=BkiS9iGKmlYobBdNjKewNnly/k
 C36ztwbB9cX0Dz/8VBT97JNZZigiyIqLoARgTabbEAI6dLp0QOPBX7SL0VRYWlku2K5ZiGj822YNn
 1Ml/DvT+NjCP8/lIvZt78s8n6FiC9fzWmcdFMbKek+SSvdC0asyUjgbIeWfyNtETZwHA=;
Received: from fout3-smtp.messagingengine.com ([103.168.172.146])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ryhgU-00055V-4q for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 22 Apr 2024 00:37:28 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailfout.nyi.internal (Postfix) with ESMTP id CAE4F1380093;
 Sun, 21 Apr 2024 20:37:15 -0400 (EDT)
Received: from imap52 ([10.202.2.102])
 by compute3.internal (MEProxy); Sun, 21 Apr 2024 20:37:15 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to; s=fm1; t=1713746235; x=1713832635; bh=pBgqZ1/wwK
 K9PG4q3FogvE+JTkbuEcsXPcPthjvREik=; b=OBhuftnwJWtf6FWuujV4NzIdgk
 2vlzW8KTEoH3gKHS1jXIkDhwgXqLOtl+/AcYqbovK3BDbVFauoPWGAiCs5CqS5zg
 mq7UPys2jNSUhV1ZX113huCFjpbS9FYrRdM6YYORf5GT7yvyR0bcxGW8ZSA565U2
 UipfzCb0n1ZmvKSqzv8pJ4PwVhyLwl1RCwCBGhlhmyTd3dwElG8vo3UZZKf9+9Z6
 +0J5PHonUHfSVBRKgVhYsJzbn1ndPjMrafGMRaYDEULc7ZKUGMgdlM3n0HAG6DGO
 4mNHxuGKbnUvHsYwVPPPrHg4dZNfP4JydbBVfL041Rhtgy3wVj3OY4gGO6Sg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1713746235; x=1713832635; bh=pBgqZ1/wwKK9PG4q3FogvE+JTkbu
 EcsXPcPthjvREik=; b=BfFvQALJy+VLp69K8nweKZ2x9o9iPDV0X7SoKZGk5C2S
 vRo2u9q0jgjN3qR3ORjVyoSRzZcuh22AnmJnQ9cA6gB0osAdISaWCJhnrUTJQUXh
 jCU6g4SI2i0wHt9RS3aBNgHy7tHzBRgtt1RSEMflVXaM66bPB2vduqVH3hjUiZ0D
 2O1QtkmxIKY/+uwEMJt0XcNXd3Cdfo4eL0/wqxLLfwbNoMGYLNV1DIe6l/qtpSw3
 5lzPTEqi0a8N4T4EPZYKDIZl/aQt7YzGxQ3nYth6yxW8HbwRyOsR70sTpLRden2Z
 2I3uVjbhfd0Vs4kR3C/l2WINoMTeSRPHJV/NNI6mIA==
X-ME-Sender: <xms:O7ElZiQtdYT-hXjxmPGq_JbIBFUsczUdB8NXLn8XXV-h4nkPV-SHPA>
 <xme:O7ElZnysmMktUuKgnOH6GxcYzp-MXSyJInKuayd0OW5Gg7iFd9ezhVMTy5HiKpfvY
 lEpVISNq0dSIoAJ-08>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudekkedgfeehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvfevufgtsehttdertderredtnecuhfhrohhmpedfofgr
 rhhkucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssg
 drtggrqeenucggtffrrghtthgvrhhnpeeiueefjeeiveetuddvkeetfeeltdevffevudeh
 ffefjedufedvieejgedugeekhfenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmh
 epmhgrihhlfhhrohhmpehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggr
X-ME-Proxy: <xmx:O7ElZv0wqYLP7UOHED4yUbLglJDS1TT5V9wZ5SWIjiglDbasCZakmg>
 <xmx:O7ElZuCVLHjidA_oPc_e0X7xuJNv_BRYezx8t61IurZrWiXBCVISPw>
 <xmx:O7ElZrjUZuDo_0RDEPgYKEr1yjcm6US5fQ-ndmU_0eF2xO9z0phTUg>
 <xmx:O7ElZqp-bBnmOWJoncTPamYHYyGUG1djfgEP6VT4uxsQpCDIupZOjQ>
 <xmx:O7ElZrhNtvt_SAA94B7153gX1njHXbYNt7q14zKGvf-_zJrVWxcvZ0Pw>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id CD377C60097; Sun, 21 Apr 2024 20:37:14 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.11.0-alpha0-379-gabd37849b7-fm-20240408.001-gabd37849
MIME-Version: 1.0
Message-Id: <ae6b2dd6-3659-4d12-a25f-93e5966e6a00@app.fastmail.com>
In-Reply-To: <9c3835d4-0241-4483-8527-dc789fdd8597@app.fastmail.com>
References: <20240421154520.37089-1-hdegoede@redhat.com>
 <9c3835d4-0241-4483-8527-dc789fdd8597@app.fastmail.com>
Date: Sun, 21 Apr 2024 20:36:54 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Hans de Goede" <hdegoede@redhat.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 "Andy Shevchenko" <andy@kernel.org>,
 "Henrique de Moraes Holschuh" <hmh@hmh.eng.br>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Apr 21, 2024, at 1:17 PM,
 Mark Pearson wrote: > Thanks
 Hans! > > On Sun, Apr 21, 2024, at 11:44 AM, Hans de Goede wrote: >> Hi All,
 >> >> My reply in the "[PATCH v2 1/4] platform/x86: thinkpad [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1ryhgU-00055V-4q
Subject: Re: [ibm-acpi-devel] [PATCH 00/24] platform/x86: thinkpad_acpi:
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
Cc: ibm-acpi-devel@lists.sourceforge.net, Vishnu Sankar <vishnuocv@gmail.com>,
 Nitin Joshi1 <njoshi1@lenovo.com>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Sun, Apr 21, 2024, at 1:17 PM, Mark Pearson wrote:
> Thanks Hans!
>
> On Sun, Apr 21, 2024, at 11:44 AM, Hans de Goede wrote:
>> Hi All,
>>
>> My reply in the "[PATCH v2 1/4] platform/x86: thinkpad_acpi:
>> simplify known_ev handling" handling where I indicated that I would work
>> on converting the thinkpad_acpi hotkey handling to use sparse-keymaps
>> underestimated the work this required quite a bit.
>>
>> The hotkey code is quite old and crufty and full of special cases to
>> support many generations of ThinkPads, so I ended up doing some
>> significant refactoring and cleanup before doing the actual conversion
>> to sparse-keymaps.
>>
>> I have been vary careful to not introduce any changes wrt support for
>> the original ThinkPad models / hotkeys which use the hotkey_*_mask
>> related code.
>>
>> I've also done my best to avoid any *significant* functional change but
>> there are still some functional changes, which should all not impact
>> userspace compatibility:
>>
>> 1. Adaptive keyboard special keys will now also send EV_MSC events with
>>    the scancode, just like all the other hotkeys.
>>
>> 2. Rely on the input core for KEY_RESERVED suppression. This means that
>>    keys marked as KEY_RESERVED will still send EV_MSC evdev events when
>>    pressed (which helps users with mapping them to non reserved KEY_FOO
>>    values if desired).
>>
>> 3. Align the keycodes for volume up/down/mute and brightness up/down with
>>    those set by userspace through udev upstream's hwdb. Note these are all
>>    for keys which are suppressed by hotkey_reserved_mask by default.
>>    So this is only a functional change for users who override the default
>>    hotkey-mask *and* who do not have udev's default hwdb installed.
>>
>> 4. Suppress ACPI netlink event generation for unknown 0x1xxx hkey events to
>>    avoid userspace starting to rely on the netlink events for new hotkeys
>>    before these have been added to the keymap, only to have the netlink
>>    events get disabled by the adding of the new hotkeys to the keymap.
>>
>>    This should not cause a behavior change for existing models since all
>>    currently known 0x1xxx events have a mapping.
>>
>> Here is a quick breakdown of the patches in this series:
>>
>> Patch 1 - 2: Fix a small locking issue on rmmod the only problem here
>>    really is a lockdep warning, so I plan to route these fixes through
>>    for-next together with the rest to keep things simple.
>>
>> Patch 3 - 14: Do a bunch of cleanups and refactoring
>>
>> Patch 15: Implements functional change no 4. I really kinda want to just
>>    completely disable ACPI netlink event generation when also sending evdev
>>    events instead of reporting these twice. But for the 0x11xx / 0x13xx
>>    hkey events the kernel has send ACPI netlink events for years now. So
>>    this disables ACPI netlink events for any new hotkeys going forward.
>>
>> Patch 16 - 18: Refactor / cleanup reserved key handling
>>
>> Patch 19: Actually move to sparse-keymaps
>>
>> Patch 20: Update the keymap for 2 adaptive kbd Fn row keys
>>
>> Patch 21 - 24: Mark's original patches adding support for the new Fn + N
>>    key combo and for trackpoint doubletap slightly reworked to use
>>    the new sparse-keymap.
>>
>> Mark if you can make some time to review patches 1-20 that would be great.
>>
> Definitely will do.
>
> I'll do some testing on platforms here as much as I can. If there's 
> anything in particular that you think is worth taking extra care over 
> let me know (with a caveat that my team doesn't have all the platforms, 
> and for anything older than 5 years it can be hard to get hold of them)
>
> Thanks for your work on this.
>
> Mark
>
I've tested the series on a couple of platforms (Z13 G2 and X1 Carbon G12) and so far all looking good.
 - tried all hotkey combinations that are supported that I can think of and they work - including brightness control, volume control, platform profile toggle, airplane, snipping tool and privacy screen.
 - trackpoint double tap is working well on the Z13 G2 (set up custom key setting in gnome-settings and launched browser on a doubletap)
 - FN+N is working well on the X1 Carbon G12 (tested with evtest to confirm vendor key generated)

So for the series:
Tested-by: Mark Pearson <mpearson-lenovo@squebb.ca>

I have read through the patches, but not in enough depth for it to count as a review yet. Need a bit more time for that.

Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
