Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E0ABF8B09BC
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 24 Apr 2024 14:31:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rzbkn-0008Ry-Hb;
	Wed, 24 Apr 2024 12:29:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1rzbkU-0008Q4-CF
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Apr 2024 12:29:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pW0lSH09UosTTXlQPirSa78GusMyLGGn4V4qzzXH4cc=; b=b9GQb45Vs9fWH4s+ca8BDERbf1
 9TP1ZUeYzvuBxkZyCCh6VcJcLRqKzBBe/mIM/ulukOPFG2JfF14BeHNX9lS14GuSwiIPsujIZ3B60
 8IkKM3ykCWLMDjoZf/800fFTnJVOrnI/A3O8oa849ASViD+VboezQ2KiSGXxs/U4L5V4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pW0lSH09UosTTXlQPirSa78GusMyLGGn4V4qzzXH4cc=; b=MYuK1nQUR8QSMoeb5DVlF/9PZO
 36hMDWw/zDjeH+rfP0TD9KoqRGMr7iTHapyOS/DZ3Ov0PxG12FhbKAw4QJX8p3KILuHPlVrDmPefo
 dZ1EDFVYm0tWnbSU3E80tOA7t8wai+kffQg5ODzHoVAnhoNoyTT6erkgwkVascB6ILsk=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rzbkS-00024m-JJ for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Apr 2024 12:29:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1713961746;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pW0lSH09UosTTXlQPirSa78GusMyLGGn4V4qzzXH4cc=;
 b=YwxJUHWCuRpAm8MMwIg/0YaCN1QkEuUwpDGop0G8CCz6OeLfXBuVCrhDvk/7bM7jes0DTy
 03kgYKrug33D4YzCtbS+dQbnsOOBYbwkzFKvsY5tqjOMCrM+LvX8/Xk9VPjUFx0lgGqSp1
 Su1cpLCUth75AYbRYiFnD8QjlE+10Qc=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-383-r914oiYvNw6KGWgYfr9bnQ-1; Wed,
 24 Apr 2024 08:29:02 -0400
X-MC-Unique: r914oiYvNw6KGWgYfr9bnQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3B70029AC018;
 Wed, 24 Apr 2024 12:29:02 +0000 (UTC)
Received: from shalem.redhat.com (unknown [10.39.195.45])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0DBD5C13FA3;
 Wed, 24 Apr 2024 12:29:00 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Andy Shevchenko <andy@kernel.org>,
 Mark Pearson <mpearson-lenovo@squebb.ca>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Date: Wed, 24 Apr 2024 14:28:29 +0200
Message-ID: <20240424122834.19801-20-hdegoede@redhat.com>
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
 Content preview: Switch the hotkey keymap handling over to the sparse-keymap
 helpers, there should be no functional changes from this. Note all the mappings
 to KEY_UNKNOWN are removed since that is the default behavior of
 sparse_keymap_report_event() for unknown scancodes. 
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
X-Headers-End: 1rzbkS-00024m-JJ
Subject: [ibm-acpi-devel] [PATCH v2 19/24] platform/x86: thinkpad_acpi:
 Switch to using sparse-keymap helpers
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

Switch the hotkey keymap handling over to the sparse-keymap helpers,
there should be no functional changes from this.

Note all the mappings to KEY_UNKNOWN are removed since that is the default
behavior of sparse_keymap_report_event() for unknown scancodes.

Also drop the big comment about making changes to the keymaps since
the contents of that comment are mostly obsolete.

Tested-by: Mark Pearson <mpearson-lenovo@squebb.ca>
Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
Changes in v2:
- Use proper multi-line comment style
---
 drivers/platform/x86/thinkpad_acpi.c | 404 ++++++++++-----------------
 1 file changed, 145 insertions(+), 259 deletions(-)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index 6a136d124cab..8af9406f2a13 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -45,6 +45,7 @@
 #include <linux/hwmon-sysfs.h>
 #include <linux/init.h>
 #include <linux/input.h>
+#include <linux/input/sparse-keymap.h>
 #include <linux/jiffies.h>
 #include <linux/kernel.h>
 #include <linux/kthread.h>
@@ -1759,12 +1760,12 @@ enum {	/* hot key scan codes (derived from ACPI DSDT) */
 	TP_ACPI_HOTKEYSCAN_THINKPAD,
 	TP_ACPI_HOTKEYSCAN_UNK1,
 	TP_ACPI_HOTKEYSCAN_UNK2,
-	TP_ACPI_HOTKEYSCAN_UNK3,
+	TP_ACPI_HOTKEYSCAN_MICMUTE,
 	TP_ACPI_HOTKEYSCAN_UNK4,
-	TP_ACPI_HOTKEYSCAN_UNK5,
-	TP_ACPI_HOTKEYSCAN_UNK6,
-	TP_ACPI_HOTKEYSCAN_UNK7,
-	TP_ACPI_HOTKEYSCAN_UNK8,
+	TP_ACPI_HOTKEYSCAN_CONFIG,
+	TP_ACPI_HOTKEYSCAN_SEARCH,
+	TP_ACPI_HOTKEYSCAN_SCALE,
+	TP_ACPI_HOTKEYSCAN_FILE,
 
 	/* Adaptive keyboard keycodes */
 	TP_ACPI_HOTKEYSCAN_ADAPTIVE_START, /* 32 / 0x20 */
@@ -1779,7 +1780,7 @@ enum {	/* hot key scan codes (derived from ACPI DSDT) */
 	TP_ACPI_HOTKEYSCAN_UNK11,
 	TP_ACPI_HOTKEYSCAN_UNK12,
 	TP_ACPI_HOTKEYSCAN_UNK13,
-	TP_ACPI_HOTKEYSCAN_CONFIG,
+	TP_ACPI_HOTKEYSCAN_CONFIG2,
 	TP_ACPI_HOTKEYSCAN_NEW_TAB,
 	TP_ACPI_HOTKEYSCAN_RELOAD,
 	TP_ACPI_HOTKEYSCAN_BACK,
@@ -1801,9 +1802,6 @@ enum {	/* hot key scan codes (derived from ACPI DSDT) */
 	TP_ACPI_HOTKEYSCAN_NOTIFICATION_CENTER,
 	TP_ACPI_HOTKEYSCAN_PICKUP_PHONE,
 	TP_ACPI_HOTKEYSCAN_HANGUP_PHONE,
-
-	/* Hotkey keymap size */
-	TPACPI_HOTKEY_MAP_LEN
 };
 
 enum {	/* Keys/events available through NVRAM polling */
@@ -1916,8 +1914,6 @@ static u32 hotkey_driver_mask;		/* events needed by the driver */
 static u32 hotkey_user_mask;		/* events visible to userspace */
 static u32 hotkey_acpi_mask;		/* events enabled in firmware */
 
-static u16 *hotkey_keycode_map;
-
 static bool tpacpi_driver_event(const unsigned int hkey_event);
 static void hotkey_poll_setup(const bool may_warn);
 
@@ -2252,11 +2248,24 @@ static void tpacpi_input_send_tabletsw(void)
 
 static bool tpacpi_input_send_key(const u32 hkey, bool *send_acpi_ev)
 {
-	unsigned int keycode, scancode;
+	bool known_ev;
+	u32 scancode;
 
 	if (tpacpi_driver_event(hkey))
 		return true;
 
+	/*
+	 * Before the conversion to using the sparse-keymap helpers the driver used to
+	 * map the hkey event codes to 0x00 - 0x4d scancodes so that a straight scancode
+	 * indexed array could be used to map scancodes to keycodes:
+	 *
+	 * 0x1001 - 0x1020  ->  0x00 - 0x1f  (Original ThinkPad events)
+	 * 0x1103 - 0x1116  ->  0x20 - 0x33  (Adaptive keyboard, 2014 X1 Carbon)
+	 * 0x1300 - 0x1319  ->  0x34 - 0x4d  (Additional keys send in 2017+ models)
+	 *
+	 * The sparse-keymap tables still use these scancodes for these ranges to
+	 * preserve userspace API compatibility (e.g. hwdb keymappings).
+	 */
 	if (hkey >= TP_HKEY_EV_ORIG_KEY_START &&
 	    hkey <= TP_HKEY_EV_ORIG_KEY_END) {
 		scancode = hkey - TP_HKEY_EV_ORIG_KEY_START;
@@ -2279,23 +2288,14 @@ static bool tpacpi_input_send_key(const u32 hkey, bool *send_acpi_ev)
 		if (send_acpi_ev)
 			*send_acpi_ev = false;
 
-		return false;
+		scancode = hkey;
 	}
 
-	keycode = hotkey_keycode_map[scancode];
-
 	mutex_lock(&tpacpi_inputdev_send_mutex);
-
-	input_event(tpacpi_inputdev, EV_MSC, MSC_SCAN, scancode);
-	input_report_key(tpacpi_inputdev, keycode, 1);
-	input_sync(tpacpi_inputdev);
-
-	input_report_key(tpacpi_inputdev, keycode, 0);
-	input_sync(tpacpi_inputdev);
-
+	known_ev = sparse_keymap_report_event(tpacpi_inputdev, scancode, 1, true);
 	mutex_unlock(&tpacpi_inputdev_send_mutex);
 
-	return true;
+	return known_ev;
 }
 
 #ifdef CONFIG_THINKPAD_ACPI_HOTKEY_POLL
@@ -3124,9 +3124,6 @@ static const struct tpacpi_quirk tpacpi_hotkey_qtable[] __initconst = {
 	TPACPI_Q_IBM('1', 'D', TPACPI_HK_Q_INIMASK), /* X22, X23, X24 */
 };
 
-typedef u16 tpacpi_keymap_entry_t;
-typedef tpacpi_keymap_entry_t tpacpi_keymap_t[TPACPI_HOTKEY_MAP_LEN];
-
 static int hotkey_init_tablet_mode(void)
 {
 	int in_tablet_mode = 0, res;
@@ -3163,217 +3160,124 @@ static int hotkey_init_tablet_mode(void)
 	return in_tablet_mode;
 }
 
+static const struct key_entry keymap_ibm[] __initconst = {
+	/* Original hotkey mappings translated scancodes 0x00 - 0x1f */
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_FNF1, { KEY_FN_F1 } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_FNF2, { KEY_BATTERY } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_FNF3, { KEY_COFFEE } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_FNF4, { KEY_SLEEP } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_FNF5, { KEY_WLAN } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_FNF6, { KEY_FN_F6 } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_FNF7, { KEY_SWITCHVIDEOMODE } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_FNF8, { KEY_FN_F8 } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_FNF9, { KEY_FN_F9 } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_FNF10, { KEY_FN_F10 } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_FNF11, { KEY_FN_F11 } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_FNF12, { KEY_SUSPEND } },
+	/* Brightness: firmware always reacts, suppressed through hotkey_reserved_mask. */
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_FNHOME, { KEY_BRIGHTNESSUP } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_FNEND, { KEY_BRIGHTNESSDOWN } },
+	/* Thinklight: firmware always reacts, suppressed through hotkey_reserved_mask. */
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_FNPAGEUP, { KEY_KBDILLUMTOGGLE } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_FNSPACE, { KEY_ZOOM } },
+	/*
+	 * Volume: firmware always reacts and reprograms the built-in *extra* mixer.
+	 * Suppressed by default through hotkey_reserved_mask.
+	 */
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_VOLUMEUP, { KEY_VOLUMEUP } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_VOLUMEDOWN, { KEY_VOLUMEDOWN } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_MUTE, { KEY_MUTE } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_THINKPAD, { KEY_VENDOR } },
+	{ KE_END }
+};
+
+static const struct key_entry keymap_lenovo[] __initconst = {
+	/* Original hotkey mappings translated scancodes 0x00 - 0x1f */
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_FNF1, { KEY_FN_F1 } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_FNF2, { KEY_COFFEE } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_FNF3, { KEY_BATTERY } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_FNF4, { KEY_SLEEP } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_FNF5, { KEY_WLAN } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_FNF6, { KEY_CAMERA, } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_FNF7, { KEY_SWITCHVIDEOMODE } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_FNF8, { KEY_FN_F8 } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_FNF9, { KEY_FN_F9 } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_FNF10, { KEY_FN_F10 } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_FNF11, { KEY_FN_F11 } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_FNF12, { KEY_SUSPEND } },
+	/*
+	 * These should be enabled --only-- when ACPI video is disabled and
+	 * are handled in a special way by the init code.
+	 */
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_FNHOME, { KEY_BRIGHTNESSUP } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_FNEND, { KEY_BRIGHTNESSDOWN } },
+	/* Suppressed by default through hotkey_reserved_mask. */
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_FNPAGEUP, { KEY_KBDILLUMTOGGLE } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_FNSPACE, { KEY_ZOOM } },
+	/*
+	 * Volume: z60/z61, T60 (BIOS version?): firmware always reacts and
+	 * reprograms the built-in *extra* mixer.
+	 * T60?, T61, R60?, R61: firmware and EC tries to send these over
+	 * the regular keyboard (not through tpacpi). There are still weird bugs
+	 * re. MUTE. May cause the BIOS to interfere with the HDA mixer.
+	 * Suppressed by default through hotkey_reserved_mask.
+	 */
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_VOLUMEUP, { KEY_VOLUMEUP } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_VOLUMEDOWN, { KEY_VOLUMEDOWN } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_MUTE, { KEY_MUTE } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_THINKPAD, { KEY_VENDOR } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_MICMUTE, { KEY_MICMUTE } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_CONFIG, { KEY_CONFIG } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_SEARCH, { KEY_SEARCH } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_SCALE, { KEY_SCALE } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_FILE, { KEY_FILE } },
+	/* Adaptive keyboard mappings for Carbon X1 2014 translated scancodes 0x20 - 0x33 */
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_MUTE2, { KEY_RESERVED } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_BRIGHTNESS_ZERO, { KEY_BRIGHTNESS_MIN } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_CLIPPING_TOOL, { KEY_RESERVED } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_CLOUD, { KEY_RESERVED } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_UNK9, { KEY_RESERVED } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_VOICE, { KEY_VOICECOMMAND } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_UNK10, { KEY_RESERVED } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_GESTURES, { KEY_RESERVED } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_UNK11, { KEY_RESERVED } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_UNK12, { KEY_RESERVED } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_UNK13, { KEY_RESERVED } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_CONFIG2, { KEY_CONFIG } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_NEW_TAB, { KEY_RESERVED } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_RELOAD, { KEY_REFRESH } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_BACK, { KEY_BACK } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_MIC_DOWN, { KEY_RESERVED } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_MIC_UP, { KEY_RESERVED } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_MIC_CANCELLATION, { KEY_RESERVED } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_CAMERA_MODE, { KEY_RESERVED } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_ROTATE_DISPLAY, { KEY_RESERVED } },
+	/* Extended hotkeys mappings translated scancodes 0x34 - 0x4d */
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_STAR, { KEY_BOOKMARKS } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_CLIPPING_TOOL2, { KEY_SELECTIVE_SCREENSHOT } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_CALCULATOR, { KEY_CALC } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_BLUETOOTH, { KEY_BLUETOOTH } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_KEYBOARD, { KEY_KEYBOARD } },
+	/* Used by "Lenovo Quick Clean" */
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_FN_RIGHT_SHIFT, { KEY_FN_RIGHT_SHIFT } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_NOTIFICATION_CENTER, { KEY_NOTIFICATION_CENTER } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_PICKUP_PHONE, { KEY_PICKUP_PHONE } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_HANGUP_PHONE, { KEY_HANGUP_PHONE } },
+	/*
+	 * All mapping below are for raw untranslated hkey event codes mapped directly
+	 * after switching to sparse keymap support. The mappings above use translated
+	 * scancodes to preserve uAPI compatibility, see tpacpi_input_send_key().
+	 */
+	{ KE_END }
+};
+
 static int __init hotkey_init(struct ibm_init_struct *iibm)
 {
-	/* Requirements for changing the default keymaps:
-	 *
-	 * 1. Many of the keys are mapped to KEY_RESERVED for very
-	 *    good reasons.  Do not change them unless you have deep
-	 *    knowledge on the IBM and Lenovo ThinkPad firmware for
-	 *    the various ThinkPad models.  The driver behaves
-	 *    differently for KEY_RESERVED: such keys have their
-	 *    hot key mask *unset* in mask_recommended, and also
-	 *    in the initial hot key mask programmed into the
-	 *    firmware at driver load time, which means the firm-
-	 *    ware may react very differently if you change them to
-	 *    something else;
-	 *
-	 * 2. You must be subscribed to the linux-thinkpad and
-	 *    ibm-acpi-devel mailing lists, and you should read the
-	 *    list archives since 2007 if you want to change the
-	 *    keymaps.  This requirement exists so that you will
-	 *    know the past history of problems with the thinkpad-
-	 *    acpi driver keymaps, and also that you will be
-	 *    listening to any bug reports;
-	 *
-	 * 3. Do not send thinkpad-acpi specific patches directly to
-	 *    for merging, *ever*.  Send them to the linux-acpi
-	 *    mailinglist for comments.  Merging is to be done only
-	 *    through acpi-test and the ACPI maintainer.
-	 *
-	 * If the above is too much to ask, don't change the keymap.
-	 * Ask the thinkpad-acpi maintainer to do it, instead.
-	 */
-
 	enum keymap_index {
 		TPACPI_KEYMAP_IBM_GENERIC = 0,
 		TPACPI_KEYMAP_LENOVO_GENERIC,
 	};
 
-	static const tpacpi_keymap_t tpacpi_keymaps[] __initconst = {
-	/* Generic keymap for IBM ThinkPads */
-	[TPACPI_KEYMAP_IBM_GENERIC] = {
-		/* Scan Codes 0x00 to 0x0B: ACPI HKEY FN+F1..F12 */
-		KEY_FN_F1,	KEY_BATTERY,	KEY_COFFEE,	KEY_SLEEP,
-		KEY_WLAN,	KEY_FN_F6, KEY_SWITCHVIDEOMODE, KEY_FN_F8,
-		KEY_FN_F9,	KEY_FN_F10,	KEY_FN_F11,	KEY_SUSPEND,
-
-		/* Scan codes 0x0C to 0x1F: Other ACPI HKEY hot keys */
-		KEY_UNKNOWN,	/* 0x0C: FN+BACKSPACE */
-		KEY_UNKNOWN,	/* 0x0D: FN+INSERT */
-		KEY_UNKNOWN,	/* 0x0E: FN+DELETE */
-
-		/* brightness: firmware always reacts to them.
-		 * Suppressed by default through hotkey_reserved_mask.
-		 */
-		KEY_BRIGHTNESSUP,	/* 0x0F: FN+HOME (brightness up) */
-		KEY_BRIGHTNESSDOWN,	/* 0x10: FN+END (brightness down) */
-
-		/* Thinklight: firmware always react to it.
-		 * Suppressed by default through hotkey_reserved_mask.
-		 */
-		KEY_KBDILLUMTOGGLE,	/* 0x11: FN+PGUP (thinklight toggle) */
-
-		KEY_UNKNOWN,	/* 0x12: FN+PGDOWN */
-		KEY_ZOOM,	/* 0x13: FN+SPACE (zoom) */
-
-		/* Volume: firmware always react to it and reprograms
-		 * the built-in *extra* mixer.  Never map it to control
-		 * another mixer by default.
-		 * Suppressed by default through hotkey_reserved_mask.
-		 */
-		KEY_VOLUMEUP,	/* 0x14: VOLUME UP */
-		KEY_VOLUMEDOWN,	/* 0x15: VOLUME DOWN */
-		KEY_MUTE,	/* 0x16: MUTE */
-
-		KEY_VENDOR,	/* 0x17: Thinkpad/AccessIBM/Lenovo */
-
-		/* (assignments unknown, please report if found) */
-		KEY_UNKNOWN, KEY_UNKNOWN, KEY_UNKNOWN, KEY_UNKNOWN,
-		KEY_UNKNOWN, KEY_UNKNOWN, KEY_UNKNOWN, KEY_UNKNOWN,
-
-		/* No assignments, only used for Adaptive keyboards. */
-		KEY_UNKNOWN, KEY_UNKNOWN, KEY_UNKNOWN, KEY_UNKNOWN,
-		KEY_UNKNOWN, KEY_UNKNOWN, KEY_UNKNOWN, KEY_UNKNOWN,
-		KEY_UNKNOWN, KEY_UNKNOWN, KEY_UNKNOWN, KEY_UNKNOWN,
-		KEY_UNKNOWN, KEY_UNKNOWN, KEY_UNKNOWN, KEY_UNKNOWN,
-		KEY_UNKNOWN, KEY_UNKNOWN, KEY_UNKNOWN,
-
-		/* No assignment, used for newer Lenovo models */
-		KEY_UNKNOWN, KEY_UNKNOWN, KEY_UNKNOWN, KEY_UNKNOWN,
-		KEY_UNKNOWN, KEY_UNKNOWN, KEY_UNKNOWN, KEY_UNKNOWN,
-		KEY_UNKNOWN, KEY_UNKNOWN, KEY_UNKNOWN, KEY_UNKNOWN,
-		KEY_UNKNOWN, KEY_UNKNOWN, KEY_UNKNOWN, KEY_UNKNOWN,
-		KEY_UNKNOWN, KEY_UNKNOWN, KEY_UNKNOWN, KEY_UNKNOWN,
-		KEY_UNKNOWN, KEY_UNKNOWN
-
-		},
-
-	/* Generic keymap for Lenovo ThinkPads */
-	[TPACPI_KEYMAP_LENOVO_GENERIC] = {
-		/* Scan Codes 0x00 to 0x0B: ACPI HKEY FN+F1..F12 */
-		KEY_FN_F1,	KEY_COFFEE,	KEY_BATTERY,	KEY_SLEEP,
-		KEY_WLAN,	KEY_CAMERA, KEY_SWITCHVIDEOMODE, KEY_FN_F8,
-		KEY_FN_F9,	KEY_FN_F10,	KEY_FN_F11,	KEY_SUSPEND,
-
-		/* Scan codes 0x0C to 0x1F: Other ACPI HKEY hot keys */
-		KEY_UNKNOWN,	/* 0x0C: FN+BACKSPACE */
-		KEY_UNKNOWN,	/* 0x0D: FN+INSERT */
-		KEY_UNKNOWN,	/* 0x0E: FN+DELETE */
-
-		/* These should be enabled --only-- when ACPI video
-		 * is disabled (i.e. in "vendor" mode), and are handled
-		 * in a special way by the init code */
-		KEY_BRIGHTNESSUP,	/* 0x0F: FN+HOME (brightness up) */
-		KEY_BRIGHTNESSDOWN,	/* 0x10: FN+END (brightness down) */
-
-		/* Suppressed by default through hotkey_reserved_mask. */
-		KEY_KBDILLUMTOGGLE,	/* 0x11: FN+PGUP (thinklight toggle) */
-
-		KEY_UNKNOWN,	/* 0x12: FN+PGDOWN */
-		KEY_ZOOM,	/* 0x13: FN+SPACE (zoom) */
-
-		/* Volume: z60/z61, T60 (BIOS version?): firmware always
-		 * react to it and reprograms the built-in *extra* mixer.
-		 * Never map it to control another mixer by default.
-		 *
-		 * T60?, T61, R60?, R61: firmware and EC tries to send
-		 * these over the regular keyboard, so these are no-ops,
-		 * but there are still weird bugs re. MUTE, so do not
-		 * change unless you get test reports from all Lenovo
-		 * models.  May cause the BIOS to interfere with the
-		 * HDA mixer.
-		 * Suppressed by default through hotkey_reserved_mask.
-		 */
-		KEY_VOLUMEUP,	/* 0x14: VOLUME UP */
-		KEY_VOLUMEDOWN,	/* 0x15: VOLUME DOWN */
-		KEY_MUTE,	/* 0x16: MUTE */
-
-		KEY_VENDOR,	/* 0x17: Thinkpad/AccessIBM/Lenovo */
-
-		/* (assignments unknown, please report if found) */
-		KEY_UNKNOWN, KEY_UNKNOWN,
-
-		/*
-		 * The mic mute button only sends 0x1a.  It does not
-		 * automatically mute the mic or change the mute light.
-		 */
-		KEY_MICMUTE,	/* 0x1a: Mic mute (since ?400 or so) */
-
-		/* (assignments unknown, please report if found) */
-		KEY_UNKNOWN,
-
-		/* Extra keys in use since the X240 / T440 / T540 */
-		KEY_CONFIG, KEY_SEARCH, KEY_SCALE, KEY_FILE,
-
-		/*
-		 * These are the adaptive keyboard keycodes for Carbon X1 2014.
-		 * The first item in this list is the Mute button which is
-		 * emitted with 0x103 through
-		 * adaptive_keyboard_hotkey_notify_hotkey() when the sound
-		 * symbol is held.
-		 * We'll need to offset those by 0x20.
-		 */
-		KEY_RESERVED,        /* Mute held, 0x103 */
-		KEY_BRIGHTNESS_MIN,  /* Backlight off */
-		KEY_RESERVED,        /* Clipping tool */
-		KEY_RESERVED,        /* Cloud */
-		KEY_RESERVED,
-		KEY_VOICECOMMAND,    /* Voice */
-		KEY_RESERVED,
-		KEY_RESERVED,        /* Gestures */
-		KEY_RESERVED,
-		KEY_RESERVED,
-		KEY_RESERVED,
-		KEY_CONFIG,          /* Settings */
-		KEY_RESERVED,        /* New tab */
-		KEY_REFRESH,         /* Reload */
-		KEY_BACK,            /* Back */
-		KEY_RESERVED,        /* Microphone down */
-		KEY_RESERVED,        /* Microphone up */
-		KEY_RESERVED,        /* Microphone cancellation */
-		KEY_RESERVED,        /* Camera mode */
-		KEY_RESERVED,        /* Rotate display, 0x116 */
-
-		/*
-		 * These are found in 2017 models (e.g. T470s, X270).
-		 * The lowest known value is 0x311, which according to
-		 * the manual should launch a user defined favorite
-		 * application.
-		 *
-		 * The offset for these is TP_ACPI_HOTKEYSCAN_EXTENDED_START,
-		 * corresponding to 0x34.
-		 */
-
-		/* (assignments unknown, please report if found) */
-		KEY_UNKNOWN, KEY_UNKNOWN, KEY_UNKNOWN, KEY_UNKNOWN,
-		KEY_UNKNOWN, KEY_UNKNOWN, KEY_UNKNOWN, KEY_UNKNOWN,
-		KEY_UNKNOWN, KEY_UNKNOWN, KEY_UNKNOWN, KEY_UNKNOWN,
-		KEY_UNKNOWN, KEY_UNKNOWN, KEY_UNKNOWN, KEY_UNKNOWN,
-		KEY_UNKNOWN,
-
-		KEY_BOOKMARKS,			/* Favorite app, 0x311 */
-		KEY_SELECTIVE_SCREENSHOT,	/* Clipping tool */
-		KEY_CALC,			/* Calculator (above numpad, P52) */
-		KEY_BLUETOOTH,			/* Bluetooth */
-		KEY_KEYBOARD,			/* Keyboard, 0x315 */
-		KEY_FN_RIGHT_SHIFT,		/* Fn + right Shift */
-		KEY_NOTIFICATION_CENTER,	/* Notification Center */
-		KEY_PICKUP_PHONE,		/* Answer incoming call */
-		KEY_HANGUP_PHONE,		/* Decline incoming call */
-		},
-	};
-
 	static const struct tpacpi_quirk tpacpi_keymap_qtable[] __initconst = {
 		/* Generic maps (fallback) */
 		{
@@ -3388,17 +3292,11 @@ static int __init hotkey_init(struct ibm_init_struct *iibm)
 		},
 	};
 
-#define TPACPI_HOTKEY_MAP_SIZE		sizeof(tpacpi_keymap_t)
-#define TPACPI_HOTKEY_MAP_TYPESIZE	sizeof(tpacpi_keymap_entry_t)
-
-	int res, i;
-	int status;
-	int hkeyv;
+	unsigned long keymap_id, quirks;
+	const struct key_entry *keymap;
 	bool radiosw_state  = false;
 	bool tabletsw_state = false;
-
-	unsigned long quirks;
-	unsigned long keymap_id;
+	int hkeyv, res, status;
 
 	vdbg_printk(TPACPI_DBG_INIT | TPACPI_DBG_HKEY,
 			"initializing hotkey subdriver\n");
@@ -3538,7 +3436,6 @@ static int __init hotkey_init(struct ibm_init_struct *iibm)
 	/* Set up key map */
 	keymap_id = tpacpi_check_quirks(tpacpi_keymap_qtable,
 					ARRAY_SIZE(tpacpi_keymap_qtable));
-	BUG_ON(keymap_id >= ARRAY_SIZE(tpacpi_keymaps));
 	dbg_printk(TPACPI_DBG_INIT | TPACPI_DBG_HKEY,
 		   "using keymap number %lu\n", keymap_id);
 
@@ -3551,27 +3448,17 @@ static int __init hotkey_init(struct ibm_init_struct *iibm)
 	 * Reserve brightness up/down unconditionally on IBM models, on Lenovo
 	 * models these are disabled based on acpi_video_get_backlight_type().
 	 */
-	if (keymap_id == TPACPI_KEYMAP_IBM_GENERIC)
+	if (keymap_id == TPACPI_KEYMAP_IBM_GENERIC) {
 		hotkey_reserved_mask |= TP_ACPI_HKEY_BRGHTUP_MASK |
 					TP_ACPI_HKEY_BRGHTDWN_MASK;
-
-	hotkey_keycode_map = kmemdup(&tpacpi_keymaps[keymap_id],
-			TPACPI_HOTKEY_MAP_SIZE,	GFP_KERNEL);
-	if (!hotkey_keycode_map) {
-		pr_err("failed to allocate memory for key map\n");
-		return -ENOMEM;
+		keymap = keymap_ibm;
+	} else {
+		keymap = keymap_lenovo;
 	}
 
-	input_set_capability(tpacpi_inputdev, EV_MSC, MSC_SCAN);
-	tpacpi_inputdev->keycodesize = TPACPI_HOTKEY_MAP_TYPESIZE;
-	tpacpi_inputdev->keycodemax = TPACPI_HOTKEY_MAP_LEN;
-	tpacpi_inputdev->keycode = hotkey_keycode_map;
-	for (i = 0; i < TPACPI_HOTKEY_MAP_LEN; i++) {
-		if (hotkey_keycode_map[i] != KEY_RESERVED) {
-			input_set_capability(tpacpi_inputdev, EV_KEY,
-						hotkey_keycode_map[i]);
-		}
-	}
+	res = sparse_keymap_setup(tpacpi_inputdev, keymap, NULL);
+	if (res)
+		return res;
 
 	if (tp_features.hotkey_wlsw) {
 		input_set_capability(tpacpi_inputdev, EV_SW, SW_RFKILL_ALL);
@@ -11739,7 +11626,6 @@ static void thinkpad_acpi_module_exit(void)
 			input_unregister_device(tpacpi_inputdev);
 		else
 			input_free_device(tpacpi_inputdev);
-		kfree(hotkey_keycode_map);
 	}
 
 	if (tpacpi_sensors_pdev)
-- 
2.44.0



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
