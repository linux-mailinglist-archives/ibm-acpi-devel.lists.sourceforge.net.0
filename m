Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D89328B0999
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 24 Apr 2024 14:29:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rzbk3-0005FO-50;
	Wed, 24 Apr 2024 12:28:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1rzbk2-0005Bn-8f
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Apr 2024 12:28:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0xvBzDNRJJ9jSclY1XJJLLiBrhthst3ZLwuU0+xsuAw=; b=VFs6qAGsULjx8xP0wJESabp1aG
 VYoI8UC13BnYkw108yFlqmrpcQ0AvUFw5MvC6p6n4NvENWqhLkVw+4SmaHIc85LjvTD89jnk6L8KO
 4W7807CMPdpbDL6/F8az4zcQjuFh5AGEeGMyM9jlJWJi74ivvATsOnU2dNTGDpreZvjI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=0xvBzDNRJJ9jSclY1XJJLLiBrhthst3ZLwuU0+xsuAw=; b=c
 wwReHw3AKS86izxp/3rjGUPncadRdG4hNkCS8ffKlCdcRVDCLkrZPewMVXBLLIA20Lruk8KYCyWjK
 WE3v8lZQVD+rTQ7eQd6H08Ih6TFcrzwU7QgDXLTXG6eSnKcu+BzKe544zhIL3xVJdXkHejpidqvok
 wJldrnKiNFy+s0+4=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rzbk1-00021A-7V for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Apr 2024 12:28:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1713961718;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=0xvBzDNRJJ9jSclY1XJJLLiBrhthst3ZLwuU0+xsuAw=;
 b=gM4q9TkMv65pOapm1D9xLpLeSxEIcjwDPzctp3V/1AqZARfrMoxTE0ZwjqOurc3n7zZKr6
 3UDvQ4nuStQIZU/PUVuQpYb3v05pxLEfsa0JQ2MlETKYtDnLrW5Hr0OxAWf7rogtnR37WU
 qaSjpObupy4zdBTxEFO6w5hMuF4rVwQ=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-643-PgxBR5aYPay2iegg55eLrA-1; Wed, 24 Apr 2024 08:28:36 -0400
X-MC-Unique: PgxBR5aYPay2iegg55eLrA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4687A8DCFC3;
 Wed, 24 Apr 2024 12:28:36 +0000 (UTC)
Received: from shalem.redhat.com (unknown [10.39.195.45])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D9D70C15771;
 Wed, 24 Apr 2024 12:28:34 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Andy Shevchenko <andy@kernel.org>,
 Mark Pearson <mpearson-lenovo@squebb.ca>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Date: Wed, 24 Apr 2024 14:28:10 +0200
Message-ID: <20240424122834.19801-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi All,
 Here is v2 of my patch-series to refactor thinkpad_acpi's
 hotkey handling and to add support for some new hotkeys on new models. Changes
 in v2: - Some small code style tweaks in response to reviews - Add various
 Reviewed-by and Tested-by tags 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rzbk1-00021A-7V
Subject: [ibm-acpi-devel] [PATCH v2 00/24] platform/x86: thinkpad_acpi:
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

Here is v2 of my patch-series to refactor thinkpad_acpi's hotkey handling
and to add support for some new hotkeys on new models.

Changes in v2:
- Some small code style tweaks in response to reviews
- Add various Reviewed-by and Tested-by tags

Relevant parts of v1 cover-letter:

I have been very careful to not introduce any changes wrt support for
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

 drivers/platform/x86/thinkpad_acpi.c | 854 +++++++++++----------------
 1 file changed, 353 insertions(+), 501 deletions(-)

-- 
2.44.0



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
