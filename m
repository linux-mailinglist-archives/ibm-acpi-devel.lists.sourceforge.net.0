Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E655235131
	for <lists+ibm-acpi-devel@lfdr.de>; Sat,  1 Aug 2020 10:38:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1k1n1q-0006sM-Qb; Sat, 01 Aug 2020 08:38:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lkp@intel.com>) id 1k1n1k-0006ru-Jo
 for ibm-acpi-devel@lists.sourceforge.net; Sat, 01 Aug 2020 08:38:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0/VWJE9HIHQdRYaWCMCaL5/jCzX2m8Wt4V/DAWzLRn4=; b=ZiLW07xl/FYbO/PEWAupn0QCrt
 QUHiS8x9oe2n4BTok8FMUElEspWz0Qrx+whYi/g0v1rhUq9xR7tSzeypLQ3XAR4qX/9Bim/5zhamZ
 e0kb9GeTpQCxNXxDer92h2aCEPjx0mRu+VNY4SSPtwoq+6FsIzOPrL7NzBJe08NbjUa0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0/VWJE9HIHQdRYaWCMCaL5/jCzX2m8Wt4V/DAWzLRn4=; b=R0SZ0uvPgPdjVvED8qSYP/trNy
 0Rhu2qv4Xvq5aPlJWm4/4gHP4QomNbV//p8a3q63ptEjEwY5V6L9k22DQxicOrcRsjEPANCgHmjF5
 XJPjU7JHwPWnN5fWGVLbEuRkQiJ20ukUFbs0PJn0Wuu606ooZvA0DtGprzZu7xVuy67w=;
Received: from mga18.intel.com ([134.134.136.126])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k1n1f-005xqB-9a
 for ibm-acpi-devel@lists.sourceforge.net; Sat, 01 Aug 2020 08:37:57 +0000
IronPort-SDR: VFjKEes3UCkXc4k2VbqevieUpDjdduJRXTan7finXlMZr5AwEWLtyOfsUNZh6etYobK76bJ1mi
 PObQyelRxHcA==
X-IronPort-AV: E=McAfee;i="6000,8403,9699"; a="139479232"
X-IronPort-AV: E=Sophos;i="5.75,420,1589266800"; d="scan'208";a="139479232"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2020 01:37:48 -0700
IronPort-SDR: 3rIhv1RTDGof2gdk7vtoKxsmN5ZmrWZlx8LzoOfE/xErds9IIESqEgaFh1buDNDeDep81weoAD
 tfidI26tF+bQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,420,1589266800"; d="scan'208";a="273471456"
Received: from lkp-server01.sh.intel.com (HELO e21119890065) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 01 Aug 2020 01:37:46 -0700
Received: from kbuild by e21119890065 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1k1n1V-0000Nr-Mn; Sat, 01 Aug 2020 08:37:45 +0000
Date: Sat, 1 Aug 2020 16:36:54 +0800
From: kernel test robot <lkp@intel.com>
To: Thomas =?iso-8859-1?Q?Wei=DFschuh?= <linux@weissschuh.net>
Message-ID: <20200801083654.GA31368@144836a6079b>
References: <202008011649.b8CEYWIz%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202008011649.b8CEYWIz%lkp@intel.com>
X-Patchwork-Hint: ignore
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k1n1f-005xqB-9a
Subject: [ibm-acpi-devel] [RFC PATCH linux-next] platform/x86:
 thinkpad_acpi: dev_attr_charge_start_threshold can be static
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
Cc: kbuild-all@lists.01.org, Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 ibm-acpi-devel@lists.sourceforge.net, Darren Hart <dvhart@infradead.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net


Fixes: e33929537b76 ("platform/x86: thinkpad_acpi: use standard charge control attribute names")
Signed-off-by: kernel test robot <lkp@intel.com>
---
 thinkpad_acpi.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index 9eda2f84a3cf98..4864a5c189d464 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -9633,13 +9633,13 @@ static ssize_t charge_control_end_threshold_store(struct device *dev,
 
 static DEVICE_ATTR_RW(charge_control_start_threshold);
 static DEVICE_ATTR_RW(charge_control_end_threshold);
-struct device_attribute dev_attr_charge_start_threshold = __ATTR(
+static struct device_attribute dev_attr_charge_start_threshold = __ATTR(
 	charge_start_threshold,
 	0644,
 	charge_control_start_threshold_show,
 	charge_control_start_threshold_store
 );
-struct device_attribute dev_attr_charge_stop_threshold = __ATTR(
+static struct device_attribute dev_attr_charge_stop_threshold = __ATTR(
 	charge_stop_threshold,
 	0644,
 	charge_control_end_threshold_show,


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
