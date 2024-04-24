Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E47C8B09B3
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 24 Apr 2024 14:30:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rzbky-0005np-IJ;
	Wed, 24 Apr 2024 12:29:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1rzbkg-0005lc-GG
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Apr 2024 12:29:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6kusTgxxc+WBNryQ1ZADFufFeZp88/X4GcBa2xpjfaI=; b=L8NNGiOLLAAgVbSCjX2BWDSByT
 fiGLHNGsJzrIFvMMOIMHNkgUTnz7b0xcNbU6LiXSWySt5nAyrTZWUQ9IE6Hv3pNMQRpi0YrKfr4qL
 DBrR3Xa3a4l21vJ6n0qaOrQmwohhxhC3nMjWEWnd3LnhAzZkHCGkU0zTeVq/s2VGawww=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6kusTgxxc+WBNryQ1ZADFufFeZp88/X4GcBa2xpjfaI=; b=LOCQFgJlqdc2ZnzvRiV3VSGf4K
 do5tvRm5S1MRj8PskR+QR36hL2QBcfUuQr09fKapLCu+7xj2LS0z0I8fEskgZC+6SHDMrkcZ3i396
 obEvX5/gOHzdZIBLeNDGEb/rz54URJvDWNAxNZuIvp1MZjF9iPbjP8C5seI+Ia/+SGFI=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rzbkW-000257-Fm for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Apr 2024 12:29:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1713961750;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=6kusTgxxc+WBNryQ1ZADFufFeZp88/X4GcBa2xpjfaI=;
 b=huXlq+FztW34eUwEycTRsgYxpJaLTmgIeQ4E2TAgXDI3CEAAki4YRsRm9uzWjaROmkfnVR
 UTYU9OwXzxpte+Y87NGUpqwGlPIEfWm3JLrpNXQ/50z93C8KLvU+f5ohYenHLF02TmHhaA
 m1i5+O/nO1D1WlAkpEduVoN8OKYUyI0=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-55--qGGniG7PUq7_i2YOj4_rA-1; Wed, 24 Apr 2024 08:29:06 -0400
X-MC-Unique: -qGGniG7PUq7_i2YOj4_rA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 44ABF8DCFC2;
 Wed, 24 Apr 2024 12:29:06 +0000 (UTC)
Received: from shalem.redhat.com (unknown [10.39.195.45])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1DDBCC13FA4;
 Wed, 24 Apr 2024 12:29:05 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Andy Shevchenko <andy@kernel.org>,
 Mark Pearson <mpearson-lenovo@squebb.ca>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Date: Wed, 24 Apr 2024 14:28:32 +0200
Message-ID: <20240424122834.19801-23-hdegoede@redhat.com>
In-Reply-To: <20240424122834.19801-1-hdegoede@redhat.com>
References: <20240424122834.19801-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Mark Pearson <mpearson-lenovo@squebb.ca> Lenovo
 trackpoints
 are adding the ability to generate a doubletap event. This handles the
 doubletap
 event and sends the KEY_PROG4 event to userspace. Despite the driver itself
 not using KEY_PROG1 - KE [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rzbkW-000257-Fm
Subject: [ibm-acpi-devel] [PATCH v2 22/24] platform/x86: thinkpad_acpi:
 Support for trackpoint doubletap
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

From: Mark Pearson <mpearson-lenovo@squebb.ca>

Lenovo trackpoints are adding the ability to generate a doubletap event.
This handles the doubletap event and sends the KEY_PROG4 event to
userspace. Despite the driver itself not using KEY_PROG1 - KEY_PROG3 this
still uses KEY_PROG4 because of some keys being remapped to KEY_PROG1 -
KEY_PROG3 by default by the upstream udev hwdb containing:

evdev:name:ThinkPad Extra Buttons:dmi:bvn*:bvr*:bd*:svnLENOVO*:pn*:*
 ...
 KEYBOARD_KEY_17=prog1
 KEYBOARD_KEY_1a=f20       # Microphone mute button
 KEYBOARD_KEY_45=bookmarks
 KEYBOARD_KEY_46=prog2     # Fn + PrtSc, on Windows: Snipping tool
 KEYBOARD_KEY_4a=prog3     # Fn + Right shift, on Windows: No idea

Signed-off-by: Mark Pearson <mpearson-lenovo@squebb.ca>
Signed-off-by: Vishnu Sankar <vishnuocv@gmail.com>
Link: https://lore.kernel.org/r/20240417173124.9953-2-mpearson-lenovo@squebb.ca
[hdegoede@redhat.com: Adjust for switch to sparse-keymap keymaps]
Tested-by: Mark Pearson <mpearson-lenovo@squebb.ca>
Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/platform/x86/thinkpad_acpi.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index a53b00fecf1a..b6d6466215e1 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -248,6 +248,9 @@ enum tpacpi_hkey_event_t {
 
 	/* Misc */
 	TP_HKEY_EV_RFKILL_CHANGED	= 0x7000, /* rfkill switch changed */
+
+	/* Misc2 */
+	TP_HKEY_EV_TRACK_DOUBLETAP      = 0x8036, /* trackpoint doubletap */
 };
 
 /****************************************************************************
@@ -3268,6 +3271,7 @@ static const struct key_entry keymap_lenovo[] __initconst = {
 	 * after switching to sparse keymap support. The mappings above use translated
 	 * scancodes to preserve uAPI compatibility, see tpacpi_input_send_key().
 	 */
+	{ KE_KEY, TP_HKEY_EV_TRACK_DOUBLETAP /* 0x8036 */, { KEY_PROG4 } },
 	{ KE_END }
 };
 
@@ -3817,6 +3821,17 @@ static bool hotkey_notify_6xxx(const u32 hkey, bool *send_acpi_ev)
 	return true;
 }
 
+static bool hotkey_notify_8xxx(const u32 hkey, bool *send_acpi_ev)
+{
+	switch (hkey) {
+	case TP_HKEY_EV_TRACK_DOUBLETAP:
+		tpacpi_input_send_key(hkey, send_acpi_ev);
+		return true;
+	default:
+		return false;
+	}
+}
+
 static void hotkey_notify(struct ibm_struct *ibm, u32 event)
 {
 	u32 hkey;
@@ -3893,6 +3908,10 @@ static void hotkey_notify(struct ibm_struct *ibm, u32 event)
 				known_ev = true;
 			}
 			break;
+		case 8:
+			/* 0x8000-0x8FFF: misc2 */
+			known_ev = hotkey_notify_8xxx(hkey, &send_acpi_ev);
+			break;
 		}
 		if (!known_ev) {
 			pr_notice("unhandled HKEY event 0x%04x\n", hkey);
-- 
2.44.0



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
