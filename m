Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CC49BAAEB4F
	for <lists+ibm-acpi-devel@lfdr.de>; Wed,  7 May 2025 21:06:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jHO9lX2r7fdxQBoxiKTdYZEctkSaIDl/SXM7dcdZdAY=; b=NPf/KleU2y4poq8dowxWiWRpMl
	rrQOS6j8aRDwDSnomUo/tZtCdGnVgLoH58kgcztV2CoBY7XlgDz3RE9/DiyXssGqjPQ6T+8nbQ155
	8OH7i3xIEonSaUO66UcKbfrTv/2IYHgDZmDs23DDFKevSK6zog11A+aR9OyAUoXNNKNY=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uCk5I-00049E-Bl;
	Wed, 07 May 2025 19:05:36 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1uCk5G-000494-BC
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 07 May 2025 19:05:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=miF3+daArrTuj3CSFXguEC8BCvV5j/gzZMv3X2O2gSo=; b=c6VKbdvD4U+8dJYZDQ1i8e042f
 m906Tn28vaAwU3u42YLpT7pf+eqzSdRIc6cF4MqA/ajkRNnIjYlWGgp4/29uSFO5i4Z3gzbqPlu6e
 pRK7X81YwNuVqfQckWMJ8NjrDRu64FMw1mIydypmg08gdcVVbxyS4FADbfGiDV/vOdH8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=miF3+daArrTuj3CSFXguEC8BCvV5j/gzZMv3X2O2gSo=; b=O+p+9t3SUzJHWunMSS14npRQSu
 n8jVpel34MfitXJOad+r1a96nJGOIJYfgy4CAMZLV95kO5jKDatTGc6F2Mfs/Y44zdptiIMZP/jl3
 tTPayLOTqMqP9TMUVVoj/aVPYyDJxavDv2OrcyjS/MJafyDZ7LWK4uM4fscaadh9Ax3w=;
Received: from fhigh-b2-smtp.messagingengine.com ([202.12.124.153])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uCk4z-00022y-Ee for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 07 May 2025 19:05:34 +0000
Received: from phl-compute-01.internal (phl-compute-01.phl.internal
 [10.202.2.41])
 by mailfhigh.stl.internal (Postfix) with ESMTP id 6F5FC2540145;
 Wed,  7 May 2025 15:05:11 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-01.internal (MEProxy); Wed, 07 May 2025 15:05:11 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1746644711; x=
 1746731111; bh=miF3+daArrTuj3CSFXguEC8BCvV5j/gzZMv3X2O2gSo=; b=r
 EoZTyaAG5g9g0N8QP4X7Lxj4sMczAEsl5LK5mSGEkqJXj++lGB+70eRJlAMR4AJZ
 Anb80apWUypeVz08rzEZBdi7siyjHIaD7KIuu8NELh7X8FBQGLe9TZGleXYDC4e2
 H1npFsVGzT4/q+lkQ3VcxfvFfxM4nAa5TijjaqpqnSPrp9OiK5oQOyv+ZvrQ9h1X
 qbQuiaaqBySCF7EQ/GosSnah5oFQHAVtw+sp7KP616Zw5rlHojgKIFYjK7qY92Qi
 Xmo7PLOjd/wFy2upZ4/VRsMAMV3LbT6KweiUOOWeFQBh3/pK88MNuEG+Ma3tXnqj
 wDMoSw4U61rtpkSF9z34g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm3; t=1746644711; x=1746731111; bh=m
 iF3+daArrTuj3CSFXguEC8BCvV5j/gzZMv3X2O2gSo=; b=NBfcRxKVCAZ4IRCq0
 BP3uqt6XF1mTBasavpK6waX2NE2QKQ0WUBJ6e6YSZW7I1bt35BpZAHFOHfNJfapY
 KBs4HvqrAxR9t9kzPXUOslJ6yTmIFBrq+ZHYxaSvr8wE4pzsCptefXkpRyGc/OQF
 E3w2kgXoIIsga774pq+xvt626dj7OiVyunkxWQrYfv1uBftOLOtD7Jf2Gw4A5PZD
 8YURdCjlY76VQFvLG7ILt6Wbx4Zps4+CxZLvjKAzh97AJ3NypUnnOlKlDrCrziW/
 ehYZtrS+J0TTWiL9+iuEJhSczsEo9Mu3shcBHuLVW7E0TWPFIGdxxCH8njSmXMZc
 iCfKQ==
X-ME-Sender: <xms:564baO9cXRsKgWL88ATIBMpz63y5_0FiK5u80HH50XskxQQAZQ7Rjw>
 <xme:564baOtnib5nZsBkdK_d3c3-i-UqEQkpWTAzUz87jydQGZB5QCjCV0j_q7YAE_-S5
 PSVEZ7bSDFW0sKie4k>
X-ME-Received: <xmr:564baEC54iEAu5suGkMYfiKym08J9JzIoLe9hWPPJMu-_CgddQmr1ppTqhyiESsl27F8m08g53awjjxZYaJm8bwm_fxTJyXGCZAX54E6qPOjrdgGQQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvkeejieehucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggv
 pdfurfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucgoteeftdduqddtud
 culdduhedmnecujfgurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhho
 mhepofgrrhhkucfrvggrrhhsohhnuceomhhpvggrrhhsohhnqdhlvghnohhvohesshhquh
 gvsggsrdgtrgeqnecuggftrfgrthhtvghrnhepfedtvdejfeelffevhffgjeejheduteet
 ieeguefgkefhhfegjeduueethefgvdffnecuvehluhhsthgvrhfuihiivgeptdenucfrrg
 hrrghmpehmrghilhhfrhhomhepmhhpvggrrhhsohhnqdhlvghnohhvohesshhquhgvsggs
 rdgtrgdpnhgspghrtghpthhtohepledpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtoh
 epmhhpvggrrhhsohhnqdhlvghnohhvohesshhquhgvsggsrdgtrgdprhgtphhtthhopehh
 uggvghhovgguvgesrhgvughhrghtrdgtohhmpdhrtghpthhtohepihhlphhordhjrghrvh
 hinhgvnheslhhinhhugidrihhnthgvlhdrtghomhdprhgtphhtthhopehikhgvphgrnhhh
 tgesghhmrghilhdrtghomhdprhgtphhtthhopeifpggrrhhmihhnsehgmhigrdguvgdprh
 gtphhtthhopegrnhgurhhihidrshhhvghvtghhvghnkhhosehlihhnuhigrdhinhhtvghl
 rdgtohhmpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvg
 hlrdhorhhgpdhrtghpthhtohepphhlrghtfhhorhhmqdgurhhivhgvrhdqgiekieesvhhg
 vghrrdhkvghrnhgvlhdrohhrghdprhgtphhtthhopehisghmqdgrtghpihdquggvvhgvlh
 eslhhishhtshdrshhouhhrtggvfhhorhhgvgdrnhgvth
X-ME-Proxy: <xmx:564baGfM26v3VGdV5DtHMRY_lX2VN2TICP5_m3KWjHlnk5ojYnERhQ>
 <xmx:564baDNWcqMmCUPnmZG1JSGM1HJGGEVhKhaLJDnLrYjQaeRDjIiPxA>
 <xmx:564baAkiC4O8907VSsvQuYRfKnN_Hu6WzPECR6rFZcARipQ03p0VOg>
 <xmx:564baFslO23bv4OBr7TYARf-8HPtVno7aIX09wLBnVGZo4DfjAsaow>
 <xmx:564baDidLfvG1hNa2nTaix-moD3KMn_pP9gYnF6H8m_70HWaKvv3GiQ8>
Feedback-ID: ibe194615:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 7 May 2025 15:05:10 -0400 (EDT)
From: Mark Pearson <mpearson-lenovo@squebb.ca>
To: mpearson-lenovo@squebb.ca
Date: Wed,  7 May 2025 15:04:35 -0400
Message-ID: <20250507190456.3004367-2-mpearson-lenovo@squebb.ca>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250507190456.3004367-1-mpearson-lenovo@squebb.ca>
References: <mpearson-lenovo@squebb.ca>
 <20250507190456.3004367-1-mpearson-lenovo@squebb.ca>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software, running on the system "6901ab67b84d", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Add API to be able to get the thinkpad_acpi various handles.
 Will use this to start pulling some of the thinkpad_acpi functionality into
 separate modules in the future. Signed-off-by: Mark Pearson
 <mpearson-lenovo@squebb.ca>
 --- drivers/platform/x86/lenovo/thinkpad_acpi.c | 18 ++++++++++++++++++
 include/linux/thinkpad_acpi.h
 | 17 +++++++++++++++++ 2 files changed, 35 [...] 
 Content analysis details:   (-0.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/, low
 trust [202.12.124.153 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1uCk4z-00022y-Ee
Subject: [ibm-acpi-devel] [PATCH 2/2] platform/x86: export thinkpad_acpi
 handles
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
Cc: W_Armin@gmx.de, ibm-acpi-devel@lists.sourceforge.net, ikepanhc@gmail.com,
 linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 hdegoede@redhat.com, ilpo.jarvinen@linux.intel.com,
 andriy.shevchenko@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Add API to be able to get the thinkpad_acpi various handles.

Will use this to start pulling some of the thinkpad_acpi functionality
into separate modules in the future.

Signed-off-by: Mark Pearson <mpearson-lenovo@squebb.ca>
---
 drivers/platform/x86/lenovo/thinkpad_acpi.c | 18 ++++++++++++++++++
 include/linux/thinkpad_acpi.h               | 17 +++++++++++++++++
 2 files changed, 35 insertions(+)
 create mode 100644 include/linux/thinkpad_acpi.h

diff --git a/drivers/platform/x86/lenovo/thinkpad_acpi.c b/drivers/platform/x86/lenovo/thinkpad_acpi.c
index 7dd4abf47f61..0eb33b4c99cf 100644
--- a/drivers/platform/x86/lenovo/thinkpad_acpi.c
+++ b/drivers/platform/x86/lenovo/thinkpad_acpi.c
@@ -67,6 +67,7 @@
 #include <linux/string.h>
 #include <linux/string_helpers.h>
 #include <linux/sysfs.h>
+#include <linux/thinkpad_acpi.h>
 #include <linux/types.h>
 #include <linux/uaccess.h>
 #include <linux/units.h>
@@ -606,6 +607,23 @@ TPACPI_HANDLE(hkey, ec, "\\_SB.HKEY",	/* 600e/x, 770e, 770x */
  * ACPI helpers
  */
 
+int tp_acpi_get_handle(enum tp_acpi_handle_id handle_id, acpi_handle *handle)
+{
+	switch (handle_id) {
+	case TP_ROOT_HANDLE:
+		*handle = root_handle;
+		return 0;
+	case TP_EC_HANDLE:
+		*handle = ec_handle;
+		return 0;
+	case TP_HKEY_HANDLE:
+		*handle = hkey_handle;
+		return 0;
+	}
+	return -ENODEV;
+}
+EXPORT_SYMBOL_GPL(tp_acpi_get_handle);
+
 static int acpi_evalf(acpi_handle handle,
 		      int *res, char *method, char *fmt, ...)
 {
diff --git a/include/linux/thinkpad_acpi.h b/include/linux/thinkpad_acpi.h
new file mode 100644
index 000000000000..eb5273464658
--- /dev/null
+++ b/include/linux/thinkpad_acpi.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Thinkpad ACPI driver API
+ */
+
+#ifndef _TP_ACPI_H_
+#define _TP_ACPI_H_
+
+enum tp_acpi_handle_id {
+	TP_ROOT_HANDLE,
+	TP_EC_HANDLE,
+	TP_HKEY_HANDLE,
+};
+
+int tp_acpi_get_handle(enum tp_acpi_handle_id handle_id, acpi_handle *handle);
+
+#endif /* _TP_ACPI_H */
-- 
2.43.0



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
