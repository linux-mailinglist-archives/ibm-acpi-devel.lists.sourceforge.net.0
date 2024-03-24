Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6179C887F30
	for <lists+ibm-acpi-devel@lfdr.de>; Sun, 24 Mar 2024 22:26:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1roVMO-0002bk-7X;
	Sun, 24 Mar 2024 21:26:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1roVMJ-0002bQ-JV
 for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 24 Mar 2024 21:26:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aeOBteVst3EdJ6UR71Pe68DjYvvvoVNomGTQddIcz0M=; b=hPrdDW6Qq7wBq+EIY0Jup0UpUT
 CgD/bPKL0FMlqHf6jcHqHF3YFBkl2zBWbXuKGOhRVagsafEFCwpA0BgzptfWSMh2Hmzo7B3cWBVdZ
 rtZmLc5xANWnIL9d2fuLOCO7e5BqVYi2+cW7YNsT4hakxJPXZgdBgoePOsHOmMVDXr3s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aeOBteVst3EdJ6UR71Pe68DjYvvvoVNomGTQddIcz0M=; b=WZQKxrPJlvKFMqos4s8gJHBBhz
 Csge1IMhW2hYPTQz5UINV5SYrphlsQ8JoFhl8R2TEjbLCMjhj2SWxQoVBNzXAvBD0gUHPlyLnOwLk
 ts/wRc9A53pymSaaC1BKJBw69JXDapQ23IYDDQZRhi1D+pHR7uKYqH6gfF79gT7Itsfs=;
Received: from fhigh5-smtp.messagingengine.com ([103.168.172.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1roVMI-0002ZW-Op for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 24 Mar 2024 21:26:27 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id C6F791140105;
 Sun, 24 Mar 2024 17:08:36 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Sun, 24 Mar 2024 17:08:36 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1711314516; x=
 1711400916; bh=aeOBteVst3EdJ6UR71Pe68DjYvvvoVNomGTQddIcz0M=; b=F
 ABWxOxMaiAaFjfrTIpn8xZ1SlsSP+zN8bbO3cyoB4+bw8ZqYmmh27wQTwhnpT90g
 GuWg+WHa3j5y0sdz6C4TOhFeJPk9FX/6UBPr45QITUvMK3jRRuV3wP1EB4I/ytz3
 mMj6LOdc1aOYVZU4y2MDg4nMg1ifXcXpaV9Etw8veYX9tAGDd3KT/cIe3cEvHZQw
 PRVSHp5+ZchFXBi2Q1nE6XUi+2DinsUdcRil4vKgGhDj44L+Y0UC6QWKa30rtwCn
 ek+Qjvt0I2fWwA1CFsIadEKOUN5gM4yiLWCbaNTqW5F3L8ld63JgTfCrCwNvBrFZ
 zKsOIox3ztQoz/R/y6+ag==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1711314516; x=
 1711400916; bh=aeOBteVst3EdJ6UR71Pe68DjYvvvoVNomGTQddIcz0M=; b=U
 nZTQ76FfFKZNJu+L4b0fitqZ6J4QNki1q208Gblip6G/yXxvduazhfX16nUdPq5n
 8ezV9RPHRag6nJbEcSWAbKSLsLeuKD/qOypZmGuVh/YBJHoT79wCpNcbv4GGF77m
 +fzPmfaB8XVYc1RVncN66J57mUj3u6CeC4uWvh+myiOdZMbagjuq4pyXW1m5Z22o
 EbkTulzstdZZ3KDLyk9YGAqA6Wf7ULOA0fogbxaepZ3vEgOJWBsfLKIbCzdUgNGq
 ChDSXljhwbJKPqdruS3AAEVEP07jP29N7lfdCj5SAsnb+GOMF46N16q6cpNEucG+
 APgng802rB+/Y0ctueBJg==
X-ME-Sender: <xms:VJYAZlUbvctG-24CBUWo4RHHCz2Pexclvlgxqyh599gEHGKvXLXEDw>
 <xme:VJYAZlkdZdbJaJUYgN_4wUOtcCMjs0JnVsH9dJg4m84ximwHUvjOj4Zj_WyhpSjCk
 YTJQMP4SBbR10LP86U>
X-ME-Received: <xmr:VJYAZhbN11RKmLHUiOw9_gSbAuxbgdoBCJdQrhSMfrstaGqb4YhVoDBrODQP>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledruddtjedgudegkecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecuogetfedtuddqtdduucdludehmdenucfjughrpe
 fhvfevufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforghrkhcurfgvrghr
 shhonhcuoehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggrqeenucggtf
 frrghtthgvrhhnpeeftddvjeefleffvefhgfejjeehudetteeigeeugfekhffhgeejudeu
 teehgfdvffenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
 hmpehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggr
X-ME-Proxy: <xmx:VJYAZoWCT2uUUREK9HlbAqjpqNovF5SPNVOT-u2rf-DTtt6M3DnKyA>
 <xmx:VJYAZvnU_QTY6D6ZwvQZ5TjFEktl2q0FMbCpIjMlORWelEzxMaIqtA>
 <xmx:VJYAZlcA3vFkvU_2IFT6aw2OXgvcklqOR4p5EdADNSKVSZVD_0J7nQ>
 <xmx:VJYAZpHgpaSnq1szIYQLn0JGvIDKPgpnwAeD48jPSXWc_XECPdWcsg>
 <xmx:VJYAZplkzV1U5uWVGf_YFXyNluKRHGSbMN5IQQCMR2f40XBhfslVFg>
Feedback-ID: ibe194615:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 24 Mar 2024 17:08:36 -0400 (EDT)
From: Mark Pearson <mpearson-lenovo@squebb.ca>
To: mpearson-lenovo@squebb.ca
Date: Sun, 24 Mar 2024 17:07:59 -0400
Message-ID: <20240324210817.192033-3-mpearson-lenovo@squebb.ca>
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
 Content preview: Lenovo trackpoints are adding the ability to generate a
 doubletap
 event. This handles the doubletap event and sends the KEY_DOUBLECLICK event
 to userspace. Signed-off-by: Mark Pearson <mpearson-lenovo@squebb.ca>
 Signed-off-by:
 Vishnu Sankar <vsankar@lenovo.com> --- drivers/platform/x86/thinkpad_acpi.c
 | 17 +++++++++++++++++ 1 file changed, 17 insertions( [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.156 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1roVMI-0002ZW-Op
Subject: [ibm-acpi-devel] [PATCH 2/4] platform/x86: thinkpad_acpi: Support
 for trackpoint doubletap
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

Lenovo trackpoints are adding the ability to generate a doubletap event.
This handles the doubletap event and sends the KEY_DOUBLECLICK event to
userspace.

Signed-off-by: Mark Pearson <mpearson-lenovo@squebb.ca>
Signed-off-by: Vishnu Sankar <vsankar@lenovo.com>
---
 drivers/platform/x86/thinkpad_acpi.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index 82429e59999d..2bbb32c898e9 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -232,6 +232,7 @@ enum tpacpi_hkey_event_t {
 
 	/* Misc */
 	TP_HKEY_EV_RFKILL_CHANGED	= 0x7000, /* rfkill switch changed */
+	TP_HKEY_EV_TRACKPOINT_DOUBLETAP = 0x8036, /* doubletap on Trackpoint*/
 };
 
 /****************************************************************************
@@ -4081,6 +4082,22 @@ static void hotkey_notify(struct ibm_struct *ibm, u32 event)
 				break;
 			}
 			fallthrough;	/* to default */
+		case 8:
+			/* 0x8036: Trackpoint doubletaps */
+			if (hkey == TP_HKEY_EV_TRACKPOINT_DOUBLETAP) {
+				send_acpi_ev = true;
+				ignore_acpi_ev = false;
+				known_ev = true;
+				/* Send to user space */
+				mutex_lock(&tpacpi_inputdev_send_mutex);
+				input_report_key(tpacpi_inputdev, KEY_DOUBLECLICK, 1);
+				input_sync(tpacpi_inputdev);
+				input_report_key(tpacpi_inputdev, KEY_DOUBLECLICK, 0);
+				input_sync(tpacpi_inputdev);
+				mutex_unlock(&tpacpi_inputdev_send_mutex);
+				break;
+			}
+			fallthrough;	/* to default */
 		default:
 			known_ev = false;
 		}
-- 
2.44.0



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
