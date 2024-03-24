Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 41520887F2E
	for <lists+ibm-acpi-devel@lfdr.de>; Sun, 24 Mar 2024 22:26:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1roVMG-00050e-10;
	Sun, 24 Mar 2024 21:26:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1roVME-00050K-64
 for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 24 Mar 2024 21:26:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=htD7Xc/EdF+0+xuTojpID1s7Z/g8szPikEsSNl9QK4E=; b=C9pfeXQOXO2MYOMW56K2HOlCNy
 8a+shp2ZQOgpaPs7/7UqWIwZual4LQIjp5I7+kISKk7Sm56H0HDmT5TyoLcxwdGitYmYXiNKA1HqY
 fvnvMBqNsIO3LR4eTjHCwVeteM8tZjkQpSg+tkWr/Ce8SWvj7XsJIckiT1enymVd7gHA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=htD7Xc/EdF+0+xuTojpID1s7Z/g8szPikEsSNl9QK4E=; b=fT6dvuLuRacYM6yMYYc1ojOi8K
 9oGMMxiplpJpNiSOk9iLoa2hqV7vQyKrFVkTqrf76QxqM3ma+AHgZJr4YRts1hQEW+G+jVjM2thJx
 bMQdm+TcUxKjAQK6gL19FPapPWN6IlHnvJZIpQAoIJNKtmc5hjq1WS8syc85e3M9sZW0=;
Received: from fhigh5-smtp.messagingengine.com ([103.168.172.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1roVMD-0002ZE-UT for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 24 Mar 2024 21:26:22 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 95FD311400FF;
 Sun, 24 Mar 2024 17:08:37 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Sun, 24 Mar 2024 17:08:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1711314517; x=
 1711400917; bh=htD7Xc/EdF+0+xuTojpID1s7Z/g8szPikEsSNl9QK4E=; b=X
 v1PQDAa87vYZtlhCdr3oMr7hfMiDnB89+TG5GUhKLECL3PYa1RA5T2QZnYYyjDNE
 xXW10F0Z3fjEffKgulh7IqWRQfmZNi5ZA1Jxpy2kFtMv5fIak9DeJvDmhUssawu8
 b2TOWNR4fE1mxCXgGpgka2QtL0EMw61iGMHFhN96uFEwO3nV9KIl/tpahl3HtCBG
 +DF+RCyQPjarj7FuUbaRdW/qKptCNjF7SKvF8DUrV7zlii+jva7U/L/22c/ToXj1
 wZKxwh/ZX3tz/TPCgDnMmmGM/g4l6aKMe93zP0Cw5RFPz/qayd6TNM2AGdq5gxt+
 xQHs8Wmi22dI5flAnwRKg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1711314517; x=
 1711400917; bh=htD7Xc/EdF+0+xuTojpID1s7Z/g8szPikEsSNl9QK4E=; b=t
 IXQnmSodIWj9KeSSIvelemGDk4kfHZAmPdxTEBrHvZLB0ZIQecaDDSShgGzN+IL1
 RHU+ydpGCY2lgDMMX/ndd4eTVxfrMC6tCLnMJDLFdbDSvmVy3Fd5eamknqWHLH59
 RUKl8kBDc7GsOVzITTIIXSDQ2HNVUFillNIBamwcYnMQljpJzqAB9ZRtr2zsZvL/
 AO5CxYHuUtXfYnaj9lvlwCAgDNf1FYZXAcuXgl2yuMPisRDBBLZLChwbkVuhgJf1
 9tCzkzhXM1iqsc7cWGfA7vus5izM1LrDlfF0mDAFU92zEZ5RT8BAC49ura1x3yF2
 b6eW++LyOYvSm0gR66vpA==
X-ME-Sender: <xms:VZYAZvqvBPfiJ2SXZYFaJ4UOdwPhNVutreTEGc3Dpyy_VarbpIySEA>
 <xme:VZYAZpqlh7GbzUL6n-bAhYga6v4MHbHw1AcGOG9erwLn7O_q8vQtidCehXygPPKA3
 QSWrA1ldhhNzxxQvOE>
X-ME-Received: <xmr:VZYAZsM24qKaFODb0YTz8pH3sTZAFcKBUoJWobW6C6YO6dlVsecgfAAq8g12>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledruddtjedgudegkecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecuogetfedtuddqtdduucdludehmdenucfjughrpe
 fhvfevufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforghrkhcurfgvrghr
 shhonhcuoehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggrqeenucggtf
 frrghtthgvrhhnpeeftddvjeefleffvefhgfejjeehudetteeigeeugfekhffhgeejudeu
 teehgfdvffenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
 hmpehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggr
X-ME-Proxy: <xmx:VZYAZi7vK3IBIws3FvTm77jleA98ggtz3eCya9rEnJTF5vT67wKDBg>
 <xmx:VZYAZu7uQ7TP28-0C1dx9rUQzxlUT1TssiR-BmZuv3lwWi4gZLhqDQ>
 <xmx:VZYAZqgr5fHPthcfctxM4JUF33q-AuvzMGZd4ZL9Zemv4hsNBYbBTw>
 <xmx:VZYAZg4YSkXRzU53LSyEhrhJFaf7NKyX4VnEC2eX2SqUBtx253IX6Q>
 <xmx:VZYAZhJT-3BbQx8bvU4I8Sk2_wTsjIUIID_iiOVXquNuoW3gE3KDPg>
Feedback-ID: ibe194615:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 24 Mar 2024 17:08:36 -0400 (EDT)
From: Mark Pearson <mpearson-lenovo@squebb.ca>
To: mpearson-lenovo@squebb.ca
Date: Sun, 24 Mar 2024 17:08:00 -0400
Message-ID: <20240324210817.192033-4-mpearson-lenovo@squebb.ca>
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
 Content preview: New Lenovo platforms are adding the FN+N key to generate
 system
 debug details that support can use for collecting important details on any
 customer cases for Windows. Add the infrastructure so we can [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.156 listed in list.dnswl.org]
X-Headers-End: 1roVMD-0002ZE-UT
Subject: [ibm-acpi-devel] [PATCH 3/4] platform/x86: thinkpad_acpi: Support
 for system debug info hotkey
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

New Lenovo platforms are adding the FN+N key to generate system debug
details that support can use for collecting important details on any
customer cases for Windows.
Add the infrastructure so we can do the same on Linux by generating a
SYS_DEBUG_INFO keycode to userspace.

Signed-off-by: Mark Pearson <mpearson-lenovo@squebb.ca>
Signed-off-by: Nitin Joshi <njoshi1@lenovo.com>
---
 drivers/platform/x86/thinkpad_acpi.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index 2bbb32c898e9..854ce971bde2 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -1787,6 +1787,7 @@ enum {	/* hot key scan codes (derived from ACPI DSDT) */
 	TP_ACPI_HOTKEYSCAN_NOTIFICATION_CENTER,
 	TP_ACPI_HOTKEYSCAN_PICKUP_PHONE,
 	TP_ACPI_HOTKEYSCAN_HANGUP_PHONE,
+	TP_ACPI_HOTKEYSCAN_SYS_DEBUG_INFO = 81,
 
 	/* Hotkey keymap size */
 	TPACPI_HOTKEY_MAP_LEN
@@ -3337,6 +3338,9 @@ static int __init hotkey_init(struct ibm_init_struct *iibm)
 		KEY_NOTIFICATION_CENTER,	/* Notification Center */
 		KEY_PICKUP_PHONE,		/* Answer incoming call */
 		KEY_HANGUP_PHONE,		/* Decline incoming call */
+		KEY_UNKNOWN,			/* AMT Toggle (event), 0x31A */
+		KEY_UNKNOWN, KEY_UNKNOWN,
+		KEY_SYS_DEBUG_INFO,             /* System debug info, 0x31D */
 		},
 	};
 
-- 
2.44.0



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
