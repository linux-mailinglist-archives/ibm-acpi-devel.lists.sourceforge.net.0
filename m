Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 020CE7E9DF1
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 13 Nov 2023 14:58:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1r2XSF-00013b-4r;
	Mon, 13 Nov 2023 13:58:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1r2XS9-00013C-GS
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 13 Nov 2023 13:58:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ha0eA38T6ZoNAC1OyeuaR9EpucxVvCf1ZGeaLoyGkTU=; b=aTmMpyL49422cmyqytT/WryKVR
 304Aq7nW7SLtpteOvgixnzDf6cWBmhDEhkxinA6Vc9rCsEKcveqRcGdOq94C+E04qYsXqhuRSFPoK
 SWTLWpUC5eXEMRCdbSIbUVzHvr9Xjw5gavee1VNw9K4rSZrPYvBg4ESejMuuT412VGNg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ha0eA38T6ZoNAC1OyeuaR9EpucxVvCf1ZGeaLoyGkTU=; b=TyNk7/q5t8YUhDM6EACsAdHaFQ
 aGsrYS9nkDbk+U+QK5KwihmpV3G2vwjpwfHKoz6cq8VxgKuo47k+P7NHkJKf/pi6revW1S84Q2SWS
 FtPStAl6MUZgGyiKr3ikM0w/OONcNBQfq7Bo33Main/xgNuVoR99gkXkw1eG21T6l7oc=;
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1r2XS1-004h7X-CL for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 13 Nov 2023 13:58:12 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 203125C017F;
 Mon, 13 Nov 2023 08:57:58 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Mon, 13 Nov 2023 08:57:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm1; t=1699883878; x=
 1699970278; bh=ha0eA38T6ZoNAC1OyeuaR9EpucxVvCf1ZGeaLoyGkTU=; b=O
 zXgJe88B6D+hVxNMZoo3SGTRGECVz9IgMU9rTGb03sBkYdR2boZNPeRpizB3QLV+
 sWjU60AP6WQpLeVYadmC8MjVVGPz8GcsTekqRJsFm5MnrAiQbHKsYgHu8N9kvZwk
 MPCKkY3VuzEXvMnwOio7s5PE4PYCUt2D3KwrG5TInEq5muRE4ybtC64QjXxRkdvT
 EIK1DWORyQeFXZz+ETtAtgSGrArpa/vPsiAyWxzxWRz7i+v+U64cC5/hm+6+7u4K
 hyAdrU/qtR+NdrkLFIAl5VKM2R/YP+xq9QeH7bkWJstVkTSKRaKYdTvwh2HErf7I
 L8J6EGErQpKgs4YmpICuA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1699883878; x=
 1699970278; bh=ha0eA38T6ZoNAC1OyeuaR9EpucxVvCf1ZGeaLoyGkTU=; b=M
 dJr8VDypmZq8eDdYZRg0javeGRZsjFK5YV9D0lqxuqKdWuahcsAMMqlMTvpzYuaH
 WSr9XsRqAYnQFLu/ruCBBSCVdAAxdNW5absBis2j+X1KiOTIYN+SfGe5vd8NtkKz
 KYEYxrZozZzxUcmOocMsunGbJt/AvaO7Bi0FCF6xUHThY7nJVIswrTSM+B9MSLQQ
 6fg1JvQGTOtIVqDtkIPeMFEt2GlQnDMzI1TymQenkXi8dC9WwxtpZKZCm+SsDKd8
 qTW+yUEtODWMgNUBejkkQgvRbH8L4lwprfNMvylBPpADOvzEvoaaph6Tur5XdF++
 DS3sYm5VpMN16lVlDNcIA==
X-ME-Sender: <xms:ZStSZcLebaf3OgIP9Z2_EJT0a9M37LZGvz8cw8hiLLHYHiU4PUiyMw>
 <xme:ZStSZcJAuN7OQh75NDdcQCWJBmkXai3Pb1I_LRnreZDMyywpLsXgF97Sj2U4gm1dp
 k7zP_xAwHPrdElVgOg>
X-ME-Received: <xmr:ZStSZcs22kT9hiHmsEuAs-hJtvEX-AjIvQ3sjQ3fKiKdvZ2Pj-JjT9rVlgOS2HMWzNEW4ogpxMg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudeftddgheeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucgoteeftdduqddtudculdduhedmnecujfgurhephf
 fvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrrhhkucfrvggrrhhs
 ohhnuceomhhpvggrrhhsohhnqdhlvghnohhvohesshhquhgvsggsrdgtrgeqnecuggftrf
 grthhtvghrnhepfedtvdejfeelffevhffgjeejheduteetieeguefgkefhhfegjeduueet
 hefgvdffnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
 epmhhpvggrrhhsohhnqdhlvghnohhvohesshhquhgvsggsrdgtrg
X-ME-Proxy: <xmx:ZStSZZYiKzDjqqeI1BfXJgfAW1EaZlOBzrAKS0GO_8mVuPxUTs1UOA>
 <xmx:ZStSZTZC_HV5beWTla6eytTFR4a8qzbsDn8ngOfgcrCJBSOM27S64g>
 <xmx:ZStSZVBRkz6m1O5JjMs3oZfhg8zJPAipwNdk3JTdXBBu6KuZ4AWN-Q>
 <xmx:ZitSZezvwp7zXak-YU5q3NDzDn01oY_qEFdCMsEjtpM3ow4jGLbBtw>
Feedback-ID: ibe194615:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 13 Nov 2023 08:57:57 -0500 (EST)
From: Mark Pearson <mpearson-lenovo@squebb.ca>
To: mpearson-lenovo@squebb.ca
Date: Mon, 13 Nov 2023 08:57:29 -0500
Message-ID: <20231113135741.4787-1-mpearson-lenovo@squebb.ca>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <mpearson-lenovo@squebb.ca>
References: <mpearson-lenovo@squebb.ca>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Some new Thinkpads have a new improved performance mode
 available.
 Add support to make this mode usable. To avoid having to create a new profile, 
 just use the improved performance mode in place of the existing performance
 mode, when available. 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.28 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1r2XS1-004h7X-CL
Subject: [ibm-acpi-devel] [PATCH v2] platform/x86: Add support for improved
 performance mode
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
 platform-driver-x86@vger.kernel.org, hdegoede@redhat.com,
 mario.limonciello@amd.com, ilpo.jarvinen@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Some new Thinkpads have a new improved performance mode available.
Add support to make this mode usable.

To avoid having to create a new profile, just use the improved performance
mode in place of the existing performance mode, when available.

Tested on P14s AMD G4 AMD.

Signed-off-by: Mark Pearson <mpearson-lenovo@squebb.ca>
---
Changes in v2: updated implementation for DYTC_UP_SUPPORT define

 drivers/platform/x86/thinkpad_acpi.c | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index ad460417f901..ed8860caa9c1 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -10136,6 +10136,7 @@ static struct ibm_struct proxsensor_driver_data = {
 
 #define DYTC_CMD_SET          1 /* To enable/disable IC function mode */
 #define DYTC_CMD_MMC_GET      8 /* To get current MMC function and mode */
+#define DYTC_CMD_UP_CAP     0xA /* To get Ultra-performance capability */
 #define DYTC_CMD_RESET    0x1ff /* To reset back to default */
 
 #define DYTC_CMD_FUNC_CAP     3 /* To get DYTC capabilities */
@@ -10152,6 +10153,7 @@ static struct ibm_struct proxsensor_driver_data = {
 
 #define DYTC_FUNCTION_STD     0  /* Function = 0, standard mode */
 #define DYTC_FUNCTION_CQL     1  /* Function = 1, lap mode */
+#define DYTC_FUNCTION_TMS     9  /* Function = 9, TMS mode */
 #define DYTC_FUNCTION_MMC     11 /* Function = 11, MMC mode */
 #define DYTC_FUNCTION_PSC     13 /* Function = 13, PSC mode */
 #define DYTC_FUNCTION_AMT     15 /* Function = 15, AMT mode */
@@ -10163,11 +10165,14 @@ static struct ibm_struct proxsensor_driver_data = {
 #define DYTC_MODE_MMC_LOWPOWER 3  /* Low power mode */
 #define DYTC_MODE_MMC_BALANCE  0xF  /* Default mode aka balanced */
 #define DYTC_MODE_MMC_DEFAULT  0  /* Default mode from MMC_GET, aka balanced */
+#define DYTC_NOMODE            0xF  /* When Function does not have a mode */
 
 #define DYTC_MODE_PSC_LOWPOWER 3  /* Low power mode */
 #define DYTC_MODE_PSC_BALANCE  5  /* Default mode aka balanced */
 #define DYTC_MODE_PSC_PERFORM  7  /* High power mode aka performance */
 
+#define DYTC_UP_SUPPORT        8  /* Ultra-performance (TMS) mode support */
+
 #define DYTC_ERR_MASK       0xF  /* Bits 0-3 in cmd result are the error result */
 #define DYTC_ERR_SUCCESS      1  /* CMD completed successful */
 
@@ -10185,6 +10190,7 @@ static enum platform_profile_option dytc_current_profile;
 static atomic_t dytc_ignore_event = ATOMIC_INIT(0);
 static DEFINE_MUTEX(dytc_mutex);
 static int dytc_capabilities;
+static bool dytc_ultraperf_cap; /* ultra performance capable */
 static bool dytc_mmc_get_available;
 static int profile_force;
 
@@ -10355,6 +10361,17 @@ static int dytc_profile_set(struct platform_profile_handler *pprof,
 	if (err)
 		goto unlock;
 
+	/* Set TMS mode appropriately (enable for performance), if available */
+	if (dytc_ultraperf_cap) {
+		int cmd;
+
+		cmd = DYTC_SET_COMMAND(DYTC_FUNCTION_TMS, DYTC_NOMODE,
+				       profile == PLATFORM_PROFILE_PERFORMANCE);
+		err = dytc_command(cmd, &output);
+		if (err)
+			return err;
+	}
+
 	if (dytc_capabilities & BIT(DYTC_FC_MMC)) {
 		if (profile == PLATFORM_PROFILE_BALANCED) {
 			/*
@@ -10429,6 +10446,7 @@ static struct platform_profile_handler dytc_profile = {
 static int tpacpi_dytc_profile_init(struct ibm_init_struct *iibm)
 {
 	int err, output;
+	int cmd;
 
 	/* Setup supported modes */
 	set_bit(PLATFORM_PROFILE_LOW_POWER, dytc_profile.choices);
@@ -10484,6 +10502,16 @@ static int tpacpi_dytc_profile_init(struct ibm_init_struct *iibm)
 		dbg_printk(TPACPI_DBG_INIT, "No DYTC support available\n");
 		return -ENODEV;
 	}
+	err = dytc_command(DYTC_CMD_UP_CAP, &output);
+	dytc_ultraperf_cap = output & DYTC_UP_SUPPORT ? true : false;
+	if (dytc_ultraperf_cap) {
+		pr_debug("TMS is supported\n");
+		/* Disable TMS by default - only use with performance mode */
+		cmd = DYTC_SET_COMMAND(DYTC_FUNCTION_TMS, DYTC_NOMODE, 0);
+		err = dytc_command(cmd, &output);
+		if (err)
+			return err;
+	}
 
 	dbg_printk(TPACPI_DBG_INIT,
 			"DYTC version %d: thermal mode available\n", dytc_version);
-- 
2.41.0



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
