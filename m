Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 780828B09A6
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 24 Apr 2024 14:29:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rzbkm-0008Qd-6Z;
	Wed, 24 Apr 2024 12:29:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1rzbkH-0008P8-PQ
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Apr 2024 12:29:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uF1n6DoVF1sCbLa/l6Ie14vb+Ol3dJAbxmXabV1fWRM=; b=DwdxH1SJ6nh7zTab60RmXhboPN
 Fv0y1AVc4ADH03iWGaidImk4botjKTNbTcsppI9h2tWpTrpP/jCrHrq/waFJO1yCh4ClgkCTuNZws
 p7FcMYyDmDFmSvEYlR15GZhMkNKkFgME7uH+0fP7WMPiL4G73+RjDk7x0enOptTgZPUs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uF1n6DoVF1sCbLa/l6Ie14vb+Ol3dJAbxmXabV1fWRM=; b=FgQh5jJGrgniaCd4agVGoHp7W+
 5MOCw64zh0YJwn7eAANk+EsU9CeDSuqkfzSk7ec1WJn4NWhjT/igvbn0ksC+R7ssDmfcaBL7m9+Yu
 lpC3jJaO1NnjX73HsGv7wleFcdwlKDEiwMAytysOnWYvF1/s4/RomGuutRPOXOD4dAX0=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rzbkG-00022w-1v for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Apr 2024 12:29:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1713961731;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=uF1n6DoVF1sCbLa/l6Ie14vb+Ol3dJAbxmXabV1fWRM=;
 b=avMj5xlKPfx/UhDoe5t+fmj504tH8WdXgf0/8htbrJShaZGmESsMbi0V8+4tsvkmYyzKva
 lyH1M9yS6BDgtjQfeOCG0GjxxV53jsT3UCrnvyUbWKBOXuKKnAJgxYLXf5dbFhKWOXpZug
 ncB/hpEkiJlQmr3g+PRxsLJpWq0gSMY=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-373-1Wu6DU9oPEmYCpfOTBxE4Q-1; Wed,
 24 Apr 2024 08:28:46 -0400
X-MC-Unique: 1Wu6DU9oPEmYCpfOTBxE4Q-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AEEFF3C0F427;
 Wed, 24 Apr 2024 12:28:45 +0000 (UTC)
Received: from shalem.redhat.com (unknown [10.39.195.45])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 86B9AC13FA6;
 Wed, 24 Apr 2024 12:28:44 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Andy Shevchenko <andy@kernel.org>,
 Mark Pearson <mpearson-lenovo@squebb.ca>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Date: Wed, 24 Apr 2024 14:28:17 +0200
Message-ID: <20240424122834.19801-8-hdegoede@redhat.com>
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
 Content preview:  tpacpi_driver_event() already only responds to hkey events
 which it knows about. Make it return a bool and return true when it has
 handled
 the event. This avoids the need to list TP_HKEY_EV_foo values to which it
 responds both in its caller and in the function itself. 
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
X-Headers-End: 1rzbkG-00022w-1v
Subject: [ibm-acpi-devel] [PATCH v2 07/24] platform/x86: thinkpad_acpi: Make
 tpacpi_driver_event() return if it handled the event
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

tpacpi_driver_event() already only responds to hkey events which it knows
about. Make it return a bool and return true when it has handled the event.

This avoids the need to list TP_HKEY_EV_foo values to which it responds
both in its caller and in the function itself.

Instead callers can now call it unconditionally and check the return value.

Tested-by: Mark Pearson <mpearson-lenovo@squebb.ca>
Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/platform/x86/thinkpad_acpi.c | 115 ++++++++++++++-------------
 1 file changed, 61 insertions(+), 54 deletions(-)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index c009885c8820..0bbc462d604c 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -1918,7 +1918,7 @@ static u32 hotkey_acpi_mask;		/* events enabled in firmware */
 
 static u16 *hotkey_keycode_map;
 
-static void tpacpi_driver_event(const unsigned int hkey_event);
+static bool tpacpi_driver_event(const unsigned int hkey_event);
 static void hotkey_driver_event(const unsigned int scancode);
 static void hotkey_poll_setup(const bool may_warn);
 
@@ -3726,13 +3726,8 @@ static bool adaptive_keyboard_hotkey_notify_hotkey(const u32 hkey)
 
 static bool hotkey_notify_extended_hotkey(const u32 hkey)
 {
-	switch (hkey) {
-	case TP_HKEY_EV_PRIVACYGUARD_TOGGLE:
-	case TP_HKEY_EV_AMT_TOGGLE:
-	case TP_HKEY_EV_PROFILE_TOGGLE:
-		tpacpi_driver_event(hkey);
+	if (tpacpi_driver_event(hkey))
 		return true;
-	}
 
 	if (hkey >= TP_HKEY_EV_EXTENDED_KEY_START &&
 	    hkey <= TP_HKEY_EV_EXTENDED_KEY_END) {
@@ -11081,72 +11076,84 @@ static struct platform_driver tpacpi_hwmon_pdriver = {
  * HKEY event callout for other subdrivers go here
  * (yes, it is ugly, but it is quick, safe, and gets the job done
  */
-static void tpacpi_driver_event(const unsigned int hkey_event)
+static bool tpacpi_driver_event(const unsigned int hkey_event)
 {
-	if (ibm_backlight_device) {
-		switch (hkey_event) {
-		case TP_HKEY_EV_BRGHT_UP:
-		case TP_HKEY_EV_BRGHT_DOWN:
+	switch (hkey_event) {
+	case TP_HKEY_EV_BRGHT_UP:
+	case TP_HKEY_EV_BRGHT_DOWN:
+		if (ibm_backlight_device)
 			tpacpi_brightness_notify_change();
-		}
-	}
-	if (alsa_card) {
-		switch (hkey_event) {
-		case TP_HKEY_EV_VOL_UP:
-		case TP_HKEY_EV_VOL_DOWN:
-		case TP_HKEY_EV_VOL_MUTE:
-			volume_alsa_notify_change();
-		}
-	}
-	if (tp_features.kbdlight && hkey_event == TP_HKEY_EV_KBD_LIGHT) {
-		enum led_brightness brightness;
-
-		mutex_lock(&kbdlight_mutex);
-
 		/*
-		 * Check the brightness actually changed, setting the brightness
-		 * through kbdlight_set_level() also triggers this event.
+		 * Key press events are suppressed by default hotkey_user_mask
+		 * and should still be reported if explicitly requested.
 		 */
-		brightness = kbdlight_sysfs_get(NULL);
-		if (kbdlight_brightness != brightness) {
-			kbdlight_brightness = brightness;
-			led_classdev_notify_brightness_hw_changed(
-				&tpacpi_led_kbdlight.led_classdev, brightness);
+		return false;
+	case TP_HKEY_EV_VOL_UP:
+	case TP_HKEY_EV_VOL_DOWN:
+	case TP_HKEY_EV_VOL_MUTE:
+		if (alsa_card)
+			volume_alsa_notify_change();
+
+		/* Key events are suppressed by default hotkey_user_mask */
+		return false;
+	case TP_HKEY_EV_KBD_LIGHT:
+		if (tp_features.kbdlight) {
+			enum led_brightness brightness;
+
+			mutex_lock(&kbdlight_mutex);
+
+			/*
+			 * Check the brightness actually changed, setting the brightness
+			 * through kbdlight_set_level() also triggers this event.
+			 */
+			brightness = kbdlight_sysfs_get(NULL);
+			if (kbdlight_brightness != brightness) {
+				kbdlight_brightness = brightness;
+				led_classdev_notify_brightness_hw_changed(
+					&tpacpi_led_kbdlight.led_classdev, brightness);
+			}
+
+			mutex_unlock(&kbdlight_mutex);
 		}
-
-		mutex_unlock(&kbdlight_mutex);
-	}
-
-	if (hkey_event == TP_HKEY_EV_THM_CSM_COMPLETED) {
+		/* Key events are suppressed by default hotkey_user_mask */
+		return false;
+	case TP_HKEY_EV_THM_CSM_COMPLETED:
 		lapsensor_refresh();
 		/* If we are already accessing DYTC then skip dytc update */
 		if (!atomic_add_unless(&dytc_ignore_event, -1, 0))
 			dytc_profile_refresh();
-	}
 
-	if (lcdshadow_dev && hkey_event == TP_HKEY_EV_PRIVACYGUARD_TOGGLE) {
-		enum drm_privacy_screen_status old_hw_state;
-		bool changed;
+		return true;
+	case TP_HKEY_EV_PRIVACYGUARD_TOGGLE:
+		if (lcdshadow_dev) {
+			enum drm_privacy_screen_status old_hw_state;
+			bool changed;
 
-		mutex_lock(&lcdshadow_dev->lock);
-		old_hw_state = lcdshadow_dev->hw_state;
-		lcdshadow_get_hw_state(lcdshadow_dev);
-		changed = lcdshadow_dev->hw_state != old_hw_state;
-		mutex_unlock(&lcdshadow_dev->lock);
+			mutex_lock(&lcdshadow_dev->lock);
+			old_hw_state = lcdshadow_dev->hw_state;
+			lcdshadow_get_hw_state(lcdshadow_dev);
+			changed = lcdshadow_dev->hw_state != old_hw_state;
+			mutex_unlock(&lcdshadow_dev->lock);
 
-		if (changed)
-			drm_privacy_screen_call_notifier_chain(lcdshadow_dev);
-	}
-	if (hkey_event == TP_HKEY_EV_AMT_TOGGLE) {
+			if (changed)
+				drm_privacy_screen_call_notifier_chain(lcdshadow_dev);
+		}
+		return true;
+	case TP_HKEY_EV_AMT_TOGGLE:
 		/* If we're enabling AMT we need to force balanced mode */
 		if (!dytc_amt_active)
 			/* This will also set AMT mode enabled */
 			dytc_profile_set(NULL, PLATFORM_PROFILE_BALANCED);
 		else
 			dytc_control_amt(!dytc_amt_active);
-	}
-	if (hkey_event == TP_HKEY_EV_PROFILE_TOGGLE)
+
+		return true;
+	case TP_HKEY_EV_PROFILE_TOGGLE:
 		platform_profile_cycle();
+		return true;
+	}
+
+	return false;
 }
 
 static void hotkey_driver_event(const unsigned int scancode)
-- 
2.44.0



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
