Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 76FF18ABFDF
	for <lists+ibm-acpi-devel@lfdr.de>; Sun, 21 Apr 2024 17:46:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1ryZOD-00038E-Tr;
	Sun, 21 Apr 2024 15:46:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1ryZO4-00030G-Si
 for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 21 Apr 2024 15:45:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VZ4oCeSkIKJC5UYrrhtJnVfsl+bjEGeW/Opacs8DRbY=; b=RwoHe/hnM/M0agzOx14iK1Rxwi
 KRMJPVmmL4nlWR5teihLsKlIETRlxrlFcZMl6oh8oaVHXev/gyUQwvKXpqull/JQYuBdOvGBtKP8d
 2UyPf7FzobmzdmYstroixAMIUeohKM1NPq7qx7jqnRQ2Do0nFp2cu5xFe3P7+ScC37OY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VZ4oCeSkIKJC5UYrrhtJnVfsl+bjEGeW/Opacs8DRbY=; b=UmIo9btatHPhb417RCsjWTNflm
 HN8fxJJo2u07ARlAAYfEstow1sdo3sh2hljJfFeTc97yGE9YOhXnhkX/Ma/AuUN8jG6kxSBU6AhE6
 trD2M9DN7Sty8V3VFi4/3OY+leELRtmafzZKIy8absg3a69ocHEhGi0tp+OtLQGBy8o4=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ryZO3-0003TQ-M2 for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 21 Apr 2024 15:45:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1713714341;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=VZ4oCeSkIKJC5UYrrhtJnVfsl+bjEGeW/Opacs8DRbY=;
 b=Al0L3xzm3t8vnKzSGLgFUjH4EznJurv/3jJwr3JXYbz7zVDY/U/SZcSLkq+o5LYw7ic30K
 WRBBCgfX/kzRZQXgNpdfo5VNgyRLS2c5VpZb3slAOB0sOol2pRVnhU0LY1VJRch3Rh/drk
 lAqBrfFzOrzEt6DedFlD0v/ZJurJZJE=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-656-MahySxMqOdWXzYI54JDYtA-1; Sun, 21 Apr 2024 11:45:35 -0400
X-MC-Unique: MahySxMqOdWXzYI54JDYtA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 13C0689A240;
 Sun, 21 Apr 2024 15:45:35 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.39.192.66])
 by smtp.corp.redhat.com (Postfix) with ESMTP id ED5C0402482D;
 Sun, 21 Apr 2024 15:45:33 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Andy Shevchenko <andy@kernel.org>,
 Mark Pearson <mpearson-lenovo@squebb.ca>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Date: Sun, 21 Apr 2024 17:45:02 +0200
Message-ID: <20240421154520.37089-7-hdegoede@redhat.com>
In-Reply-To: <20240421154520.37089-1-hdegoede@redhat.com>
References: <20240421154520.37089-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
X-Spam-Score: -0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Modify hotkey_notify_hotkey() and it helpers to mostly
 directly
 operate on hkey codes (TP_HKEY_EV_* returned by "MHKP") instead of on the
 0 - TPACPI_HOTKEY_MAP_LEN scancodes used for scancode -> keyco [...] 
 Content analysis details:   (-0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [170.10.133.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ryZO3-0003TQ-M2
Subject: [ibm-acpi-devel] [PATCH 06/24] platform/x86: thinkpad_acpi: Do hkey
 to scancode translation later
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

Modify hotkey_notify_hotkey() and it helpers to mostly directly operate
on hkey codes (TP_HKEY_EV_* returned by "MHKP") instead of on the 0 -
TPACPI_HOTKEY_MAP_LEN scancodes used for scancode -> keycode translation.

Keeping things in the hkey format as long a possible is a bit cleaner and
this patch prepares things for moving to sparse-keymaps.

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/platform/x86/thinkpad_acpi.c | 71 ++++++++++++++--------------
 1 file changed, 36 insertions(+), 35 deletions(-)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index 126e39367924..c009885c8820 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -157,15 +157,30 @@ enum {
 
 /* HKEY events */
 enum tpacpi_hkey_event_t {
-	/* Hotkey-related */
-	TP_HKEY_EV_HOTKEY_BASE		= 0x1001, /* first hotkey (FN+F1) */
+	/* Original hotkeys */
+	TP_HKEY_EV_ORIG_KEY_START	= 0x1001, /* First hotkey (FN+F1) */
 	TP_HKEY_EV_BRGHT_UP		= 0x1010, /* Brightness up */
 	TP_HKEY_EV_BRGHT_DOWN		= 0x1011, /* Brightness down */
 	TP_HKEY_EV_KBD_LIGHT		= 0x1012, /* Thinklight/kbd backlight */
 	TP_HKEY_EV_VOL_UP		= 0x1015, /* Volume up or unmute */
 	TP_HKEY_EV_VOL_DOWN		= 0x1016, /* Volume down or unmute */
 	TP_HKEY_EV_VOL_MUTE		= 0x1017, /* Mixer output mute */
+	TP_HKEY_EV_ORIG_KEY_END		= 0x1020, /* Last original hotkey code */
+
+	/* Adaptive keyboard (2014 X1 Carbon) */
+	TP_HKEY_EV_DFR_CHANGE_ROW	= 0x1101, /* Change adaptive kbd Fn row mode */
+	TP_HKEY_EV_DFR_S_QUICKVIEW_ROW	= 0x1102, /* Set adap. kbd Fn row to function mode */
+	TP_HKEY_EV_ADAPTIVE_KEY_START	= 0x1103, /* First hotkey code on adaptive kbd */
+	TP_HKEY_EV_ADAPTIVE_KEY_END	= 0x1116, /* Last hotkey code on adaptive kbd */
+
+	/* Extended hotkey events in 2017+ models */
+	TP_HKEY_EV_EXTENDED_KEY_START	= 0x1300, /* First extended hotkey code */
 	TP_HKEY_EV_PRIVACYGUARD_TOGGLE	= 0x130f, /* Toggle priv.guard on/off */
+	TP_HKEY_EV_EXTENDED_KEY_END	= 0x1319, /* Last extended hotkey code using
+						   * hkey -> scancode translation for
+						   * compat. Later codes are entered
+						   * directly in the sparse-keymap.
+						   */
 	TP_HKEY_EV_AMT_TOGGLE		= 0x131a, /* Toggle AMT on/off */
 	TP_HKEY_EV_PROFILE_TOGGLE	= 0x131f, /* Toggle platform profile */
 
@@ -1752,7 +1767,7 @@ enum {	/* hot key scan codes (derived from ACPI DSDT) */
 	TP_ACPI_HOTKEYSCAN_UNK8,
 
 	/* Adaptive keyboard keycodes */
-	TP_ACPI_HOTKEYSCAN_ADAPTIVE_START,
+	TP_ACPI_HOTKEYSCAN_ADAPTIVE_START, /* 32 / 0x20 */
 	TP_ACPI_HOTKEYSCAN_MUTE2        = TP_ACPI_HOTKEYSCAN_ADAPTIVE_START,
 	TP_ACPI_HOTKEYSCAN_BRIGHTNESS_ZERO,
 	TP_ACPI_HOTKEYSCAN_CLIPPING_TOOL,
@@ -1775,7 +1790,7 @@ enum {	/* hot key scan codes (derived from ACPI DSDT) */
 	TP_ACPI_HOTKEYSCAN_ROTATE_DISPLAY,
 
 	/* Lenovo extended keymap, starting at 0x1300 */
-	TP_ACPI_HOTKEYSCAN_EXTENDED_START,
+	TP_ACPI_HOTKEYSCAN_EXTENDED_START, /* 52 / 0x34 */
 	/* first new observed key (star, favorites) is 0x1311 */
 	TP_ACPI_HOTKEYSCAN_STAR = 69,
 	TP_ACPI_HOTKEYSCAN_CLIPPING_TOOL2,
@@ -3612,10 +3627,6 @@ static const int adaptive_keyboard_modes[] = {
 	FUNCTION_MODE
 };
 
-#define DFR_CHANGE_ROW			0x101
-#define DFR_SHOW_QUICKVIEW_ROW		0x102
-#define FIRST_ADAPTIVE_KEY		0x103
-
 /* press Fn key a while second, it will switch to Function Mode. Then
  * release Fn key, previous mode be restored.
  */
@@ -3666,13 +3677,13 @@ static int adaptive_keyboard_get_next_mode(int mode)
 	return adaptive_keyboard_modes[i];
 }
 
-static bool adaptive_keyboard_hotkey_notify_hotkey(unsigned int scancode)
+static bool adaptive_keyboard_hotkey_notify_hotkey(const u32 hkey)
 {
 	int current_mode = 0;
 	int new_mode = 0;
 
-	switch (scancode) {
-	case DFR_CHANGE_ROW:
+	switch (hkey) {
+	case TP_HKEY_EV_DFR_CHANGE_ROW:
 		if (adaptive_keyboard_mode_is_saved) {
 			new_mode = adaptive_keyboard_prev_mode;
 			adaptive_keyboard_mode_is_saved = false;
@@ -3689,7 +3700,7 @@ static bool adaptive_keyboard_hotkey_notify_hotkey(unsigned int scancode)
 
 		return true;
 
-	case DFR_SHOW_QUICKVIEW_ROW:
+	case TP_HKEY_EV_DFR_S_QUICKVIEW_ROW:
 		current_mode = adaptive_keyboard_get_mode();
 		if (current_mode < 0)
 			return false;
@@ -3702,15 +3713,12 @@ static bool adaptive_keyboard_hotkey_notify_hotkey(unsigned int scancode)
 		return true;
 
 	default:
-		if (scancode < FIRST_ADAPTIVE_KEY ||
-		    scancode >= FIRST_ADAPTIVE_KEY +
-		    TP_ACPI_HOTKEYSCAN_EXTENDED_START -
-		    TP_ACPI_HOTKEYSCAN_ADAPTIVE_START) {
-			pr_info("Unhandled adaptive keyboard key: 0x%x\n",
-				scancode);
+		if (hkey < TP_HKEY_EV_ADAPTIVE_KEY_START ||
+		    hkey > TP_HKEY_EV_ADAPTIVE_KEY_END) {
+			pr_info("Unhandled adaptive keyboard key: 0x%x\n", hkey);
 			return false;
 		}
-		tpacpi_input_send_key(scancode - FIRST_ADAPTIVE_KEY +
+		tpacpi_input_send_key(hkey - TP_HKEY_EV_ADAPTIVE_KEY_START +
 				      TP_ACPI_HOTKEYSCAN_ADAPTIVE_START);
 		return true;
 	}
@@ -3718,8 +3726,6 @@ static bool adaptive_keyboard_hotkey_notify_hotkey(unsigned int scancode)
 
 static bool hotkey_notify_extended_hotkey(const u32 hkey)
 {
-	unsigned int scancode;
-
 	switch (hkey) {
 	case TP_HKEY_EV_PRIVACYGUARD_TOGGLE:
 	case TP_HKEY_EV_AMT_TOGGLE:
@@ -3728,13 +3734,10 @@ static bool hotkey_notify_extended_hotkey(const u32 hkey)
 		return true;
 	}
 
-	/* Extended keycodes start at 0x300 and our offset into the map
-	 * TP_ACPI_HOTKEYSCAN_EXTENDED_START. The calculated scancode
-	 * will be positive, but might not be in the correct range.
-	 */
-	scancode = (hkey & 0xfff) - (0x300 - TP_ACPI_HOTKEYSCAN_EXTENDED_START);
-	if (scancode >= TP_ACPI_HOTKEYSCAN_EXTENDED_START &&
-	    scancode < TPACPI_HOTKEY_MAP_LEN) {
+	if (hkey >= TP_HKEY_EV_EXTENDED_KEY_START &&
+	    hkey <= TP_HKEY_EV_EXTENDED_KEY_END) {
+		unsigned int scancode = hkey - TP_HKEY_EV_EXTENDED_KEY_START +
+					TP_ACPI_HOTKEYSCAN_EXTENDED_START;
 		tpacpi_input_send_key(scancode);
 		return true;
 	}
@@ -3745,7 +3748,7 @@ static bool hotkey_notify_extended_hotkey(const u32 hkey)
 /* 0x1000-0x1FFF: key presses */
 static bool hotkey_notify_hotkey(const u32 hkey, bool *send_acpi_ev)
 {
-	unsigned int scancode = hkey & 0xfff;
+	unsigned int scancode = hkey - TP_HKEY_EV_ORIG_KEY_START;
 
 	/*
 	 * Original events are in the 0x10XX range, the adaptive keyboard
@@ -3754,10 +3757,8 @@ static bool hotkey_notify_hotkey(const u32 hkey, bool *send_acpi_ev)
 	 */
 	switch ((hkey >> 8) & 0xf) {
 	case 0:
-		if (scancode > 0 &&
-		    scancode <= TP_ACPI_HOTKEYSCAN_ADAPTIVE_START) {
-			/* HKEY event 0x1001 is scancode 0x00 */
-			scancode--;
+		if (hkey >= TP_HKEY_EV_ORIG_KEY_START &&
+		    hkey <= TP_HKEY_EV_ORIG_KEY_END) {
 			if (!(hotkey_source_mask & (1 << scancode)))
 				tpacpi_input_send_key_masked(scancode);
 
@@ -3767,7 +3768,7 @@ static bool hotkey_notify_hotkey(const u32 hkey, bool *send_acpi_ev)
 		break;
 
 	case 1:
-		return adaptive_keyboard_hotkey_notify_hotkey(scancode);
+		return adaptive_keyboard_hotkey_notify_hotkey(hkey);
 
 	case 3:
 		return hotkey_notify_extended_hotkey(hkey);
@@ -11150,7 +11151,7 @@ static void tpacpi_driver_event(const unsigned int hkey_event)
 
 static void hotkey_driver_event(const unsigned int scancode)
 {
-	tpacpi_driver_event(TP_HKEY_EV_HOTKEY_BASE + scancode);
+	tpacpi_driver_event(TP_HKEY_EV_ORIG_KEY_START + scancode);
 }
 
 /* --------------------------------------------------------------------- */
-- 
2.44.0



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
