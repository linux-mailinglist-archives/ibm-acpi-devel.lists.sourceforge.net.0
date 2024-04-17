Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 916EA8A8A3F
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 17 Apr 2024 19:32:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rx98K-0006ww-1C;
	Wed, 17 Apr 2024 17:31:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1rx98I-0006wn-8j
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 17 Apr 2024 17:31:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2xm38a5d29dZKNzZ2Wg3DwnYmxWKLU185JCV5OG0sgI=; b=HRvT+c8i8wAtUmqfoFTAuDeOht
 E6nCnoAR7puIUgQ6eWuKnbtnclt+wbIHiIzWQ7Zr+ZDqFaGrpy/zIfPJs3WhiLAPXSXMvoFkRw4MF
 Ngav6Ewak8vqm+7QMz5c8aMtVfR4zqfLz4Mi4F0F8iCU4MXx+a8sjm3gqhk+A/QvRajE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2xm38a5d29dZKNzZ2Wg3DwnYmxWKLU185JCV5OG0sgI=; b=IbT5HnCef1EOHNoOyBFMEzHZYD
 URv8kpF4xK29UEvtgwCcJyFrqwIYavdNpnnandbIL9u/4Kq2P+j0MPkZFvLSpTPWqbipCronTgOwU
 b6OUCz/SKM6QmTZ2idwRAYV2aV2LMwkKa9/JuLnxIUHYmAKrOiMRK3UBL0bf4jDuOJDo=;
Received: from fout3-smtp.messagingengine.com ([103.168.172.146])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rx98H-0007LL-FQ for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 17 Apr 2024 17:31:42 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailfout.nyi.internal (Postfix) with ESMTP id 9FEB21380242;
 Wed, 17 Apr 2024 13:31:35 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Wed, 17 Apr 2024 13:31:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1713375095; x=
 1713461495; bh=2xm38a5d29dZKNzZ2Wg3DwnYmxWKLU185JCV5OG0sgI=; b=a
 s0sdHFXSk1//Xe/ymQcGOG//3qTDCqZq6n7Fn8KPxgl5m7wNCTo47VTfclHzp6S+
 9jBkRPi0LmD4v5Nz9xugxDRmOdZLJBNJyo+RJ+YsQfAp41Ajgr+/1YQ2sTTp7EMh
 nwpbEzuT4nFKYCovAUSdZZFvR65SabEVj6FQjmOLAkGPSVLryIJw3DXK2ajDgPrF
 a2ZFtCqEZUALtI5U1KyrGHKoK/0EzmlfNw+DX73ioxGFaimn4t0saqrUge1IaXjf
 wPqiIDYsu+lUIV9YDahrt6cTkUpsLHomMhagjv85W/K9HvCwMiuYc087yWEZiycs
 cQYBPQdqQTjg1FLzktZcw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1713375095; x=
 1713461495; bh=2xm38a5d29dZKNzZ2Wg3DwnYmxWKLU185JCV5OG0sgI=; b=C
 83JvOc+ls0LAnt5izS/eqKmJ4xTIpbHtD/woYFoLV4tvdNk8EfFBLWn1+B8UPZEW
 paSgnTKSQsZQwlw4AG6Ts0waBzjYzc88xZOKXgIm1Z3+D0yJIX7fINp2fdsTG6YY
 Lqp5yIwJ3UnS+2mpscjruC1o+h51ZJ9V2I5CcU2DtXFxlY3IoCv8iE7x7GM9GVyh
 erbTNRn8X2RLlPZ8/XJcYg6R/7GeCVlzQ/eY0MOzKWHKJsbhfx2IZYd59cvC1D3Z
 +K3BlYIci4Nat7kXyXOMJwwtO40xjirw7fAQLYyQhDGvAhel1qXKYoqvHrBnqv+E
 A9dl5OoKU+De5P7NEKJyw==
X-ME-Sender: <xms:dwcgZqfyakAXbdjY3F85ppuNNPz03E07RMW0jStxAFPKQ_unTsG7DQ>
 <xme:dwcgZkN3dU-uADjbHbSoblRmP3z04Zh4RUTp8uSvyzJvJcsgPYOQm3-WbObs5vPej
 LA4BaBaw2AS6C7mGog>
X-ME-Received: <xmr:dwcgZrhRTmExVjjZCxeJ8t3j6uY4pddjlXsjUagffws1KLkpA6B13cJEpFQRgphlYr5EkAIlZ4fTU4c>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudejkedguddugecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecuogetfedtuddqtdduucdludehmdenucfjughrpe
 fhvfevufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforghrkhcurfgvrghr
 shhonhcuoehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggrqeenucggtf
 frrghtthgvrhhnpeeftddvjeefleffvefhgfejjeehudetteeigeeugfekhffhgeejudeu
 teehgfdvffenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
 hmpehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggr
X-ME-Proxy: <xmx:dwcgZn-HR_ZiQbw3wS4rmCUgYrAgZB-p1UUNFJZ8SIiji9SZx47SZQ>
 <xmx:dwcgZmuPiGexPRquj_fLAQg-OA6-U3ffTsrcgg8O-noT93miSp3ueQ>
 <xmx:dwcgZuHOiUddMMJBoiEb6TDMCERtYjdFRNxeM_2EC5H8XGKXh7Kh4A>
 <xmx:dwcgZlPNlI3cvFtWXkMTC0-9hAP1SsHP2SWuFSmQhX20CZThTQV3FQ>
 <xmx:dwcgZuFbJZqSoD494Tp1od_hGxBWohl5qtwf7TwfCTq-hv13GgLZAJND>
Feedback-ID: ibe194615:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 17 Apr 2024 13:31:34 -0400 (EDT)
From: Mark Pearson <mpearson-lenovo@squebb.ca>
To: mpearson-lenovo@squebb.ca
Date: Wed, 17 Apr 2024 13:31:07 -0400
Message-ID: <20240417173124.9953-2-mpearson-lenovo@squebb.ca>
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
 Content preview: Lenovo trackpoints are adding the ability to generate a
 doubletap
 event. This handles the doubletap event and sends the KEY_PROG1 event to
 userspace. Signed-off-by: Mark Pearson <mpearson-lenovo@squebb.ca>
 Signed-off-by:
 Vishnu Sankar <vishnuocv@gmail.com> --- Changes in v2: - Use KEY_PROG1 instead
 of KEY_DOUBLETAP as input maintainer doesn't want [...] 
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
 for more information. [103.168.172.146 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1rx98H-0007LL-FQ
Subject: [ibm-acpi-devel] [PATCH v2 2/4] platform/x86: thinkpad_acpi:
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
Cc: ibm-acpi-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, vsankar@lenovo.com, hdegoede@redhat.com,
 hmh@hmh.eng.br, Vishnu Sankar <vishnuocv@gmail.com>,
 ilpo.jarvinen@linux.intel.com, peter.hutterer@redhat.com, njoshi1@lenovo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Lenovo trackpoints are adding the ability to generate a doubletap event.
This handles the doubletap event and sends the KEY_PROG1 event to
userspace.

Signed-off-by: Mark Pearson <mpearson-lenovo@squebb.ca>
Signed-off-by: Vishnu Sankar <vishnuocv@gmail.com>
---
Changes in v2:
 - Use KEY_PROG1 instead of KEY_DOUBLETAP as input maintainer doesn't
   want new un-specific key codes added.
 - Add doubletap to hotkey scan code table and use existing hotkey
   functionality.
 - Tested using evtest, and then gnome settings to configure a custom shortcut
   to launch an application.

 drivers/platform/x86/thinkpad_acpi.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index 3b48d893280f..6d04d45e8d45 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -232,6 +232,9 @@ enum tpacpi_hkey_event_t {
 
 	/* Misc */
 	TP_HKEY_EV_RFKILL_CHANGED	= 0x7000, /* rfkill switch changed */
+
+	/* Misc2 */
+	TP_HKEY_EV_TRACK_DOUBLETAP      = 0x8036, /* trackpoint doubletap */
 };
 
 /****************************************************************************
@@ -1786,6 +1789,7 @@ enum {	/* hot key scan codes (derived from ACPI DSDT) */
 	TP_ACPI_HOTKEYSCAN_NOTIFICATION_CENTER,
 	TP_ACPI_HOTKEYSCAN_PICKUP_PHONE,
 	TP_ACPI_HOTKEYSCAN_HANGUP_PHONE,
+	TP_ACPI_HOTKEYSCAN_DOUBLETAP,
 
 	/* Hotkey keymap size */
 	TPACPI_HOTKEY_MAP_LEN
@@ -3336,6 +3340,7 @@ static int __init hotkey_init(struct ibm_init_struct *iibm)
 		KEY_NOTIFICATION_CENTER,	/* Notification Center */
 		KEY_PICKUP_PHONE,		/* Answer incoming call */
 		KEY_HANGUP_PHONE,		/* Decline incoming call */
+		KEY_PROG1,                      /* Trackpoint doubletap */
 		},
 	};
 
@@ -3996,6 +4001,15 @@ static bool hotkey_notify_6xxx(const u32 hkey,
 	return true;
 }
 
+static bool hotkey_notify_8xxx(const u32 hkey)
+{
+	if (hkey == TP_HKEY_EV_TRACK_DOUBLETAP) {
+		tpacpi_input_send_key(TP_ACPI_HOTKEYSCAN_DOUBLETAP);
+		return true;
+	}
+	return false;
+}
+
 static void hotkey_notify(struct ibm_struct *ibm, u32 event)
 {
 	u32 hkey;
@@ -4079,6 +4093,10 @@ static void hotkey_notify(struct ibm_struct *ibm, u32 event)
 				known_ev = true;
 			}
 			break;
+		case 8:
+			/* 0x8000-0x8FFF: misc2 */
+			known_ev = hotkey_notify_8xxx(hkey);
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
