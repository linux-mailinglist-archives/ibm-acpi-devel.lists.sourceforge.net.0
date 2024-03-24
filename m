Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A6A887F2D
	for <lists+ibm-acpi-devel@lfdr.de>; Sun, 24 Mar 2024 22:26:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1roVMG-0007D9-N2;
	Sun, 24 Mar 2024 21:26:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1roVME-0007D0-IU
 for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 24 Mar 2024 21:26:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lkjwIduruMi5XWo7srkLWDeR2ShYX9J54RxCXveF3IE=; b=QTNNC9f02x9jTCakGzxVrKafpR
 KgIP3Nh0VNaBQXhd/tCLYf/D3bWg+KpgiPmn1mm0oW9cM65DyTy2Up3+WF1Kwr/P3DiLxua6/u4k6
 x+npTQMV/KOw4a1u8PnBItP/0T8FuSjUj77hMdOhH4WikyWOANcLHcNvdDHZGLrfkAkk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lkjwIduruMi5XWo7srkLWDeR2ShYX9J54RxCXveF3IE=; b=aKcAEFp9yjBGdpJeKx054SqlXC
 fH+ylaQLpnS+f74Usw4OEi4XHARRg/OLPcHRpVi9LIMS8L4RLnHRh0T3OAhxGREc1cYOKiYSJGYzh
 4/wO6HVBJSI8ApaKqhnpQ2uP9rRJg2CmIriw0Hy5zoIcFUMZbQTpreHuaDAwF+qsOZMo=;
Received: from fhigh5-smtp.messagingengine.com ([103.168.172.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1roVMD-0002ZF-UL for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 24 Mar 2024 21:26:22 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 6361811400F5;
 Sun, 24 Mar 2024 17:08:38 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Sun, 24 Mar 2024 17:08:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1711314518; x=
 1711400918; bh=lkjwIduruMi5XWo7srkLWDeR2ShYX9J54RxCXveF3IE=; b=e
 c8KipxblEsfe2xO3yWVPYh2e/SrbALb6c6wFJ6UvJWHKDIKlHubdCJ7lYlGuXj+C
 LYf//CwZeOddSWvcLNJLjfHYYoHEbxU5ok5OvSoa61hKZkoEo6Z3RBnVr6T9udgv
 t7VJFqiukfb5HVg4F1ozj3VtXK+kMg1z6XWxBl6JEVGes22Nz3e6WhWPf3uhyiIw
 Rnc55/RFqlYd0Vaw+BzjnglCQ0oMFDSLMVjdsl5lcE5C6cxmqnT15akSWeHzaGaV
 Dd07t4gprkLSw6+rcTxbUttSV2xC3y4ETn1iG1kdI32zGYRY+vPh0bdTiRklWf3g
 dOqep8Ydl2eO/rCjsZspA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1711314518; x=
 1711400918; bh=lkjwIduruMi5XWo7srkLWDeR2ShYX9J54RxCXveF3IE=; b=V
 AL8N/sFCz2LnqQ1RQHk6JF0XeznA7zEM+UQCmNR5lDKcQ79VhQy6q8rfkuSLWWBV
 EyuDctxNaihBquyh6IC7vNDB8miIf/u0Lp1Wo2xp1EyYd909Ky793CPNHcEdz5B8
 2XgfgNYLy0j4b3I8fk5Y/qc1OIeooBzhdbk0cgHfB3P7zvcXJ6JfSnqyHvyUCten
 HFNx5YeLrQHqSgMV3pT+c8qSI/U5kwsq4gsZBmcU1zHSMtrbkSN1uxch8q0ni22z
 fT/DlqKWHvWjTPIBBpncEpxCu/kszlWaPXQHsxsVN+d0yJFm4rs9NHAzZq7g2p4c
 Hnh56OuxDdXKCHiJH88Ag==
X-ME-Sender: <xms:VpYAZlYgopMuK7oXIW6BMmkrB1if_Pbsc21mwnrql0ooJS5jqKegeA>
 <xme:VpYAZsYkUzAXWi3qtaylMJoW1xpGVFR-QjquLxa20PRLXCqKp9ItUpe5C-Dw-62tT
 p3H9qAc0fIcfLSCNKQ>
X-ME-Received: <xmr:VpYAZn_kWNhU38XgsMoKvVOzHi_eAhfBYIYeMFB4KJNiZEGOSMwyiLdFxY7u>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledruddtjedgudeglecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecuogetfedtuddqtdduucdludehmdenucfjughrpe
 fhvfevufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforghrkhcurfgvrghr
 shhonhcuoehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggrqeenucggtf
 frrghtthgvrhhnpeeftddvjeefleffvefhgfejjeehudetteeigeeugfekhffhgeejudeu
 teehgfdvffenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
 hmpehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggr
X-ME-Proxy: <xmx:VpYAZjrQGgf5C5sCJ2wFNQUeOmGHjOHyViu9Te0oPZmT4PVUKAtXqw>
 <xmx:VpYAZgqJOpvh6C2bTlh5dsQAaUBJ2T-caRFsxKo8FlhNCXqNRv1oEA>
 <xmx:VpYAZpTxKTEoib53ruJt2LAbMplbAdROY3vZG7ktwZe1B3_pN8P09A>
 <xmx:VpYAZopl9BymDMN-gfMwVGK9fBvcoE40s5GA5CIyBWYHDqMA1EjZRQ>
 <xmx:VpYAZt7DwJk1CvYdvdR6W6MglubzjwpDZj2GufwH1wKvOYwJY7eFPw>
Feedback-ID: ibe194615:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 24 Mar 2024 17:08:37 -0400 (EDT)
From: Mark Pearson <mpearson-lenovo@squebb.ca>
To: mpearson-lenovo@squebb.ca
Date: Sun, 24 Mar 2024 17:08:01 -0400
Message-ID: <20240324210817.192033-5-mpearson-lenovo@squebb.ca>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240324210817.192033-1-mpearson-lenovo@squebb.ca>
References: <mpearson-lenovo@squebb.ca>
 <20240324210817.192033-1-mpearson-lenovo@squebb.ca>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The hotkey combination FN+G can be used to disable the
 trackpoint
 doubletap feature on Windows. Add matching functionality for Linux.
 Signed-off-by:
 Mark Pearson <mpearson-lenovo@squebb.ca> Signed-off-by: Vishnu Sankar
 <vsankar@lenovo.com>
 --- drivers/platform/x86/thinkpad_acpi.c | 24 +++++++++++++++++------- 1
 file changed, 17 inse [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.156 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1roVMD-0002ZF-UL
Subject: [ibm-acpi-devel] [PATCH 4/4] platform/x86: thinkpad_acpi: Support
 hotkey to disable trackpoint doubletap
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
Cc: ibm-acpi-devel@lists.sourceforge.net, dmitry.torokhov@gmail.com,
 linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 vsankar@lenovo.com, hdegoede@redhat.com, hmh@hmh.eng.br,
 linux-input@vger.kernel.org, ilpo.jarvinen@linux.intel.com,
 peter.hutterer@redhat.com, njoshi1@lenovo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

The hotkey combination FN+G can be used to disable the trackpoint
doubletap feature on Windows.
Add matching functionality for Linux.

Signed-off-by: Mark Pearson <mpearson-lenovo@squebb.ca>
Signed-off-by: Vishnu Sankar <vsankar@lenovo.com>
---
 drivers/platform/x86/thinkpad_acpi.c | 24 +++++++++++++++++-------
 1 file changed, 17 insertions(+), 7 deletions(-)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index 854ce971bde2..21756aa3d28d 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -167,6 +167,7 @@ enum tpacpi_hkey_event_t {
 	TP_HKEY_EV_VOL_MUTE		= 0x1017, /* Mixer output mute */
 	TP_HKEY_EV_PRIVACYGUARD_TOGGLE	= 0x130f, /* Toggle priv.guard on/off */
 	TP_HKEY_EV_AMT_TOGGLE		= 0x131a, /* Toggle AMT on/off */
+	TP_HKEY_EV_DOUBLETAP_TOGGLE	= 0x131c, /* Toggle trackpoint doubletap on/off */
 	TP_HKEY_EV_PROFILE_TOGGLE	= 0x131f, /* Toggle platform profile */
 
 	/* Reasons for waking up from S3/S4 */
@@ -354,6 +355,7 @@ static struct {
 	u32 hotkey_poll_active:1;
 	u32 has_adaptive_kbd:1;
 	u32 kbd_lang:1;
+	u32 trackpoint_doubletap:1;
 	struct quirk_entry *quirks;
 } tp_features;
 
@@ -3598,6 +3600,9 @@ static int __init hotkey_init(struct ibm_init_struct *iibm)
 
 	hotkey_poll_setup_safe(true);
 
+	/* Enable doubletap by default */
+	tp_features.trackpoint_doubletap = 1;
+
 	return 0;
 }
 
@@ -3739,6 +3744,7 @@ static bool hotkey_notify_extended_hotkey(const u32 hkey)
 	case TP_HKEY_EV_PRIVACYGUARD_TOGGLE:
 	case TP_HKEY_EV_AMT_TOGGLE:
 	case TP_HKEY_EV_PROFILE_TOGGLE:
+	case TP_HKEY_EV_DOUBLETAP_TOGGLE:
 		tpacpi_driver_event(hkey);
 		return true;
 	}
@@ -4092,13 +4098,15 @@ static void hotkey_notify(struct ibm_struct *ibm, u32 event)
 				send_acpi_ev = true;
 				ignore_acpi_ev = false;
 				known_ev = true;
-				/* Send to user space */
-				mutex_lock(&tpacpi_inputdev_send_mutex);
-				input_report_key(tpacpi_inputdev, KEY_DOUBLECLICK, 1);
-				input_sync(tpacpi_inputdev);
-				input_report_key(tpacpi_inputdev, KEY_DOUBLECLICK, 0);
-				input_sync(tpacpi_inputdev);
-				mutex_unlock(&tpacpi_inputdev_send_mutex);
+				if (tp_features.trackpoint_doubletap) {
+					/* Send to user space */
+					mutex_lock(&tpacpi_inputdev_send_mutex);
+					input_report_key(tpacpi_inputdev, KEY_DOUBLECLICK, 1);
+					input_sync(tpacpi_inputdev);
+					input_report_key(tpacpi_inputdev, KEY_DOUBLECLICK, 0);
+					input_sync(tpacpi_inputdev);
+					mutex_unlock(&tpacpi_inputdev_send_mutex);
+				}
 				break;
 			}
 			fallthrough;	/* to default */
@@ -11228,6 +11236,8 @@ static void tpacpi_driver_event(const unsigned int hkey_event)
 		/* Notify user space the profile changed */
 		platform_profile_notify();
 	}
+	if (hkey_event == TP_HKEY_EV_DOUBLETAP_TOGGLE)
+		tp_features.trackpoint_doubletap = !tp_features.trackpoint_doubletap;
 }
 
 static void hotkey_driver_event(const unsigned int scancode)
-- 
2.44.0



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
