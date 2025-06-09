Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA57AD1DA2
	for <lists+ibm-acpi-devel@lfdr.de>; Mon,  9 Jun 2025 14:29:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s1p0uK/8Fs5nfRFYNxgr1vaClI3/fMfNPEWvUPOuN0c=; b=PGI4TrLGWwHvYSJrVfKgh9L7a/
	loAxJtiNmMGR7A/zHm3X47eoZPPr+8v2OBfazGrZxVbwmqTzlHItS2U/5Xs3dK8Tmofbi8lOaQLXM
	YmzvVShn+prFgIwKsuGI6jc99TgkuopAIcQFjlWmV6qKwZw5KC5snkTZF6o+OLB0R6Bk=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uObbV-0007qe-S5;
	Mon, 09 Jun 2025 12:27:53 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1uObbU-0007qX-Ek
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 09 Jun 2025 12:27:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hMq8DTIOhpbuRKjy+CNcjAYhxjMFzlhGiYklMnqStJY=; b=iGE18J+xA/zlFA2jgwea7eYyQM
 H7YrAanDmpO8MXtSaHzjqblsTF4dpJGyG8ENK5YBfmX2Sn65tddmhTbTW4pUuK93/pMsGcIURN/uE
 3QQpcbXcvvxzLme65qIpGHQsLQod5htTjD/8nFycuqlQSfGFm8ZDa+c853vTEL42B65A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hMq8DTIOhpbuRKjy+CNcjAYhxjMFzlhGiYklMnqStJY=; b=NVG0iBtLztlYFz4unYG0w7pT/9
 cMbFqhJPp0si1l7/r1i0At2daqJ3P2vQ8JuCezJeoP/MvwFAFi/UznCEB3z1IgSDhKGt6q0cnLlnr
 tkIVvtTGs9R8jKkdGjvBFRLPQvux+7mYT/t9tZayL/WSPRLxMZo9BL8umjs0r9cxeW3w=;
Received: from fhigh-a7-smtp.messagingengine.com ([103.168.172.158])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uObbT-0000lV-Oj for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 09 Jun 2025 12:27:52 +0000
Received: from phl-compute-04.internal (phl-compute-04.phl.internal
 [10.202.2.44])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 1A9FC1140269;
 Mon,  9 Jun 2025 08:27:41 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-04.internal (MEProxy); Mon, 09 Jun 2025 08:27:41 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1749472061; x=
 1749558461; bh=hMq8DTIOhpbuRKjy+CNcjAYhxjMFzlhGiYklMnqStJY=; b=O
 0s9GeJSyre4tdwKfq0EMA5veJGN7cKbkEQ2DAXR0y4ZHAezW0dj/WRXItvADtyl3
 XLD0CDUlbmVSFzvjqK1Dle0YWv95ZJ6sZ2aZHKcaT/ADrGSFLTaUP6q9UltTn0VJ
 UEqZ5LKrxB76TTmyvObA+f2Ci/D53B3U1VkdN2vAJX2In+xJtXSM6y3bZIXFEAHO
 mSRgCd/8BECzkXqSu0AVq7sLv6gefwjkHsrOxAYKuux406blNPIHZuFQ8tNBG1OF
 nfiUiSs7jGpotCo1b2OP+CC9wFoxeBSRQ2Z1P/2jrf79eabf1k9HRKZ1nP57pdHM
 diuFM24IWbTerMFNkyTXg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1749472061; x=1749558461; bh=h
 Mq8DTIOhpbuRKjy+CNcjAYhxjMFzlhGiYklMnqStJY=; b=b+NZrgsN2f4wM4/6M
 SwMS8Soty3Q5h2Q1s4EIy9FaKt2umG9KFmdv7d6cajV7nVnab3fBCpFZR7rycPiu
 hguGyyhDOb6eGCKX4Dnh15BNkufskcZC+Mj3UmwEHiGIo0dcqpTsaSfWBi9evPPI
 dxZzV6kmUJOfluVtnsMmjPVCZmhydDcx+HQBu5GAHXNQJjJIJaBv+F5LUqhLrPQr
 5aIVO/E9FAK0d3W9aN8srsBqZ5JPjPUZBr1GQQrdUo6wc95MMk0TPQXzjL2Nfa5V
 pA/FrgDUCPQG56qY/Ha44gV6P4TXPhYy221plty4UdvQsJC7fW9o7QyMqr8Y8K/Z
 2f5tQ==
X-ME-Sender: <xms:PNNGaJ2XwuOUhFomE0DFyEyS6DsC_Gp4kAkksnf4-K-KmGsvUw5TKA>
 <xme:PNNGaAG4wwDNFVT-2WJiFlk_vQrro3s0Ru9YTl3poM6zMT6PU16CIQm7Zof5xJR35
 vryn_gaUNaKFc8IqEI>
X-ME-Received: <xmr:PNNGaJ6W8qBRPW92d4_2iMBJLPzErKDLDUxf4iH90CrDhILJd1VfimAExo4cgKUqAJ1ybxS3TK6FaRiYtio>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddugdelvdelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucgoteeftdduqddtudculd
 duhedmnecujfgurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomhep
 ofgrrhhkucfrvggrrhhsohhnuceomhhpvggrrhhsohhnqdhlvghnohhvohesshhquhgvsg
 gsrdgtrgeqnecuggftrfgrthhtvghrnhepvedtlefggefgjeettddvgfekhfeugfeutdek
 feefudeuuddvieeutdeljedvhfdvnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenuc
 evlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmphgvrghr
 shhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggrpdhnsggprhgtphhtthhopedufedpmh
 houggvpehsmhhtphhouhhtpdhrtghpthhtohepmhhpvggrrhhsohhnqdhlvghnohhvohes
 shhquhgvsggsrdgtrgdprhgtphhtthhopehilhhpohdrjhgrrhhvihhnvghnsehlihhnuh
 igrdhinhhtvghlrdgtohhmpdhrtghpthhtohephhguvghgohgvuggvsehrvgguhhgrthdr
 tghomhdprhgtphhtthhopegtohhrsggvtheslhifnhdrnhgvthdprhgtphhtthhopehikh
 gvphgrnhhhtgesghhmrghilhdrtghomhdprhgtphhtthhopehhmhhhsehhmhhhrdgvnhhg
 rdgsrhdprhgtphhtthhopeifpggrrhhmihhnsehgmhigrdguvgdprhgtphhtthhopegrnh
 gurhhihidrshhhvghvtghhvghnkhhosehlihhnuhigrdhinhhtvghlrdgtohhmpdhrtghp
 thhtoheplhhinhhugidqughotgesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:PNNGaG2BJ533ri87KMkBYUAknAVQvxww-nT8PyxNtNTC4xjdGANuMw>
 <xmx:PNNGaMHN2XrDuWPJKYXoU6X7QpmeXjth0qS1rvG0FFbqSvAESwlD9w>
 <xmx:PNNGaH-daoqYQ7VSqb_4Ul3OHpfyfa_nHIpsRMKs4Hqgqt_N0DCXDQ>
 <xmx:PNNGaJm6ln6o3kPGFGX0l-nDK7z_35GlGKT7YY2bItEVgpSoqs2Edg>
 <xmx:PdNGaLdP4-YULsIakq-5GEiWNTUMEiptZAh8TKRFWNNEWHhahs1qFA_4>
Feedback-ID: ibe194615:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 9 Jun 2025 08:27:40 -0400 (EDT)
From: Mark Pearson <mpearson-lenovo@squebb.ca>
To: mpearson-lenovo@squebb.ca
Date: Mon,  9 Jun 2025 08:27:25 -0400
Message-ID: <20250609122736.3373471-2-mpearson-lenovo@squebb.ca>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250609122736.3373471-1-mpearson-lenovo@squebb.ca>
References: <mpearson-lenovo@squebb.ca>
 <20250609122736.3373471-1-mpearson-lenovo@squebb.ca>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Fix issues reported by kernel test robot. - Require DMI for
 think-lmi. - Check return from getting serial string Reported-by: kernel
 test robot <lkp@intel.com> Closes:
 https://lore.kernel.org/oe-kbuild-all/202506062319.F0IpDxF6-lkp@intel.com/
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
X-Headers-End: 1uObbT-0000lV-Oj
Subject: [ibm-acpi-devel] [PATCH v3 2/2] platform/x86: thinklmi: improved
 DMI handling
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
Cc: W_Armin@gmx.de, kernel test robot <lkp@intel.com>, corbet@lwn.net,
 ikepanhc@gmail.com, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, hdegoede@redhat.com, hmh@hmh.eng.br,
 ilpo.jarvinen@linux.intel.com, andriy.shevchenko@linux.intel.com,
 ibm-acpi-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Fix issues reported by kernel test robot.
 - Require DMI for think-lmi.
 - Check return from getting serial string

Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202506062319.F0IpDxF6-lkp@intel.com/

Signed-off-by: Mark Pearson <mpearson-lenovo@squebb.ca>
---
 - New patch added to series.

 drivers/platform/x86/lenovo/Kconfig     | 1 +
 drivers/platform/x86/lenovo/think-lmi.c | 8 +++++---
 2 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/platform/x86/lenovo/Kconfig b/drivers/platform/x86/lenovo/Kconfig
index a4b565283768..207dd7f88ed0 100644
--- a/drivers/platform/x86/lenovo/Kconfig
+++ b/drivers/platform/x86/lenovo/Kconfig
@@ -197,6 +197,7 @@ config THINKPAD_ACPI_HOTKEY_POLL
 config THINKPAD_LMI
 	tristate "Lenovo WMI-based systems management driver"
 	depends on ACPI_WMI
+	depends on DMI
 	select FW_ATTR_CLASS
 	help
 	  This driver allows changing BIOS settings on Lenovo machines whose
diff --git a/drivers/platform/x86/lenovo/think-lmi.c b/drivers/platform/x86/lenovo/think-lmi.c
index 143d9fdedb65..8f70c60f791f 100644
--- a/drivers/platform/x86/lenovo/think-lmi.c
+++ b/drivers/platform/x86/lenovo/think-lmi.c
@@ -772,6 +772,7 @@ static ssize_t certificate_store(struct kobject *kobj,
 	struct tlmi_pwd_setting *setting = to_tlmi_pwd_setting(kobj);
 	enum cert_install_mode install_mode = TLMI_CERT_INSTALL;
 	char *auth_str, *new_cert;
+	const char *serial;
 	char *signature;
 	char *guid;
 	int ret;
@@ -789,9 +790,10 @@ static ssize_t certificate_store(struct kobject *kobj,
 			return -EACCES;
 
 		/* Format: 'serial#, signature' */
-		auth_str = cert_command(setting,
-					dmi_get_system_info(DMI_PRODUCT_SERIAL),
-					setting->signature);
+		serial = dmi_get_system_info(DMI_PRODUCT_SERIAL);
+		if (!serial)
+			return -EINVAL;
+		auth_str = cert_command(setting, serial, setting->signature);
 		if (!auth_str)
 			return -ENOMEM;
 
-- 
2.43.0



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
