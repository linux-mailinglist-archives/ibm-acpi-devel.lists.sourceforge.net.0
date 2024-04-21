Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 524F18AC038
	for <lists+ibm-acpi-devel@lfdr.de>; Sun, 21 Apr 2024 19:18:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1ryapL-0000hz-PS;
	Sun, 21 Apr 2024 17:18:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1ryapJ-0000hp-9w
 for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 21 Apr 2024 17:18:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Y8J12/WKX9t7StXqHJzpoZ+PnFRYfbjbKyDBn+pS8s8=; b=NAaIpmkFOxcgxGtk2jsN7qkM/A
 DSImdZ/Yuea5QEqAkyUPHSkOAbx48mbhxivDpMSN4LnkGGGKNbH3zJCAEUSD08r6WHDOywFC1qJ1E
 WIq53rCvDivhckJMcSDKQU8sHVJoBCV/ZHjAdquw6+qRq/PsLPF30zpqClTAQIuzeDec=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Y8J12/WKX9t7StXqHJzpoZ+PnFRYfbjbKyDBn+pS8s8=; b=Z/2076SeAorPHRO0T2PgCUJ0q4
 tWYwsyklsKXnwv/XWSZ0eP+CqP5+dosNTZe1+kuWJQMUyW53ivcSMc9OyH3icc++Pr1XUyRWPTTZu
 kbHQeX0ZghjzYPVQsYDR1z3VU6NSbBMasSoL00x9hVsSOqnwJ05y9fFvKUgkFiL/F1Qw=;
Received: from fhigh4-smtp.messagingengine.com ([103.168.172.155])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ryapH-0008Ju-GO for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 21 Apr 2024 17:18:05 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id BD64911400CB;
 Sun, 21 Apr 2024 13:17:57 -0400 (EDT)
Received: from imap52 ([10.202.2.102])
 by compute3.internal (MEProxy); Sun, 21 Apr 2024 13:17:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to; s=fm1; t=1713719877; x=1713806277; bh=Y8J12/WKX9
 t7StXqHJzpoZ+PnFRYfbjbKyDBn+pS8s8=; b=hNiTyZXRdfRBIIJxjex2JnOLGM
 Du7RBWl0kaSMMIxGOmk5xvyl6Pa3mMwLQd2OivKNayQ8yozDEYstVLhu65D8C5DW
 btuPK9ayShjg56nWf88lI+YCNOTIOr51wlhKtKgn1xKL1euPf/IieffgvgSpuA/8
 bzOLW99y+p27g/J5jdc8/KGVeKgi4KoOz4HUfYzgof9lshjP3L1pv+6a5t3U8KZD
 Bb+3BK/b6lPBm5qd1+fSTE3PI+Qr8Y4O4Wj93DBLEXfWM2lNE1T6hN+LySXeOXog
 bv3lAet72E4CF3Rk+QtEYnOX6TkDvnNeR1175CcIr8CGozxsOMNzsxZUP6cw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1713719877; x=1713806277; bh=Y8J12/WKX9t7StXqHJzpoZ+PnFRY
 fbjbKyDBn+pS8s8=; b=VZoBCKDBD5QbvZMwZbPBV7QD5pudgKuW4LqNOyOWuuRK
 sGvwNiWjKUCwA/U1RLw9qhlEg72qWNq/XIpECs0HP+TA/TDbNIAKLB49ntax6e7C
 OmuG3OxnVRVLhvqUhzr4yTVir/io/A+u2ARGfHByk7tNrudp/Z1x1E0Bfb7Xka20
 lgyulAi3qaPNv3KN4A44KjnJQmds7NjXJxx7rr/gc+R9/y5N4bohQsc9O5dSczJf
 Hp2YjiWABkfBXLxWKC57nFdiglNN1L7sc2Ps4mclBAms11yDJWJz+eLh4qafTLia
 L6mrCmV/VX/JLzBwc+99aMMqrGMLmOeEbUgTmnHfhQ==
X-ME-Sender: <xms:RUolZuqWdBesIMX0Zg4qHLgxOeRFKlZYQCJm_8DcizXeEYud7QO1Qg>
 <xme:RUolZsqZ6A8mDy_gT9WKuzoz7ndzKknn7nXkxR2-dqPuYoNYV-E7VaFeUus6VtP9N
 63lJpz6enSJD1zZtPU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudekjedguddugecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefofgggkfgjfhffhffvvefutgesthdtredtreertdenucfhrhhomhepfdfo
 rghrkhcurfgvrghrshhonhdfuceomhhpvggrrhhsohhnqdhlvghnohhvohesshhquhgvsg
 gsrdgtrgeqnecuggftrfgrthhtvghrnhepieeufeejieevteduvdekteefledtveffvedu
 hefffeejudefvdeijeegudegkefhnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrg
 hmpehmrghilhhfrhhomhepmhhpvggrrhhsohhnqdhlvghnohhvohesshhquhgvsggsrdgt
 rg
X-ME-Proxy: <xmx:RUolZjNPzamOIZLs1_EKQFLjL0vQxzaKlD_2qRr5jvWVYw0Hh-WwSg>
 <xmx:RUolZt72eUM4nJQYjWdfmssMArIL2JUpCEBJZ83MYLlcpr5eRj_G_Q>
 <xmx:RUolZt5UpaMSYiWoTbxOboLw2KpbuNXxOAHcKunLkwjAaDo-nuqhJw>
 <xmx:RUolZtgyM3nb-4oCem3QBAHAw87_F32gT6OAI0n0tjyWXNQHMx6ANg>
 <xmx:RUolZoYqND1qYevvVMakWzQgg78AHRP5ZozBzvUL1s6lB58e73XakFVb>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 07D32C60098; Sun, 21 Apr 2024 13:17:57 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.11.0-alpha0-379-gabd37849b7-fm-20240408.001-gabd37849
MIME-Version: 1.0
Message-Id: <9c3835d4-0241-4483-8527-dc789fdd8597@app.fastmail.com>
In-Reply-To: <20240421154520.37089-1-hdegoede@redhat.com>
References: <20240421154520.37089-1-hdegoede@redhat.com>
Date: Sun, 21 Apr 2024 13:17:36 -0400
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
 Content preview:  Thanks Hans! On Sun, Apr 21, 2024, at 11:44 AM, Hans de Goede
 wrote: > Hi All,
 > > My reply in the "[PATCH v2 1/4] platform/x86: thinkpad_acpi:
 > simplify known_ev handling" handling where I indicated that I would [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: squebb.ca]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1ryapH-0008Ju-GO
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
Cc: ibm-acpi-devel@lists.sourceforge.net, "platform-driver-x86@vger.kernel.org"
 <platform-driver-x86@vger.kernel.org>, Nitin Joshi1 <njoshi1@lenovo.com>,
 Vishnu Sankar <vishnuocv@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Thanks Hans!

On Sun, Apr 21, 2024, at 11:44 AM, Hans de Goede wrote:
> Hi All,
>
> My reply in the "[PATCH v2 1/4] platform/x86: thinkpad_acpi:
> simplify known_ev handling" handling where I indicated that I would work
> on converting the thinkpad_acpi hotkey handling to use sparse-keymaps
> underestimated the work this required quite a bit.
>
> The hotkey code is quite old and crufty and full of special cases to
> support many generations of ThinkPads, so I ended up doing some
> significant refactoring and cleanup before doing the actual conversion
> to sparse-keymaps.
>
> I have been vary careful to not introduce any changes wrt support for
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
> Mark if you can make some time to review patches 1-20 that would be great.
>
Definitely will do.

I'll do some testing on platforms here as much as I can. If there's anything in particular that you think is worth taking extra care over let me know (with a caveat that my team doesn't have all the platforms, and for anything older than 5 years it can be hard to get hold of them)

Thanks for your work on this.

Mark

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
>  drivers/platform/x86/thinkpad_acpi.c | 849 +++++++++++----------------
>  1 file changed, 348 insertions(+), 501 deletions(-)
>
> -- 
> 2.44.0


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
