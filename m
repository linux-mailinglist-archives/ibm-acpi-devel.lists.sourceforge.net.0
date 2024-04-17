Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F09E08A8A41
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 17 Apr 2024 19:32:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rx98R-0002oQ-DJ;
	Wed, 17 Apr 2024 17:31:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1rx98N-0002oG-Qo
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 17 Apr 2024 17:31:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SYwB9sIOejL6LQqFoRXrJ2e291n7cnRoAR//09q6alM=; b=NBNEsguAwbhbfD0iIoFbfAdq2U
 F90x7BGHHDnDQu3FUTm6QWV87LgEq1XpdRGkU037UordlVsseA8YYeWH8tgClwCiSJEeifbxlua54
 zVY0jD4y3hnLw6SOUgLKvpHcbuVBpFGEgfoUXhtmkqJ09R+w0+d+OXBI+oBarmeQsIkM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SYwB9sIOejL6LQqFoRXrJ2e291n7cnRoAR//09q6alM=; b=P9GHjab5LmybWXTRdbi4zH4Txn
 t/dB4Zn35KsSpM8YKoFXdIXQ/BHbkRctYgZ9a598XZXxihZUSbj3A15Pj4p9aYlo37p77gWquPt2Z
 fGfC1irTxEvRYdlxdosmznmAEGgPPXDCrlu6oeJxzZfIaLBmf57nNZyZcoSm2WkwV/zo=;
Received: from fout3-smtp.messagingengine.com ([103.168.172.146])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rx98N-0007Lf-D9 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 17 Apr 2024 17:31:48 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailfout.nyi.internal (Postfix) with ESMTP id A1049138018C;
 Wed, 17 Apr 2024 13:31:36 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Wed, 17 Apr 2024 13:31:36 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1713375096; x=
 1713461496; bh=SYwB9sIOejL6LQqFoRXrJ2e291n7cnRoAR//09q6alM=; b=g
 HIjITaqGmgxzjcSsqZ5eMyEO4d79+zifVs0fL2PAeHvSkVHBfFrB6HBXpvLvtv4I
 FsbmSdwGAgwlQTXVhUfjgsIKGoOMgigxk+oBoDmKT41WgXKhCVE0C5H8IC1/m7l8
 gINOx4wmNcBOecRC76AfOHkO/N31qPWOinFo/udBbXyG1HzRUsHO1nabXFrMqOp7
 a5yEKzZAd9dSALhRPI/rgt3cZixoCVwEc21MySD9Wb4jgjFnL9r1HKXiZx+9zW3W
 kiAuZptu5TrKBYZKW3Cj/OoxWcOKbKG+ZDdfQ4L6tHMoXVYj+y7pCNbLJRYjLUr8
 q79wX5mghooSpGC6rnH0Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1713375096; x=
 1713461496; bh=SYwB9sIOejL6LQqFoRXrJ2e291n7cnRoAR//09q6alM=; b=S
 q6Ra274NNPz4HODcAH1XBmQKuvlVCPdm5yrDbo//JzgGs1XAZO5L0s3KFfeIlCy+
 uOJOzfGvnNSR9T11x+GEe5llQWetx/45U9OWTT37tBJ+Rs6J8r78+6DznzT/cHo/
 efFhy0IUg8nsyN9ZnMT5j2NuD9w6t/uolI3RlZI7tp4KmilIbsm+KZ7OajOSacec
 qM4Q/d8T3CwkLZVe+tsgBCCJztBNO7N3wuFTXu3DxSEVZJI1kOeLF+8Qj1gSSfVZ
 dzOJPHHAl6Th7W/sk0yeSW5MMfWKINNURZp5P/5SRGVr6dhSKkB+oVCuYU3d7QLF
 8JqbVHsjS+kH7yJBMiRiQ==
X-ME-Sender: <xms:eAcgZoA0Y43IYpl7CYzzrBGQaAS3ksV8Nmz8l88YN7FI453jvodJlA>
 <xme:eAcgZqh2XgKWzw47mURMOuSKLSyLIBCL3-20hQwXeN_Y2Ku1LYZ4b4ScCy1h0RBIb
 8nOoA_vJUg3lMshyms>
X-ME-Received: <xmr:eAcgZrnNE-sIHVtmwasQgOlhA_e_0svil4CTLetuTKuHvp-UBaRy1A-boUwpXQDxfCAfO7ihRE3PXDs>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudejkedguddufecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecuogetfedtuddqtdduucdludehmdenucfjughrpe
 fhvfevufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforghrkhcurfgvrghr
 shhonhcuoehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggrqeenucggtf
 frrghtthgvrhhnpeeftddvjeefleffvefhgfejjeehudetteeigeeugfekhffhgeejudeu
 teehgfdvffenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhroh
 hmpehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggr
X-ME-Proxy: <xmx:eAcgZuw5sjvssJ8kM3TiuWV4231Yj5GSz83eSQI6TILWUKTfs4TEEg>
 <xmx:eAcgZtR1wNRuACSXxqzBVmucJS6va9K-FXUlmIlBJQaQeHYpi7Sxqw>
 <xmx:eAcgZpY_JXhL5oCb4xiHOZqI3TWvna1IPN06x_Gdc_PMumteMCsB9w>
 <xmx:eAcgZmRo4sPwx_bZ71cfkGo0s5vtLB6fY5Ge9UfI-J6-q8KnKd-FEQ>
 <xmx:eAcgZiIlQPq608KYQYiBra9DYp7l_jw7CaeplKiWXyAC6J2KUzu-jI6Q>
Feedback-ID: ibe194615:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 17 Apr 2024 13:31:35 -0400 (EDT)
From: Mark Pearson <mpearson-lenovo@squebb.ca>
To: mpearson-lenovo@squebb.ca
Date: Wed, 17 Apr 2024 13:31:08 -0400
Message-ID: <20240417173124.9953-3-mpearson-lenovo@squebb.ca>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240417173124.9953-1-mpearson-lenovo@squebb.ca>
References: <mpearson-lenovo@squebb.ca>
 <20240417173124.9953-1-mpearson-lenovo@squebb.ca>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: New Lenovo platforms are adding the FN+N key to generate
 system
 debug details that support can use for collecting important details on any
 customer cases for Windows. Add the infrastructure so we can [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: squebb.ca]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [103.168.172.146 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1rx98N-0007Lf-D9
Subject: [ibm-acpi-devel] [PATCH v2 3/4] platform/x86: thinkpad_acpi:
 Support for system debug info hotkey
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
 hmh@hmh.eng.br, ilpo.jarvinen@linux.intel.com, peter.hutterer@redhat.com,
 njoshi1@lenovo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

New Lenovo platforms are adding the FN+N key to generate system debug
details that support can use for collecting important details on any
customer cases for Windows.
Add the infrastructure so we can do the same on Linux by generating a
SYS_VENDOR keycode to userspace.

Signed-off-by: Mark Pearson <mpearson-lenovo@squebb.ca>
Signed-off-by: Nitin Joshi <njoshi1@lenovo.com>
---
Changes in v2: 
 - Improved comments on keycodes in init function.
 - Filled in missing gaps

 drivers/platform/x86/thinkpad_acpi.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index 6d04d45e8d45..a2f21e958d39 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -1789,6 +1789,10 @@ enum {	/* hot key scan codes (derived from ACPI DSDT) */
 	TP_ACPI_HOTKEYSCAN_NOTIFICATION_CENTER,
 	TP_ACPI_HOTKEYSCAN_PICKUP_PHONE,
 	TP_ACPI_HOTKEYSCAN_HANGUP_PHONE,
+	TP_ACPI_HOTKEYSCAN_AMT_TOGGLE,
+	TP_ACPI_HOTKEYSCAN_CAMERA_SHUTTER,
+	TP_ACPI_HOTKEYSCAN_DOUBLETAP_TOGGLE,
+	TP_ACPI_HOTKEYSCAN_SYS_DEBUG_INFO,
 	TP_ACPI_HOTKEYSCAN_DOUBLETAP,
 
 	/* Hotkey keymap size */
@@ -3340,6 +3344,10 @@ static int __init hotkey_init(struct ibm_init_struct *iibm)
 		KEY_NOTIFICATION_CENTER,	/* Notification Center */
 		KEY_PICKUP_PHONE,		/* Answer incoming call */
 		KEY_HANGUP_PHONE,		/* Decline incoming call */
+		KEY_UNKNOWN,			/* AMT_TOGGLE handled in driver, 0x31a */
+		KEY_UNKNOWN,			/* Camera Shutter Switch, 0X31b */
+		KEY_UNKNOWN,			/* DOUBLETAP_TOGGLE, 0x31c */
+		KEY_VENDOR,                     /* System debug info, 0x31D */
 		KEY_PROG1,                      /* Trackpoint doubletap */
 		},
 	};
-- 
2.44.0



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
