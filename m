Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DB41AAD42E6
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 10 Jun 2025 21:29:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=o8dfxz6OprrRd9GD7AZyEpwNdcgZWP663yQHtDCgmVU=; b=jS3WzC7ek8BiBXj6m+EGGjQB9C
	w1bdsZwlIuv56sURuHBI+luVd8Xowz1iKZeom9XgbMff2tMaGnQRD2elVLED2NhN2NwTmH4xgMhcZ
	NRcAohWe7pVlb3R9vbTtGEmyJdugtvXig5W1T07YlGwnYIyJ3DeqMk/6A7Ggh8je09AQ=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uP4eR-0001cX-5m;
	Tue, 10 Jun 2025 19:28:51 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1uP4eP-0001cG-Fp
 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 10 Jun 2025 19:28:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sgPJbsLxBu0TMu9PG5pgy2qt41CUvg+KpMXqP7UQJcw=; b=CuYVth8tpPeuzrRDkXzR0JjCmc
 hnYCYwpDtQG6png8mqy8vMw9FFiP5WaEM0RnfPzYCrDnDviCv47LBvGBsczK7iHUMXZ35PWJOPn8q
 6GyWgAmChJElt1anOhOFrp86hgL/ajUB+4Op2QXgFrD3izrdPi7t8hpkbuu4SgwwIX7I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sgPJbsLxBu0TMu9PG5pgy2qt41CUvg+KpMXqP7UQJcw=; b=ZgkeHdGhTBqt29TXKB+0G9vdcn
 VIkQ6stDlBegwL6LyP4jQOznDzVoehh3MIgRc7GvZxQHCagj/bP+umY6pbXMLU1fOLYKsyEbUV9tk
 WYpJbKQuGGi60H5wW5ipnwTvaHJZHxHYKHCncW4VvhjnIfNdrIOxXaWY2rPeWHrWLFtA=;
Received: from fout-b5-smtp.messagingengine.com ([202.12.124.148])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uP4eO-0002h2-VU for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 10 Jun 2025 19:28:49 +0000
Received: from phl-compute-10.internal (phl-compute-10.phl.internal
 [10.202.2.50])
 by mailfout.stl.internal (Postfix) with ESMTP id 3BE8F11400EA;
 Tue, 10 Jun 2025 15:28:38 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-10.internal (MEProxy); Tue, 10 Jun 2025 15:28:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1749583718; x=
 1749670118; bh=sgPJbsLxBu0TMu9PG5pgy2qt41CUvg+KpMXqP7UQJcw=; b=q
 L+D7tYcVxXDqlnYCq6hILUn8eRPFAiIPhZt5cKpy8TU85FG0bMzo13oflSrZNhg4
 u+SEuOcq5UJz2izcQ0YQD3ksgPRMCVCr3HP3cg/ui4yLAeWi7fYXz2ypvYsEv5R+
 RNukDngxkXf7J9F5zSyerkUAWcHI7TPqizUqxeQ59Q0XY0feEdipVodB40rr644b
 j++AVSKmNYk8md9PmoIgp3NyfIcO3zGenAZs6RBdl/kcx9f7Sv0BgR1+DoAW79SB
 cUUzSWR3SzPYVRq8bkSv6YC081Ldd+GsA3VVKFBG65jRfVadfMcoZ2wb8l0+D10D
 xkUZlbMlB0UAO3bZvL5Ng==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1749583718; x=1749670118; bh=s
 gPJbsLxBu0TMu9PG5pgy2qt41CUvg+KpMXqP7UQJcw=; b=dVGzBQqSxZ8/MSESH
 qYcWRC/vYTaNDnYakgtyuosUa57QdH66IqwKzNPLAZrpki33htBKI/qQ9D57TvQU
 fVSP5BXoF32JI6ZUrr2ohtz8ng+giyjZ3a5V+DJKROo4J5i58dGLo3nDej2qlmVO
 2sX6IoaqNI+TLOHViVdxKPi7MJPbO8ZKqyV+/h3SpKnBcYkYAuP54aYN65dneBwY
 SIVpUKCbAQemzX1+6ycRADpyp5WZEEQf6nyxI+nCPJCyOP1KQh2V37nYWNGgezQH
 DylVMjTqeP92OFZMzEr/btRd6wIkFxY+c/90wVPLkPpNZvrVJK/y+73f5OFLn4bd
 iciRA==
X-ME-Sender: <xms:ZIdIaLiPEo7AyHEmHg3vrTSwWYsJT-lFATZPXQMeSebGXV1PGKAO8w>
 <xme:ZIdIaICdnIADhcKYr2bwZjvnYIOnu1KNlEBjBzeTbGVBT9pqCuXu1lVwZ4_0prqhO
 498_GhrUWIyroVCWto>
X-ME-Received: <xmr:ZIdIaLFnkKHzNPoNWKtWRGw-5HEtjfgvj24qh8VbhDBNYzUedGCQCacWI04oSDgjvi8-Pr19b6ild3eB4iQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddugdduudduhecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
 uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecuogetfedtuddqtdduuc
 dludehmdenucfjughrpefhvfevufffkffojghfggfgsedtkeertdertddtnecuhfhrohhm
 peforghrkhcurfgvrghrshhonhcuoehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvg
 gssgdrtggrqeenucggtffrrghtthgvrhhnpeevtdelgfeggfejtedtvdfgkefhuefguedt
 keeffeduueduvdeiuedtleejvdfhvdenucffohhmrghinhepkhgvrhhnvghlrdhorhhgne
 cuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhhpvggr
 rhhsohhnqdhlvghnohhvohesshhquhgvsggsrdgtrgdpnhgspghrtghpthhtohepuddupd
 hmohguvgepshhmthhpohhuthdprhgtphhtthhopehmphgvrghrshhonhdqlhgvnhhovhho
 sehsqhhuvggssgdrtggrpdhrtghpthhtohepihhlphhordhjrghrvhhinhgvnheslhhinh
 hugidrihhnthgvlhdrtghomhdprhgtphhtthhopehhuggvghhovgguvgesrhgvughhrght
 rdgtohhmpdhrtghpthhtohepihhkvghprghnhhgtsehgmhgrihhlrdgtohhmpdhrtghpth
 htohephhhmhheshhhmhhdrvghnghdrsghrpdhrtghpthhtohepfigprghrmhhinhesghhm
 gidruggvpdhrtghpthhtoheprghnughrihihrdhshhgvvhgthhgvnhhkoheslhhinhhugi
 drihhnthgvlhdrtghomhdprhgtphhtthhopehplhgrthhfohhrmhdqughrihhvvghrqdig
 keeisehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtohepihgsmhdqrggtphhiqd
 guvghvvghlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvght
X-ME-Proxy: <xmx:ZIdIaISYtOHQZTm3m8xdHY84DUubazkFAjG1Yy70x4y2DLqn3iwYxQ>
 <xmx:ZYdIaIxM36gIGrqB87ht-vzc1Ap3Iw9AoafDUtvIfIaubsTGZa60Ug>
 <xmx:ZYdIaO77z_8TRZfDP6TCi_t1X_6avYNUCBc86VHXkKZ5RtWiX--P2Q>
 <xmx:ZYdIaNyp691fMo7sYadnkuOzCz6aSuIQ9SaO407yDeZ16S_yf1mrIA>
 <xmx:ZodIaNtPIYq4-lL-vQO3oFj2oVpCm9EIkndLUvX-nmGWOnBi03gXZejy>
Feedback-ID: ibe194615:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 10 Jun 2025 15:28:36 -0400 (EDT)
From: Mark Pearson <mpearson-lenovo@squebb.ca>
To: mpearson-lenovo@squebb.ca
Date: Tue, 10 Jun 2025 15:28:24 -0400
Message-ID: <20250610192830.1731454-1-mpearson-lenovo@squebb.ca>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <mpearson-lenovo@squebb.ca>
References: <mpearson-lenovo@squebb.ca>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Fix issues reported by kernel test robot. - Require DMI for
 think-lmi. - Check return from getting serial string Reported-by: kernel
 test robot <lkp@intel.com> Closes:
 https://lore.kernel.org/oe-kbuild-all/202506062319.F0IpDxF6-lkp@intel.com/
 Signed-off-by: Mark Pearson <mpearson-lenovo@squebb.ca> --- Changes in [...]
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [202.12.124.148 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1uP4eO-0002h2-VU
Subject: [ibm-acpi-devel] [PATCH v4 1/2] platform/x86: thinklmi: improved
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
Cc: W_Armin@gmx.de, kernel test robot <lkp@intel.com>,
 ibm-acpi-devel@lists.sourceforge.net, ikepanhc@gmail.com,
 linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 hdegoede@redhat.com, hmh@hmh.eng.br, ilpo.jarvinen@linux.intel.com,
 andriy.shevchenko@linux.intel.com
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
Changes in v4:
 - Return -ENODEV instead of -EINVAL
 - Make patch first in series
 - Clean up commit message (empty line)
Changes in v3:
 - New patch added to series.

 drivers/platform/x86/Kconfig     | 1 +
 drivers/platform/x86/think-lmi.c | 8 +++++---
 2 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/platform/x86/Kconfig b/drivers/platform/x86/Kconfig
index e5cbd58a99f3..9f39547d98f6 100644
--- a/drivers/platform/x86/Kconfig
+++ b/drivers/platform/x86/Kconfig
@@ -659,6 +659,7 @@ config THINKPAD_ACPI_HOTKEY_POLL
 config THINKPAD_LMI
 	tristate "Lenovo WMI-based systems management driver"
 	depends on ACPI_WMI
+	depends on DMI
 	select FW_ATTR_CLASS
 	help
 	  This driver allows changing BIOS settings on Lenovo machines whose
diff --git a/drivers/platform/x86/think-lmi.c b/drivers/platform/x86/think-lmi.c
index 00b1e7c79a3d..02ede1ec99e9 100644
--- a/drivers/platform/x86/think-lmi.c
+++ b/drivers/platform/x86/think-lmi.c
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
+			return -ENODEV;
+		auth_str = cert_command(setting, serial, setting->signature);
 		if (!auth_str)
 			return -ENOMEM;
 
-- 
2.43.0



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
