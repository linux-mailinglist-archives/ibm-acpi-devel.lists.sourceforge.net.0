Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E45D7EA18C
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 13 Nov 2023 17:55:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1r2aDS-0004vb-Jn;
	Mon, 13 Nov 2023 16:55:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1r2aDR-0004vU-3D
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 13 Nov 2023 16:55:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4nE4dUxYqdoe8QHwz0M06hubKIFptkAxqfhEejltdOs=; b=G4Nmj6bwTi9HFS+qUjUBkswkdL
 V6QXUtg+JvBavhPuE/Z7Ffl8GWH1pQdVrR0YLP1Jlsh/lwcjXTwcH24TW7fj6UfoSUK5wzyofHn8R
 VdGXEDTkEqLxiIsyZLLOYGjyxcfsU050dF7/ytS37GF5DbJ5glPcHwE8s1AX6WLyp1Rg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4nE4dUxYqdoe8QHwz0M06hubKIFptkAxqfhEejltdOs=; b=Vb97Sq2+JhzGsHXXRGDJbCIhK2
 fnZNY50ywUSow4JONzuJgXog8lYtFRHn6MqZCBYyDGlyLmm9zJA550UMDiauDlOJyFLwbjSG8WZ/V
 W2Tj8cVVBRosKTApXr7Fnej0CXQ9XYSnh+UBkjpbbh1EP4KYi5nfCt71vKFvbUtl73c8=;
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1r2aDN-0006jl-Tx for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 13 Nov 2023 16:55:11 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.nyi.internal (Postfix) with ESMTP id 72BF35C020C;
 Mon, 13 Nov 2023 11:55:02 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Mon, 13 Nov 2023 11:55:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm1; t=1699894502; x=
 1699980902; bh=4nE4dUxYqdoe8QHwz0M06hubKIFptkAxqfhEejltdOs=; b=e
 pNEY1q9ENltwLtFJDHhFkZb4EYkpnBlfK+dfBc0Ym9N9kj+4mBaTDu9uoZbnIp5+
 XEZwtYKwZC631ioYurMjRPmePcQCY+w8Qu+S5syYcL/XYbUoDbjUjKgwLSiQid4b
 +GbgOEvittuByugR1UOHwxAsNtKhhPt9Pt0kNPPaPYD+q/qHoGCpPoUDNtMvoiXo
 Fnye7a4wbSu9tN7lP1r5T7FAclyKEtKXqCUlDTaQE5PpQkSyLgQeWMJqUy971x6G
 IMA95RBy+W8le87b1/TcObhxW7vo7rWM6uyBbEcBae9Dl3Qz402lTGUR23HDJH53
 zFmFjXercrZA7HEKbyMlQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1699894502; x=
 1699980902; bh=4nE4dUxYqdoe8QHwz0M06hubKIFptkAxqfhEejltdOs=; b=B
 VXWqpGHbNJoTofNZEb43l23Hr6kXGkONbMXPM2Zez1d0rQ1lX3CSk5PKv60Xga13
 yvmD8RTSnwhcofSIiexxPh7GoaQmSwlEQMz6yNuBepPHI9bwbzpRvsSx58OwRCLd
 x9o7XzbUlQw6DJqYpGn0xoTA9tUdatnrRpn1qd2OUrPpj99tRHdndYYRRt4aOsdS
 dh+9M/BuX18Nd1hezPhm2RZ93/lv4zx7lDqEY4Ue0aEBKgOy1E7LfbDBWq/JIu+x
 sHA6F2wEQN2zFrvND6bnKOdANi5cCDaULcAsUVJqpuyBQp+x4m7BRmIAFV8lgDwe
 h4KPQpagjj+TQX9qomOgw==
X-ME-Sender: <xms:5lRSZT32p3ftJeLgsAe_U8Bh0loKOzJ_Ukha1tXgGDRoTqOt4-YQUw>
 <xme:5lRSZSHC8AdWL1tVIaBLzC_zdOojp_497VvTPZsPcOIjnBIeSPsb-S8Jq-hqccY-L
 DsvSijDeybIo5DLNRc>
X-ME-Received: <xmr:5lRSZT6muDtKDafYze-K2ZYifb-hTDqZ75i6GzM71Xxk_Ov1JBLn-gjsKOROGUj4fb4NoN-fbtfwPmk2>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudeftddgledvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucgoteeftdduqddtudculdduhedmnecujfgurhephf
 fvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrrhhkucfrvggrrhhs
 ohhnuceomhhpvggrrhhsohhnqdhlvghnohhvohesshhquhgvsggsrdgtrgeqnecuggftrf
 grthhtvghrnhepfedtvdejfeelffevhffgjeejheduteetieeguefgkefhhfegjeduueet
 hefgvdffnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
 epmhhpvggrrhhsohhnqdhlvghnohhvohesshhquhgvsggsrdgtrg
X-ME-Proxy: <xmx:5lRSZY3oBZ3FaRuboYKU-1iRES4qrqBU9RUq0rPot7hNM9md60owdA>
 <xmx:5lRSZWF2sg6UHHLzeOeSR-fiHGD9pYvI3dJ7o0Uyq8_RgQQAT0C74Q>
 <xmx:5lRSZZ8pqlhuRZwfqcjrqmRn8_rP7BmR0m3BruVuM8bqmBlyj1fJgA>
 <xmx:5lRSZTOEg4vU5UHMzE8JfHnYYh_a4ZXsdZlO-CULJQe0f8VCPaUFeA>
Feedback-ID: ibe194615:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 13 Nov 2023 11:55:01 -0500 (EST)
From: Mark Pearson <mpearson-lenovo@squebb.ca>
To: mpearson-lenovo@squebb.ca
Date: Mon, 13 Nov 2023 11:54:33 -0500
Message-ID: <20231113165453.6335-1-mpearson-lenovo@squebb.ca>
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1r2aDN-0006jl-Tx
Subject: [ibm-acpi-devel] [PATCH v3] platform/x86: Add support for improved
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
Changes in v3: 
 - Add in missing BIT for define, somehow lost in previous commit
 - Cosmetic clean-ups

 drivers/platform/x86/thinkpad_acpi.c | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index ad460417f901..3a9d2cc71b6a 100644
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
 
+#define DYTC_UP_SUPPORT    BIT(8)  /* Ultra-performance (TMS) mode support */
+
 #define DYTC_ERR_MASK       0xF  /* Bits 0-3 in cmd result are the error result */
 #define DYTC_ERR_SUCCESS      1  /* CMD completed successful */
 
@@ -10185,6 +10190,7 @@ static enum platform_profile_option dytc_current_profile;
 static atomic_t dytc_ignore_event = ATOMIC_INIT(0);
 static DEFINE_MUTEX(dytc_mutex);
 static int dytc_capabilities;
+static bool dytc_ultraperf_cap;
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
+	dytc_ultraperf_cap = output & DYTC_UP_SUPPORT;
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
