Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BB7D8ABFD7
	for <lists+ibm-acpi-devel@lfdr.de>; Sun, 21 Apr 2024 17:46:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1ryZNs-000118-TD;
	Sun, 21 Apr 2024 15:45:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1ryZNr-000112-Td
 for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 21 Apr 2024 15:45:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1S/AJXq0rQrlD6I8rI07rKpBMasUHTiTmcxpdMUwm3E=; b=dGAMlXShwlAP1eVoBSLbK2D4cK
 o9TnceoDNm2NYIWgPYL1htd8SJt9cBmYrgrZXNw1d7iekTDz/7VfC1BiNN7qth6xK0+HJYANaFmAZ
 ja9gyz3tUwzaxW2u6G3o8ZFrLBisgDttJqWDKs1WSEiHgHvY/UG47KznOcrXAz/NC18c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=1S/AJXq0rQrlD6I8rI07rKpBMasUHTiTmcxpdMUwm3E=; b=m
 azlvTGoyKT3lB946lazwwByA4xTHFPHy8pUGiEgaKLFqeqEo5bs5jUn8Eg72DcB/5/Drq72yxagFD
 jDi9UAwowpOf7R5WvBt5kenJf2ygsAqpmW5Qi3YLL13ovfMG8QtsKDlaIgGpDf+rxmiwqQpi14zOj
 7C1H1I7gwMAEyeaY=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ryZNq-0003Sg-O5 for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 21 Apr 2024 15:45:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1713714332;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=1S/AJXq0rQrlD6I8rI07rKpBMasUHTiTmcxpdMUwm3E=;
 b=H0kxNA+H/My1NLCYIPmTQMN1rGhbG1zj6xwSvJQLQ9hwLak8dfaoEnfFBsxLiVJN+O+f4C
 fa13Mk3evIt4NbPOiLKWJfXYp4Tn6/4w+80Bk7NQ4TAC0YjWkifxQyDzhYYjXylz8Nuv3y
 0vhk+hl6wVtsLA/mC+uqU0Ium97YuMk=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-413-ttgP8wMNMjaluszo_2QV7g-1; Sun,
 21 Apr 2024 11:45:27 -0400
X-MC-Unique: ttgP8wMNMjaluszo_2QV7g-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 486C0380450A;
 Sun, 21 Apr 2024 15:45:27 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.39.192.66])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D4B2A402482D;
 Sun, 21 Apr 2024 15:45:25 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Andy Shevchenko <andy@kernel.org>,
 Mark Pearson <mpearson-lenovo@squebb.ca>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Date: Sun, 21 Apr 2024 17:44:56 +0200
Message-ID: <20240421154520.37089-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
X-Spam-Score: -5.6 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi All,
 My reply in the "[PATCH v2 1/4] platform/x86: thinkpad_acpi:
 simplify known_ev handling" handling where I indicated that I would work
 on converting the thinkpad_acpi hotkey handling to use sparse-keym [...] 
 Content analysis details:   (-5.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [170.10.129.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ryZNq-0003Sg-O5
Subject: [ibm-acpi-devel] [PATCH 00/24] platform/x86: thinkpad_acpi:
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
Cc: Hans de Goede <hdegoede@redhat.com>, platform-driver-x86@vger.kernel.org,
 ibm-acpi-devel@lists.sourceforge.net, Nitin Joshi <njoshi1@lenovo.com>,
 Vishnu Sankar <vishnuocv@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi All,

My reply in the "[PATCH v2 1/4] platform/x86: thinkpad_acpi:
simplify known_ev handling" handling where I indicated that I would work
on converting the thinkpad_acpi hotkey handling to use sparse-keymaps
underestimated the work this required quite a bit.

The hotkey code is quite old and crufty and full of special cases to
support many generations of ThinkPads, so I ended up doing some
significant refactoring and cleanup before doing the actual conversion
to sparse-keymaps.

I have been vary careful to not introduce any changes wrt support for
the original ThinkPad models / hotkeys which use the hotkey_*_mask
related code.

I've also done my best to avoid any *significant* functional change but
there are still some functional changes, which should all not impact
userspace compatibility:

1. Adaptive keyboard special keys will now also send EV_MSC events with
   the scancode, just like all the other hotkeys.

2. Rely on the input core for KEY_RESERVED suppression. This means that
   keys marked as KEY_RESERVED will still send EV_MSC evdev events when
   pressed (which helps users with mapping them to non reserved KEY_FOO
   values if desired).

3. Align the keycodes for volume up/down/mute and brightness up/down with
   those set by userspace through udev upstream's hwdb. Note these are all
   for keys which are suppressed by hotkey_reserved_mask by default.
   So this is only a functional change for users who override the default
   hotkey-mask *and* who do not have udev's default hwdb installed.

4. Suppress ACPI netlink event generation for unknown 0x1xxx hkey events to
   avoid userspace starting to rely on the netlink events for new hotkeys
   before these have been added to the keymap, only to have the netlink
   events get disabled by the adding of the new hotkeys to the keymap.

   This should not cause a behavior change for existing models since all
   currently known 0x1xxx events have a mapping.

Here is a quick breakdown of the patches in this series:

Patch 1 - 2: Fix a small locking issue on rmmod the only problem here
   really is a lockdep warning, so I plan to route these fixes through
   for-next together with the rest to keep things simple.

Patch 3 - 14: Do a bunch of cleanups and refactoring

Patch 15: Implements functional change no 4. I really kinda want to just
   completely disable ACPI netlink event generation when also sending evdev
   events instead of reporting these twice. But for the 0x11xx / 0x13xx
   hkey events the kernel has send ACPI netlink events for years now. So
   this disables ACPI netlink events for any new hotkeys going forward.

Patch 16 - 18: Refactor / cleanup reserved key handling

Patch 19: Actually move to sparse-keymaps

Patch 20: Update the keymap for 2 adaptive kbd Fn row keys

Patch 21 - 24: Mark's original patches adding support for the new Fn + N
   key combo and for trackpoint doubletap slightly reworked to use
   the new sparse-keymap.

Mark if you can make some time to review patches 1-20 that would be great.

Regards,

Hans


Hans de Goede (20):
  platform/x86: thinkpad_acpi: Take hotkey_mutex during hotkey_exit()
  platform/x86: thinkpad_acpi: Provide hotkey_poll_stop_sync() dummy
  platform/x86: thinkpad_acpi: Drop setting send_/ignore_acpi_ev
    defaults twice
  platform/x86: thinkpad_acpi: Drop ignore_acpi_ev
  platform/x86: thinkpad_acpi: Use tpacpi_input_send_key() in adaptive
    kbd code
  platform/x86: thinkpad_acpi: Do hkey to scancode translation later
  platform/x86: thinkpad_acpi: Make tpacpi_driver_event() return if it
    handled the event
  platform/x86: thinkpad_acpi: Move adaptive kbd event handling to
    tpacpi_driver_event()
  platform/x86: thinkpad_acpi: Move special original hotkeys handling
    out of switch-case
  platform/x86: thinkpad_acpi: Move hotkey_user_mask check to
    tpacpi_input_send_key()
  platform/x86: thinkpad_acpi: Always call tpacpi_driver_event() for
    hotkeys
  platform/x86: thinkpad_acpi: Drop tpacpi_input_send_key_masked() and
    hotkey_driver_event()
  platform/x86: thinkpad_acpi: Move hkey > scancode mapping to
    tpacpi_input_send_key()
  platform/x86: thinkpad_acpi: Move tpacpi_driver_event() call to
    tpacpi_input_send_key()
  platform/x86: thinkpad_acpi: Do not send ACPI netlink events for
    unknown hotkeys
  platform/x86: thinkpad_acpi: Change hotkey_reserved_mask
    initialization
  platform/x86: thinkpad_acpi: Use correct keycodes for volume and
    brightness keys
  platform/x86: thinkpad_acpi: Drop KEY_RESERVED special handling
  platform/x86: thinkpad_acpi: Switch to using sparse-keymap helpers
  platform/x86: thinkpad_acpi: Add mappings for adaptive kbd
    clipping-tool and cloud keys

Mark Pearson (4):
  platform/x86: thinkpad_acpi: Simplify known_ev handling
  platform/x86: thinkpad_acpi: Support for trackpoint doubletap
  platform/x86: thinkpad_acpi: Support for system debug info hotkey
  platform/x86: thinkpad_acpi: Support hotkey to disable trackpoint
    doubletap

 drivers/platform/x86/thinkpad_acpi.c | 849 +++++++++++----------------
 1 file changed, 348 insertions(+), 501 deletions(-)

-- 
2.44.0



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
