Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E849F8B09AC
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 24 Apr 2024 14:30:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rzbkw-0004fp-CS;
	Wed, 24 Apr 2024 12:29:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1rzbkg-0004bg-34
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Apr 2024 12:29:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1sT0DzFtYGSGrORU33wcG5T6tVmB9+5DP1SLHoMQ3gs=; b=eXPHEQNKonNdyQZRByxWtC+dgO
 DdEMmoEAbbDFSLZoVCUqkOPc36Nol0VZEVnlTK71EQqkU1aj0aE2MmOiIeHZJbmVwr8mP1J8UaF3Q
 Drv/BhmnSsmrSNzTooBXxy2GJ75wWsJam+jH+XEzj2A/hc9QKfZkrVN7CWyYNXd1C2Y8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1sT0DzFtYGSGrORU33wcG5T6tVmB9+5DP1SLHoMQ3gs=; b=C2ltRqHUDO5UpJGAQjiqpBc98J
 QwEXMJGWdjXNTNAUlnAzMaNMMpYrdIXCA6u/RJrs+HHJBFkQpEyu6r+fknbjnV9UPkHZxHS3265V7
 Ge5XSmAckVwdQ2McSXxgULdf6II7KePKubOVjLvI6Se7grDgJQD1NYzg69jk33c4kkU8=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rzbkP-00024P-IO for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Apr 2024 12:29:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1713961743;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1sT0DzFtYGSGrORU33wcG5T6tVmB9+5DP1SLHoMQ3gs=;
 b=S4ROS08YcyYzK8GEhqVmIg3ACRTZ69HCd2WKTyXFLQBZOV/QVNuYBvI8FDJsR/1TmByC+D
 vyUzUzAAgCvVzOvUVKTzfsxMpLmRrauSXKVZGMsF0d674k3wMXuFmyGl8mdLg76+n1VOI4
 hzKRW++MiZSF6gUbEnhTv8SaUW0CrQU=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-678-9F4NV9g7MeSCgGJydxdS5w-1; Wed, 24 Apr 2024 08:29:00 -0400
X-MC-Unique: 9F4NV9g7MeSCgGJydxdS5w-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7CFE918065AA;
 Wed, 24 Apr 2024 12:28:59 +0000 (UTC)
Received: from shalem.redhat.com (unknown [10.39.195.45])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 57FA8C13FA5;
 Wed, 24 Apr 2024 12:28:58 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Andy Shevchenko <andy@kernel.org>,
 Mark Pearson <mpearson-lenovo@squebb.ca>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Date: Wed, 24 Apr 2024 14:28:27 +0200
Message-ID: <20240424122834.19801-18-hdegoede@redhat.com>
In-Reply-To: <20240424122834.19801-1-hdegoede@redhat.com>
References: <20240424122834.19801-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Change the default keymap to report the correct keycodes for
 the volume and brightness keys. Reporting key events for these is already
 filtered out by the hotkey_reserved_mask which masks these keys o [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [170.10.133.124 listed in list.dnswl.org]
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
X-Headers-End: 1rzbkP-00024P-IO
Subject: [ibm-acpi-devel] [PATCH v2 17/24] platform/x86: thinkpad_acpi: Use
 correct keycodes for volume and brightness keys
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

Change the default keymap to report the correct keycodes for the volume and
brightness keys. Reporting key events for these is already filtered out by
the hotkey_reserved_mask which masks these keys out of hotkey_user_mask at
initialization time, so there is no need to also map them to KEY_RESERVED.

This avoids users, who want these to be reported, having to also remap
the keycodes on top of overriding hotkey_user_mask to report these
and Linux userspace has already been overriding the KEY_RESERVED mappings
with the correct keycodes through udev/hwdb/60-keyboard.hwdb for years now.

Also drop hotkey_unmap() it was only used to dynamically map the brightness
keys to KEY_RESERVED and after removing that it has no remaining users.

Tested-by: Mark Pearson <mpearson-lenovo@squebb.ca>
Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/platform/x86/thinkpad_acpi.c | 45 +++++++++++++---------------
 1 file changed, 21 insertions(+), 24 deletions(-)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index cf5c741d1343..89931bb980be 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -3097,15 +3097,6 @@ static void hotkey_exit(void)
 	mutex_unlock(&hotkey_mutex);
 }
 
-static void __init hotkey_unmap(const unsigned int scancode)
-{
-	if (hotkey_keycode_map[scancode] != KEY_RESERVED) {
-		clear_bit(hotkey_keycode_map[scancode],
-			  tpacpi_inputdev->keybit);
-		hotkey_keycode_map[scancode] = KEY_RESERVED;
-	}
-}
-
 /*
  * HKEY quirks:
  *   TPACPI_HK_Q_INIMASK:	Supports FN+F3,FN+F4,FN+F12
@@ -3224,22 +3215,28 @@ static int __init hotkey_init(struct ibm_init_struct *iibm)
 		KEY_UNKNOWN,	/* 0x0D: FN+INSERT */
 		KEY_UNKNOWN,	/* 0x0E: FN+DELETE */
 
-		/* brightness: firmware always reacts to them */
-		KEY_RESERVED,	/* 0x0F: FN+HOME (brightness up) */
-		KEY_RESERVED,	/* 0x10: FN+END (brightness down) */
+		/* brightness: firmware always reacts to them.
+		 * Suppressed by default through hotkey_reserved_mask.
+		 */
+		KEY_BRIGHTNESSUP,	/* 0x0F: FN+HOME (brightness up) */
+		KEY_BRIGHTNESSDOWN,	/* 0x10: FN+END (brightness down) */
 
-		/* Thinklight: firmware always react to it */
-		KEY_RESERVED,	/* 0x11: FN+PGUP (thinklight toggle) */
+		/* Thinklight: firmware always react to it.
+		 * Suppressed by default through hotkey_reserved_mask.
+		 */
+		KEY_KBDILLUMTOGGLE,	/* 0x11: FN+PGUP (thinklight toggle) */
 
 		KEY_UNKNOWN,	/* 0x12: FN+PGDOWN */
 		KEY_ZOOM,	/* 0x13: FN+SPACE (zoom) */
 
 		/* Volume: firmware always react to it and reprograms
 		 * the built-in *extra* mixer.  Never map it to control
-		 * another mixer by default. */
-		KEY_RESERVED,	/* 0x14: VOLUME UP */
-		KEY_RESERVED,	/* 0x15: VOLUME DOWN */
-		KEY_RESERVED,	/* 0x16: MUTE */
+		 * another mixer by default.
+		 * Suppressed by default through hotkey_reserved_mask.
+		 */
+		KEY_VOLUMEUP,	/* 0x14: VOLUME UP */
+		KEY_VOLUMEDOWN,	/* 0x15: VOLUME DOWN */
+		KEY_MUTE,	/* 0x16: MUTE */
 
 		KEY_VENDOR,	/* 0x17: Thinkpad/AccessIBM/Lenovo */
 
@@ -3282,7 +3279,8 @@ static int __init hotkey_init(struct ibm_init_struct *iibm)
 		KEY_BRIGHTNESSUP,	/* 0x0F: FN+HOME (brightness up) */
 		KEY_BRIGHTNESSDOWN,	/* 0x10: FN+END (brightness down) */
 
-		KEY_RESERVED,	/* 0x11: FN+PGUP (thinklight toggle) */
+		/* Suppressed by default through hotkey_reserved_mask. */
+		KEY_KBDILLUMTOGGLE,	/* 0x11: FN+PGUP (thinklight toggle) */
 
 		KEY_UNKNOWN,	/* 0x12: FN+PGDOWN */
 		KEY_ZOOM,	/* 0x13: FN+SPACE (zoom) */
@@ -3297,10 +3295,11 @@ static int __init hotkey_init(struct ibm_init_struct *iibm)
 		 * change unless you get test reports from all Lenovo
 		 * models.  May cause the BIOS to interfere with the
 		 * HDA mixer.
+		 * Suppressed by default through hotkey_reserved_mask.
 		 */
-		KEY_RESERVED,	/* 0x14: VOLUME UP */
-		KEY_RESERVED,	/* 0x15: VOLUME DOWN */
-		KEY_RESERVED,	/* 0x16: MUTE */
+		KEY_VOLUMEUP,	/* 0x14: VOLUME UP */
+		KEY_VOLUMEDOWN,	/* 0x15: VOLUME DOWN */
+		KEY_MUTE,	/* 0x16: MUTE */
 
 		KEY_VENDOR,	/* 0x17: Thinkpad/AccessIBM/Lenovo */
 
@@ -3599,8 +3598,6 @@ static int __init hotkey_init(struct ibm_init_struct *iibm)
 		 * for userspace to do something even remotely sane */
 		hotkey_reserved_mask |= TP_ACPI_HKEY_BRGHTUP_MASK |
 					TP_ACPI_HKEY_BRGHTDWN_MASK;
-		hotkey_unmap(TP_ACPI_HOTKEYSCAN_FNHOME);
-		hotkey_unmap(TP_ACPI_HOTKEYSCAN_FNEND);
 	}
 
 #ifdef CONFIG_THINKPAD_ACPI_HOTKEY_POLL
-- 
2.44.0



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
