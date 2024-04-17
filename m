Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 45D188A8A3E
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 17 Apr 2024 19:32:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rx98T-0000O8-LH;
	Wed, 17 Apr 2024 17:31:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1rx98P-0000Nv-CB
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 17 Apr 2024 17:31:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DhmHMbnueY9obyK3Uu3OflyO7wvdBkCNYtIONEP8n/c=; b=QKWuIx31Zq065uUs4YPjR/ZQPI
 X8qmZBuaSiGp2S7fyIxgfVzhQDfedPhC427NRNof5sy5SQoRUaRYoXdGvCPZvBKhyuRH7dfWOLWub
 R2aiegYm9DnQoIM0OaHsMMliAXR7T4s5H873MqquQeYpKapj9lFuJRhHVQyzTlAMDQhY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DhmHMbnueY9obyK3Uu3OflyO7wvdBkCNYtIONEP8n/c=; b=FzeyfG+BVUTzcDh4SE8Nob0/jH
 MhAvBu2vEJpa/ZsqRp5Q31hl0pJoiVrKcPHHXJ8rbcqTF5RmrmuH7SkpnWjlPsbB1y1wILRKN2NBm
 r8UzJxZry3zRBOUfdCYCEX/y8goj6n6+7I2CN7d4NNpyDBCD5HERxYStytlb8teUUJ78=;
Received: from fhigh8-smtp.messagingengine.com ([103.168.172.159])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rx98O-0007Lj-Lb for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 17 Apr 2024 17:31:49 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id D80DD11400C2;
 Wed, 17 Apr 2024 13:31:37 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Wed, 17 Apr 2024 13:31:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1713375097; x=
 1713461497; bh=DhmHMbnueY9obyK3Uu3OflyO7wvdBkCNYtIONEP8n/c=; b=F
 RW1jy6t0xW2zo4T5QhlFZJhRf+xTFcrImgwBtGicxoTanubLLxq3YzqUBeIeXyiV
 KIw4neE81KJfJmgJD/axlRG96fAXh3rlFj87psuyOBLJPuAy3EXg3lsa7SBwsIp0
 ia12czfe8G2cc/XzaUQ4FUWJl3eVp6tSEtFEJcWZ040ZXTvAcg0G0eNSi8WahOq/
 RN5jkmeHRsoR+EPFVh++KyuL+/xVHgMO820sNx8QkyjfqC/n8EUeTUfWdM+8Pptv
 zjh8rIHOIiyF8O7xdYCZObUZ45T/sTBbsbTSl4/1wQQHwT7XpbSAw2T4tdoGmr2D
 YRsTRzZH2cfapf9OF+hcg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1713375097; x=
 1713461497; bh=DhmHMbnueY9obyK3Uu3OflyO7wvdBkCNYtIONEP8n/c=; b=d
 ZCVnAQ68OX2WGmj1CGIPC8cl0J9mgyWBbrfa4jRtajtrPgdiVoA+WLUFf7dD1Kx4
 5i9RQAdzOZTPyBcgcTtd1L23eUxgq0MMa3/h0bSEckzbBjmSvumPBabaDVl9B9DW
 +IkLJ03wW9HlQEnKxWvjxAavh+UWHrHd0DKe5wTqP5oc11Df/hJ+hEKDhoODEaPm
 Vm2LplCa8EcPvRgZiqqYb4jYMKM852csSHu54cn4BAT1wVgPasjxzR8wyK1IBOyn
 ftb0S4wIVZ/YBIptlWLBBcV558OedxcwE3qm069L2+OcOW2/cpJBbewjHKhFQN5m
 NP+890mg9ZiCde5jEg9NA==
X-ME-Sender: <xms:eQcgZljIVPRKxr0JoLC9yYYabksxUXTZhW5uEqQQ9CCHrV6MbOLxDw>
 <xme:eQcgZqB5Ln0SEnn_VBDtzK00lt0NFemkiqENxphuuPODhFeY_nwSDAkq_UQDuADI9
 Io3RSlv5mOKi6Q07ZY>
X-ME-Received: <xmr:eQcgZlHh7-QfBRrU0bNh6WTtCU5iLofq9qmwHZULIceqVor18yCq0D0MEqr5VXQvd20UKTA0JlmI4C8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudejkedguddugecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecuogetfedtuddqtdduucdludehmdenucfjughrpe
 fhvfevufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforghrkhcurfgvrghr
 shhonhcuoehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggrqeenucggtf
 frrghtthgvrhhnpeeftddvjeefleffvefhgfejjeehudetteeigeeugfekhffhgeejudeu
 teehgfdvffenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
 hmpehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggr
X-ME-Proxy: <xmx:eQcgZqQhITgL5QmHY68eEt1MOzavn056kNc4K5UMmkKmACek4ROwbQ>
 <xmx:eQcgZixvyCFe7zO49-SaI-0NpiQ1xwIhLcsz-AdUMdPtrYIuPvz6SQ>
 <xmx:eQcgZg56r5t_tYqiPPrOnbOa1L2I75sqYO8FtCP1O6E3zdcwbYu7dg>
 <xmx:eQcgZnwd5QzDoGnWTfeDi4PKrSM3k7pxFP6PXKVN8aVXF3g5AbagvA>
 <xmx:eQcgZk4scLOMvNS8gHvHJtl_KoB6X093jX-L_stOrD3GLALVALU2IGMP>
Feedback-ID: ibe194615:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 17 Apr 2024 13:31:36 -0400 (EDT)
From: Mark Pearson <mpearson-lenovo@squebb.ca>
To: mpearson-lenovo@squebb.ca
Date: Wed, 17 Apr 2024 13:31:09 -0400
Message-ID: <20240417173124.9953-4-mpearson-lenovo@squebb.ca>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240417173124.9953-1-mpearson-lenovo@squebb.ca>
References: <mpearson-lenovo@squebb.ca>
 <20240417173124.9953-1-mpearson-lenovo@squebb.ca>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
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
 <vishnuocv@gmail.com>
 --- Changes in v2: - Improved comments on keycodes in init function 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [103.168.172.159 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [103.168.172.159 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1rx98O-0007Lj-Lb
Subject: [ibm-acpi-devel] [PATCH v2 4/4] platform/x86: thinkpad_acpi:
 Support hotkey to disable trackpoint doubletap
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
Cc: ibm-acpi-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, vsankar@lenovo.com, hdegoede@redhat.com,
 hmh@hmh.eng.br, Vishnu Sankar <vishnuocv@gmail.com>,
 ilpo.jarvinen@linux.intel.com, peter.hutterer@redhat.com, njoshi1@lenovo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

The hotkey combination FN+G can be used to disable the trackpoint
doubletap feature on Windows.
Add matching functionality for Linux.

Signed-off-by: Mark Pearson <mpearson-lenovo@squebb.ca>
Signed-off-by: Vishnu Sankar <vishnuocv@gmail.com>
---
Changes in v2: 
 - Improved comments on keycodes in init function

 drivers/platform/x86/thinkpad_acpi.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index a2f21e958d39..370b9285156c 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -167,6 +167,7 @@ enum tpacpi_hkey_event_t {
 	TP_HKEY_EV_VOL_MUTE		= 0x1017, /* Mixer output mute */
 	TP_HKEY_EV_PRIVACYGUARD_TOGGLE	= 0x130f, /* Toggle priv.guard on/off */
 	TP_HKEY_EV_AMT_TOGGLE		= 0x131a, /* Toggle AMT on/off */
+	TP_HKEY_EV_DOUBLETAP_TOGGLE	= 0x131c, /* Toggle trackpoint doubletap on/off */
 	TP_HKEY_EV_PROFILE_TOGGLE	= 0x131f, /* Toggle platform profile */
 
 	/* Reasons for waking up from S3/S4 */
@@ -356,6 +357,7 @@ static struct {
 	u32 hotkey_poll_active:1;
 	u32 has_adaptive_kbd:1;
 	u32 kbd_lang:1;
+	u32 trackpoint_doubletap:1;
 	struct quirk_entry *quirks;
 } tp_features;
 
@@ -3346,7 +3348,7 @@ static int __init hotkey_init(struct ibm_init_struct *iibm)
 		KEY_HANGUP_PHONE,		/* Decline incoming call */
 		KEY_UNKNOWN,			/* AMT_TOGGLE handled in driver, 0x31a */
 		KEY_UNKNOWN,			/* Camera Shutter Switch, 0X31b */
-		KEY_UNKNOWN,			/* DOUBLETAP_TOGGLE, 0x31c */
+		KEY_UNKNOWN,			/* DOUBLETAP_TOGGLE handled in driver, 0x31c */
 		KEY_VENDOR,                     /* System debug info, 0x31D */
 		KEY_PROG1,                      /* Trackpoint doubletap */
 		},
@@ -3606,6 +3608,9 @@ static int __init hotkey_init(struct ibm_init_struct *iibm)
 
 	hotkey_poll_setup_safe(true);
 
+	/* Enable doubletap by default */
+	tp_features.trackpoint_doubletap = 1;
+
 	return 0;
 }
 
@@ -3747,6 +3752,7 @@ static bool hotkey_notify_extended_hotkey(const u32 hkey)
 	case TP_HKEY_EV_PRIVACYGUARD_TOGGLE:
 	case TP_HKEY_EV_AMT_TOGGLE:
 	case TP_HKEY_EV_PROFILE_TOGGLE:
+	case TP_HKEY_EV_DOUBLETAP_TOGGLE:
 		tpacpi_driver_event(hkey);
 		return true;
 	}
@@ -4011,7 +4017,7 @@ static bool hotkey_notify_6xxx(const u32 hkey,
 
 static bool hotkey_notify_8xxx(const u32 hkey)
 {
-	if (hkey == TP_HKEY_EV_TRACK_DOUBLETAP) {
+	if (hkey == TP_HKEY_EV_TRACK_DOUBLETAP && tp_features.trackpoint_doubletap) {
 		tpacpi_input_send_key(TP_ACPI_HOTKEYSCAN_DOUBLETAP);
 		return true;
 	}
@@ -11229,6 +11235,8 @@ static void tpacpi_driver_event(const unsigned int hkey_event)
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
