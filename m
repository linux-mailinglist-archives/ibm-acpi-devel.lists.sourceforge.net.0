Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 579338B099B
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 24 Apr 2024 14:29:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rzbk6-0004XP-PX;
	Wed, 24 Apr 2024 12:28:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1rzbk3-0004X3-SK
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Apr 2024 12:28:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5mn6FsvgtcvpKBi7BgWiFPQXrfFhsYOq30ZwjDWjmJs=; b=cZrAj4rFuOyyEgT3BNfire7ASq
 aEGOg+UzJqDRZ86dncK2qQkv2ufnmOZbZSn2w9yMxYD26oeWKrao+drP2p5o5oFNQ2V/M9jOYqFOm
 k6fpIh+R9SEu9gAhQFhMNQzn8F5yyiKn467ncYZ8LqZE77jf+hYWR6iFZAKW0XhY8RHo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5mn6FsvgtcvpKBi7BgWiFPQXrfFhsYOq30ZwjDWjmJs=; b=UXbJt8BXWOjP1ujIqTg+JXjz0M
 4rgeKpDN/6mlIY6eloNmCe95eZCSXpEwdPIi/nuYn+vDDMjpV31SYZzmfe2cEGLWw3N5IKecnY4We
 vh/tmYalA0lG8ddw4Wf7s3aiiaxshI45f6zCucLzuH15ZRJO0IATZrZJMLtKkCR+TvXU=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rzbk3-000221-6P for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Apr 2024 12:28:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1713961725;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5mn6FsvgtcvpKBi7BgWiFPQXrfFhsYOq30ZwjDWjmJs=;
 b=cBzL8j4HiWFB1KjIHIkRnOBYzDMi/kc9Wy3EbnPZGlgwfYvf9+iWipR6zaedCE8K/xySwP
 lp3qgmBggznpJ2XTWYIaXXqXyBX9dJ1uEBELSCGc6vWpziBB4j4XGqk3DH3FtlZGlEqzkP
 hV48SuKegimTl30574Iv+vDfb+aKJy8=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-528-Kj2ykyFyPq2tpkrK0BrRfA-1; Wed,
 24 Apr 2024 08:28:42 -0400
X-MC-Unique: Kj2ykyFyPq2tpkrK0BrRfA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A1A603820EA0;
 Wed, 24 Apr 2024 12:28:41 +0000 (UTC)
Received: from shalem.redhat.com (unknown [10.39.195.45])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7B93BC15771;
 Wed, 24 Apr 2024 12:28:40 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Andy Shevchenko <andy@kernel.org>,
 Mark Pearson <mpearson-lenovo@squebb.ca>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Date: Wed, 24 Apr 2024 14:28:14 +0200
Message-ID: <20240424122834.19801-5-hdegoede@redhat.com>
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
 Content preview: Setting ignore_acpi_ev to true has the same result as setting
 send_acpi_ev to false, so there is no need to have both. Drop ignore_acpi_ev.
 Tested-by: Mark Pearson <mpearson-lenovo@squebb.ca> Signed-off-by: Hans de
 Goede <hdegoede@redhat.com> --- drivers/platform/x86/thinkpad_acpi.c | 56
 +++++++++ 1 file changed, 17 ins [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [170.10.133.124 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rzbk3-000221-6P
Subject: [ibm-acpi-devel] [PATCH v2 04/24] platform/x86: thinkpad_acpi: Drop
 ignore_acpi_ev
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

Setting ignore_acpi_ev to true has the same result as setting
send_acpi_ev to false, so there is no need to have both.

Drop ignore_acpi_ev.

Tested-by: Mark Pearson <mpearson-lenovo@squebb.ca>
Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/platform/x86/thinkpad_acpi.c | 56 +++++++++-------------------
 1 file changed, 17 insertions(+), 39 deletions(-)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index 007223fded30..bb6b880a5b50 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -3755,9 +3755,7 @@ static bool hotkey_notify_extended_hotkey(const u32 hkey)
 }
 
 /* 0x1000-0x1FFF: key presses */
-static bool hotkey_notify_hotkey(const u32 hkey,
-				 bool *send_acpi_ev,
-				 bool *ignore_acpi_ev)
+static bool hotkey_notify_hotkey(const u32 hkey, bool *send_acpi_ev)
 {
 	unsigned int scancode = hkey & 0xfff;
 
@@ -3772,12 +3770,10 @@ static bool hotkey_notify_hotkey(const u32 hkey,
 		    scancode <= TP_ACPI_HOTKEYSCAN_ADAPTIVE_START) {
 			/* HKEY event 0x1001 is scancode 0x00 */
 			scancode--;
-			if (!(hotkey_source_mask & (1 << scancode))) {
+			if (!(hotkey_source_mask & (1 << scancode)))
 				tpacpi_input_send_key_masked(scancode);
-				*send_acpi_ev = false;
-			} else {
-				*ignore_acpi_ev = true;
-			}
+
+			*send_acpi_ev = false;
 			return true;
 		}
 		break;
@@ -3793,21 +3789,19 @@ static bool hotkey_notify_hotkey(const u32 hkey,
 }
 
 /* 0x2000-0x2FFF: Wakeup reason */
-static bool hotkey_notify_wakeup(const u32 hkey,
-				 bool *send_acpi_ev,
-				 bool *ignore_acpi_ev)
+static bool hotkey_notify_wakeup(const u32 hkey, bool *send_acpi_ev)
 {
 	switch (hkey) {
 	case TP_HKEY_EV_WKUP_S3_UNDOCK: /* suspend, undock */
 	case TP_HKEY_EV_WKUP_S4_UNDOCK: /* hibernation, undock */
 		hotkey_wakeup_reason = TP_ACPI_WAKEUP_UNDOCK;
-		*ignore_acpi_ev = true;
+		*send_acpi_ev = false;
 		break;
 
 	case TP_HKEY_EV_WKUP_S3_BAYEJ: /* suspend, bay eject */
 	case TP_HKEY_EV_WKUP_S4_BAYEJ: /* hibernation, bay eject */
 		hotkey_wakeup_reason = TP_ACPI_WAKEUP_BAYEJ;
-		*ignore_acpi_ev = true;
+		*send_acpi_ev = false;
 		break;
 
 	case TP_HKEY_EV_WKUP_S3_BATLOW: /* Battery on critical low level/S3 */
@@ -3830,9 +3824,7 @@ static bool hotkey_notify_wakeup(const u32 hkey,
 }
 
 /* 0x4000-0x4FFF: dock-related events */
-static bool hotkey_notify_dockevent(const u32 hkey,
-				 bool *send_acpi_ev,
-				 bool *ignore_acpi_ev)
+static bool hotkey_notify_dockevent(const u32 hkey, bool *send_acpi_ev)
 {
 	switch (hkey) {
 	case TP_HKEY_EV_UNDOCK_ACK:
@@ -3863,7 +3855,6 @@ static bool hotkey_notify_dockevent(const u32 hkey,
 	case TP_HKEY_EV_KBD_COVER_ATTACH:
 	case TP_HKEY_EV_KBD_COVER_DETACH:
 		*send_acpi_ev = false;
-		*ignore_acpi_ev = true;
 		return true;
 
 	default:
@@ -3872,9 +3863,7 @@ static bool hotkey_notify_dockevent(const u32 hkey,
 }
 
 /* 0x5000-0x5FFF: human interface helpers */
-static bool hotkey_notify_usrevent(const u32 hkey,
-				 bool *send_acpi_ev,
-				 bool *ignore_acpi_ev)
+static bool hotkey_notify_usrevent(const u32 hkey, bool *send_acpi_ev)
 {
 	switch (hkey) {
 	case TP_HKEY_EV_PEN_INSERTED:  /* X61t: tablet pen inserted into bay */
@@ -3892,7 +3881,7 @@ static bool hotkey_notify_usrevent(const u32 hkey,
 	case TP_HKEY_EV_LID_OPEN:	/* Lid opened */
 	case TP_HKEY_EV_BRGHT_CHANGED:	/* brightness changed */
 		/* do not propagate these events */
-		*ignore_acpi_ev = true;
+		*send_acpi_ev = false;
 		return true;
 
 	default:
@@ -3904,9 +3893,7 @@ static void thermal_dump_all_sensors(void);
 static void palmsensor_refresh(void);
 
 /* 0x6000-0x6FFF: thermal alarms/notices and keyboard events */
-static bool hotkey_notify_6xxx(const u32 hkey,
-				 bool *send_acpi_ev,
-				 bool *ignore_acpi_ev)
+static bool hotkey_notify_6xxx(const u32 hkey, bool *send_acpi_ev)
 {
 	switch (hkey) {
 	case TP_HKEY_EV_THM_TABLE_CHANGED:
@@ -3953,14 +3940,12 @@ static bool hotkey_notify_6xxx(const u32 hkey,
 		/* key press events, we just ignore them as long as the EC
 		 * is still reporting them in the normal keyboard stream */
 		*send_acpi_ev = false;
-		*ignore_acpi_ev = true;
 		return true;
 
 	case TP_HKEY_EV_KEY_FN_ESC:
 		/* Get the media key status to force the status LED to update */
 		acpi_evalf(hkey_handle, NULL, "GMKS", "v");
 		*send_acpi_ev = false;
-		*ignore_acpi_ev = true;
 		return true;
 
 	case TP_HKEY_EV_TABLET_CHANGED:
@@ -3988,7 +3973,6 @@ static void hotkey_notify(struct ibm_struct *ibm, u32 event)
 {
 	u32 hkey;
 	bool send_acpi_ev;
-	bool ignore_acpi_ev;
 	bool known_ev;
 
 	if (event != 0x80) {
@@ -4013,18 +3997,15 @@ static void hotkey_notify(struct ibm_struct *ibm, u32 event)
 		}
 
 		send_acpi_ev = true;
-		ignore_acpi_ev = false;
 
 		switch (hkey >> 12) {
 		case 1:
 			/* 0x1000-0x1FFF: key presses */
-			known_ev = hotkey_notify_hotkey(hkey, &send_acpi_ev,
-						 &ignore_acpi_ev);
+			known_ev = hotkey_notify_hotkey(hkey, &send_acpi_ev);
 			break;
 		case 2:
 			/* 0x2000-0x2FFF: Wakeup reason */
-			known_ev = hotkey_notify_wakeup(hkey, &send_acpi_ev,
-						 &ignore_acpi_ev);
+			known_ev = hotkey_notify_wakeup(hkey, &send_acpi_ev);
 			break;
 		case 3:
 			/* 0x3000-0x3FFF: bay-related wakeups */
@@ -4045,19 +4026,16 @@ static void hotkey_notify(struct ibm_struct *ibm, u32 event)
 			break;
 		case 4:
 			/* 0x4000-0x4FFF: dock-related events */
-			known_ev = hotkey_notify_dockevent(hkey, &send_acpi_ev,
-						&ignore_acpi_ev);
+			known_ev = hotkey_notify_dockevent(hkey, &send_acpi_ev);
 			break;
 		case 5:
 			/* 0x5000-0x5FFF: human interface helpers */
-			known_ev = hotkey_notify_usrevent(hkey, &send_acpi_ev,
-						 &ignore_acpi_ev);
+			known_ev = hotkey_notify_usrevent(hkey, &send_acpi_ev);
 			break;
 		case 6:
 			/* 0x6000-0x6FFF: thermal alarms/notices and
 			 *                keyboard events */
-			known_ev = hotkey_notify_6xxx(hkey, &send_acpi_ev,
-						 &ignore_acpi_ev);
+			known_ev = hotkey_notify_6xxx(hkey, &send_acpi_ev);
 			break;
 		case 7:
 			/* 0x7000-0x7FFF: misc */
@@ -4079,7 +4057,7 @@ static void hotkey_notify(struct ibm_struct *ibm, u32 event)
 		}
 
 		/* netlink events */
-		if (!ignore_acpi_ev && send_acpi_ev) {
+		if (send_acpi_ev) {
 			acpi_bus_generate_netlink_event(
 					ibm->acpi->device->pnp.device_class,
 					dev_name(&ibm->acpi->device->dev),
-- 
2.44.0



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
