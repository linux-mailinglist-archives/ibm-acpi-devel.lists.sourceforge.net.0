Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A1008ABFE0
	for <lists+ibm-acpi-devel@lfdr.de>; Sun, 21 Apr 2024 17:46:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1ryZOM-0003VY-9P;
	Sun, 21 Apr 2024 15:46:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1ryZOB-0003Tb-RM
 for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 21 Apr 2024 15:46:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JnjSJbh0o4jsaf81yyRkEYAvrQAXrb/x4V/CWBpqLI0=; b=gktmA2xuxqwpFzF2hWttERxPa3
 LfR7R93FLm+MtyMLiGtNpkl6nPef3Qu0d0JpHIBPEX63iDyedQrV6felk9hZHCrN60hUiy6f7/QRJ
 Kc28CwxDfizLnayuhKuV/AlbiaEsoJSM2X5jOMvtyQFqE72svNgpeoN8u/caRPm7ReIQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JnjSJbh0o4jsaf81yyRkEYAvrQAXrb/x4V/CWBpqLI0=; b=hvjB7VWKznz9Wz/ZB4MveYx5ur
 ZxYO0vt4tmF7EbF4SMlyZw4GHaSlF/NxpbGqPTgD9b66tVchQ/J6uGFTLU2o3KiPtg9eTv7CNIGma
 SX/ariEnUblqBN+JuyROuJqdmHxY57g1IbYUXgLPK7FxYm1sGhJdLfPm51DMbDWhvrXU=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ryZO9-0003U7-OE for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 21 Apr 2024 15:45:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1713714352;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=JnjSJbh0o4jsaf81yyRkEYAvrQAXrb/x4V/CWBpqLI0=;
 b=COHsC2VlPTw1HBgg0/2Es+gIG+I2T24erJJxlUdn9dnWd4RalV2CixabpxHMvU+MnU1jSW
 Q+wMJtPU1e/4+4cW/3+oplUhxPbtX8TDLfEy8oj/n4Otu6uK2FQx0zhmnaJIhf/hPmaql0
 9Dy2Toy81RvenoZA7ok/PPq1S0p60Wc=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-444-odOOxaiiMc6hHRR_gXLnPA-1; Sun,
 21 Apr 2024 11:45:47 -0400
X-MC-Unique: odOOxaiiMc6hHRR_gXLnPA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BFED71C0515F;
 Sun, 21 Apr 2024 15:45:46 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.39.192.66])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A5DCA402482D;
 Sun, 21 Apr 2024 15:45:45 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Andy Shevchenko <andy@kernel.org>,
 Mark Pearson <mpearson-lenovo@squebb.ca>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Date: Sun, 21 Apr 2024 17:45:11 +0200
Message-ID: <20240421154520.37089-16-hdegoede@redhat.com>
In-Reply-To: <20240421154520.37089-1-hdegoede@redhat.com>
References: <20240421154520.37089-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
X-Spam-Score: -0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Do not send ACPI netlink events for unknown hotkeys, to avoid
 userspace starting to rely on them. Instead these should be added to the
 keymap to send evdev events. This should not cause a behavior change for
 existing
 laptop models since all currently known 0x1xxx events have a mapping. 
 Content analysis details:   (-0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [170.10.133.124 listed in list.dnswl.org]
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
X-Headers-End: 1ryZO9-0003U7-OE
Subject: [ibm-acpi-devel] [PATCH 15/24] platform/x86: thinkpad_acpi: Do not
 send ACPI netlink events for unknown hotkeys
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

Do not send ACPI netlink events for unknown hotkeys, to avoid userspace
starting to rely on them. Instead these should be added to the keymap to
send evdev events.

This should not cause a behavior change for existing laptop models since
all currently known 0x1xxx events have a mapping.

In hindsight the ACPI netlink events should have been suppressed for
the adaptive keyboard and extended hotkeys events too. But the kernel has
been sending ACPI netlink events for those for a long time now, so we
cannot just stop sending them without potentially causing issues for
existing users who may depend on these.

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/platform/x86/thinkpad_acpi.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index bed66dd54920..ace615752c93 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -2250,7 +2250,7 @@ static void tpacpi_input_send_tabletsw(void)
 	}
 }
 
-static bool tpacpi_input_send_key(const u32 hkey)
+static bool tpacpi_input_send_key(const u32 hkey, bool *send_acpi_ev)
 {
 	unsigned int keycode, scancode;
 
@@ -2271,6 +2271,14 @@ static bool tpacpi_input_send_key(const u32 hkey)
 		scancode = hkey - TP_HKEY_EV_EXTENDED_KEY_START +
 			   TP_ACPI_HOTKEYSCAN_EXTENDED_START;
 	} else {
+		/*
+		 * Do not send ACPI netlink events for unknown hotkeys, to
+		 * avoid userspace starting to rely on them. Instead these
+		 * should be added to the keymap to send evdev events.
+		 */
+		if (send_acpi_ev)
+			*send_acpi_ev = false;
+
 		return false;
 	}
 
@@ -2298,7 +2306,7 @@ static struct tp_acpi_drv_struct ibm_hotkey_acpidriver;
 /* Do NOT call without validating scancode first */
 static void tpacpi_hotkey_send_key(unsigned int scancode)
 {
-	tpacpi_input_send_key(TP_HKEY_EV_ORIG_KEY_START + scancode);
+	tpacpi_input_send_key(TP_HKEY_EV_ORIG_KEY_START + scancode, NULL);
 }
 
 static void hotkey_read_nvram(struct tp_nvram_state *n, const u32 m)
@@ -3733,7 +3741,7 @@ static bool hotkey_notify_hotkey(const u32 hkey, bool *send_acpi_ev)
 			return true;
 	}
 
-	return tpacpi_input_send_key(hkey);
+	return tpacpi_input_send_key(hkey, send_acpi_ev);
 }
 
 /* 0x2000-0x2FFF: Wakeup reason */
-- 
2.44.0



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
