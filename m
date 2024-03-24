Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 57125887F2F
	for <lists+ibm-acpi-devel@lfdr.de>; Sun, 24 Mar 2024 22:26:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1roVMP-0006K8-RI;
	Sun, 24 Mar 2024 21:26:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1roVMJ-0006Jv-P9
 for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 24 Mar 2024 21:26:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h31yFYMuvD8W4+jwFqiAM6h7FP1FGnBAkqLSOrHU3Lw=; b=bVYS7uwpVW9gi+/aDsdzRVXxKe
 T+wi+tZa+Ag8MV4sOSH5qum7eedkdtnTfzIVPXRprzUmeCQ1cKB5l2eVvu6LXrNUeqS8sISKGCh9Z
 3c6tQwt5NTSj8J+EohZWDOe3yOv3acE5V+odCXUPxQdqUN4kIUv3eUbTiTIpAAmYxsPE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=h31yFYMuvD8W4+jwFqiAM6h7FP1FGnBAkqLSOrHU3Lw=; b=XU2UP04qB5Isuv+1GJAxi8mN86
 /yZKos0KAjo7d9Rg5v5vrCIb58gShPwGznoLGYi3XdW1mHDrRx02WHW3wabIhOO8QviRQBMlT2x5S
 wSltM+uPRDRS2/T5rFfsXdgG7loQradNOYTr8AQLbyJF3Oo+6milpYRswnFORHYBbdRU=;
Received: from fhigh5-smtp.messagingengine.com ([103.168.172.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1roVMI-0002ZV-Ow for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 24 Mar 2024 21:26:27 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 01C4611400BD;
 Sun, 24 Mar 2024 17:08:35 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Sun, 24 Mar 2024 17:08:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1711314514; x=
 1711400914; bh=h31yFYMuvD8W4+jwFqiAM6h7FP1FGnBAkqLSOrHU3Lw=; b=T
 /NM5Y/xMwutq0VrqeHwqRc2r8ppPk9dY1B2IZL8uT9NpuLsalDAujHe0vKOxWN7D
 kDcR/gLhDd3GPsmlLdfo4AIe/6IdiX6V48z3zZtYtJBE4koHbE5Ykh6M9bnyaTU0
 xdNCFs9USPfsZL8AFFr1M09w5hBvCUlHaPV/LP/w37Ok86m+3iDg+DLdt8PtOmgu
 49EBR2KuMVi2c9d1MdofmkjFmvVDoDz/WWY/J8DzIyJFdQ427puh7bmIvNn6by3q
 J0/Std9DHJaKlaE28IgSAB6RlwaP/aTAUp6HdJeKfkWMYNsd01KbJxKh9sXWrXzN
 QZbxJaiZbdPsXsStBMFbA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1711314514; x=
 1711400914; bh=h31yFYMuvD8W4+jwFqiAM6h7FP1FGnBAkqLSOrHU3Lw=; b=l
 X/aY3JHbBgmpQojhGhfXeLCwqqnVCMFCSqjoavW14X6VPeYjSpLSLditBG3khcVo
 Wh4h+IgGHvptPU2/iCZj1S3I+344KNuPSLvOB6xAHUQfSDaua9F9kCJG7486xNPE
 Xuhv7WSucI+mCrPYwPa8Sq12Vq4S7yBvOvub0cF/Vz2chdvtiNi9LsSYdmlefgm/
 RYny9wAKEU+2Aw3NXsOcBFR2MitoimbyIyCf/UER+GjA6zYET0zlwzV0Ipd964HX
 fSUJ+TcAgWdso35kKxAEo+f8d69EBSL4oCDdb9adLIpJKeE0agR52MDErxcM2JNR
 JzAbE7kKPpt/cLkfkMjyw==
X-ME-Sender: <xms:UpYAZmi0k0huX4N1N70jkM2iLw3_yK4A05HIypRnLfoK83ZoqnIRhg>
 <xme:UpYAZnBcz2K8DLpkbYU-TO6rwx-zYoFSrA7rN4TpPezzEC8TgYyLZJzyayi9TOHY1
 p3asiCyIZ4HI6mGd-c>
X-ME-Received: <xmr:UpYAZuFT963srjrqy1__Ujkdiitn9JbOru9My5xUw_h1Gjo1US945jCWkb17>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledruddtjedgudeglecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecuogetfedtuddqtdduucdludehmdenucfjughrpe
 fhvfevufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforghrkhcurfgvrghr
 shhonhcuoehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggrqeenucggtf
 frrghtthgvrhhnpeeftddvjeefleffvefhgfejjeehudetteeigeeugfekhffhgeejudeu
 teehgfdvffenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
 hmpehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggr
X-ME-Proxy: <xmx:UpYAZvRI-v2pPnEQrqdStZ75-P448KxQavA-owbAUmMKEWUAwo2XoA>
 <xmx:UpYAZjwMUBZYv_m5Tz0zlrnbGOMReOToiZYPOIKm9Sa1B-Wz088CiA>
 <xmx:UpYAZt65STtAo-7V_NOXk7myip5IwXwktp3sxTXhhJzIvV8enaHn_A>
 <xmx:UpYAZgwpp8p0UAXfuqDD43W4wxsRlvE4_J5rpyBxTNcUHp5NV4TC1w>
 <xmx:UpYAZrgYPPLgGFH8f9mXXrHSzlAvXWNHfy1kPOMmqWohzzAVp8Qj9w>
Feedback-ID: ibe194615:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 24 Mar 2024 17:08:33 -0400 (EDT)
From: Mark Pearson <mpearson-lenovo@squebb.ca>
To: mpearson-lenovo@squebb.ca
Date: Sun, 24 Mar 2024 17:07:57 -0400
Message-ID: <20240324210817.192033-1-mpearson-lenovo@squebb.ca>
X-Mailer: git-send-email 2.44.0
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
 Content preview:  Hi, This series adds support trackpoint doubletap and some
 new hotkey functionality which is being added on Lenovo laptops. - FN+N -
 display system debug info. Used by customer support with Windows users. [...]
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
X-Headers-End: 1roVMI-0002ZV-Ow
Subject: [ibm-acpi-devel] [PATCH 0/4] platform/x86,
 input: Support for new events on
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

Hi,

This series adds support trackpoint doubletap and some new hotkey
functionality which is being added on Lenovo laptops.
 - FN+N - display system debug info. Used by customer support with
   Windows users.
 - FN+G - disable/enable trackpoint doubletap.

We combined these into a series because there was commonality between
what the different features were doing.
Please let us know if you would prefer to have them as separate commits.

Many thanks to Peter Hutterer and Benjamin Tissoires for the guidance on
what would be best for exporting the events from trackpoint doubletap to
userspace. Any mistakes are ours :)

Features have been tested on Z13 G2 (doubletap & FN+G) and X1 Carbon 
G12 (FN+N)

Mark Pearson (4):
  Input: Add trackpoint doubletap and system debug info keycodes
  platform/x86: thinkpad_acpi: Support for trackpoint doubletap
  platform/x86: thinkpad_acpi: Support for system debug info hotkey
  platform/x86: thinkpad_acpi: Support hotkey to disable trackpoint
    doubletap

 drivers/platform/x86/thinkpad_acpi.c   | 31 ++++++++++++++++++++++++++
 include/uapi/linux/input-event-codes.h |  2 ++
 2 files changed, 33 insertions(+)

-- 
2.44.0



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
