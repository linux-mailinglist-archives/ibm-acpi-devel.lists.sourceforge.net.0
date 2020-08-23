Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0783124F05E
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 24 Aug 2020 00:56:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1k9ytw-0005sX-8d; Sun, 23 Aug 2020 22:55:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rdunlap@infradead.org>) id 1k9ytv-0005sN-I0
 for ibm-acpi-devel@lists.sourceforge.net; Sun, 23 Aug 2020 22:55:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Message-ID:Subject:Cc:From:To:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=p4hQ05/Ug37W1HDkIRxESilsvD5PeBDjK4JNqUubzq8=; b=QqUxgBVIAH0sDFlKVPex5N0xjO
 3CwI3xEx4dKuEzrz3TUB01gKMbrz/oWADwqOBaiw90jJWXDNUAOJ4PqdoNq9L51m+l5mtCDP/xiM+
 WcTkVdn8Pi2EbTFw1VYJDUbZOf7k3Pa9gVkj6mMdolq5nXEmzwgk17/9xhLZIrn1s+xc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:
 Subject:Cc:From:To:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=p4hQ05/Ug37W1HDkIRxESilsvD5PeBDjK4JNqUubzq8=; b=T
 LemRDqQVj/oESGW8q0QIcm5dvc9sPfmpMECe9oz2tb6w4I05EUnwiyZ4INFQ9CVakDOYJB8HsWN8H
 kG2kOfpi8hLYyP5R+exO61WgACBASTXkyi6h3nz7S//3F7noTnT5TlqLf/FdrI0Dyb4yy3jgum5y6
 P7pEGwWiqb1z2noI=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k9yto-00GXDa-I3
 for ibm-acpi-devel@lists.sourceforge.net; Sun, 23 Aug 2020 22:55:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Date:Message-ID:Subject:Cc:From:To:Sender:Reply-To:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=p4hQ05/Ug37W1HDkIRxESilsvD5PeBDjK4JNqUubzq8=; b=aZDohJ1eEonSrHKxuzVX8l3AVL
 Q88wykXTy0+T0miG+OB1zizyPfvUItgvyy0EFvzfYJorDckZOPC2lmNDg/K4/Day71l3Eea6goRnn
 vk8ZZBX509E8DISxh6fsY66IatQzwMjuY6J1ipveKY2LxH5UPQ4AGm1ZSFQYpnkL7G7cF/L0uUrTk
 w03mOHUWc+L1Bg4lPyVVH57ySqGUXlYP5n7xWTEvkAVe5IpL03QdELlzlH2nKNFkz1RB5alzZ3Gfg
 ReoffXFMibMCzvaLlbymvE+kR9abV4BQqR7IYP87+onv30oyyBQFb0AOxXhhIOEzB8iZ5fvZwXUdd
 OO25U2vQ==;
Received: from [2601:1c0:6280:3f0::19c2]
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k9ytU-0007jb-Gz; Sun, 23 Aug 2020 22:55:20 +0000
To: LKML <linux-kernel@vger.kernel.org>,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 Darren Hart <dvhart@infradead.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <7b2ecef9-dfb7-808a-7c05-4e4f44b363c4@infradead.org>
Date: Sun, 23 Aug 2020 15:55:16 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
Content-Language: en-US
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.7 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k9yto-00GXDa-I3
Subject: [ibm-acpi-devel] [PATCH] Documentation: laptops: thinkpad-acpi: fix
 underline length build warning
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
Cc: "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 Sugumaran <slacshiminar@lenovo.com>, Jonathan Corbet <corbet@lwn.net>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 ibm-acpi-devel@lists.sourceforge.net, Mark Pearson <markpearson@lenovo.com>,
 Nitin Joshi <njoshi1@lenovo.com>, Bastien Nocera <bnocera@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

From: Randy Dunlap <rdunlap@infradead.org>

Fix underline length build warning in thinkpad-acpi.rst documentation:

Documentation/admin-guide/laptops/thinkpad-acpi.rst:1437: WARNING: Title underline too short.
DYTC Lapmode sensor
------------------

Fixes: acf7f4a59114 ("platform/x86: thinkpad_acpi: lap or desk mode interface")
Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Nitin Joshi <njoshi1@lenovo.com>
Cc: Sugumaran <slacshiminar@lenovo.com>
Cc: Bastien Nocera <bnocera@redhat.com>
Cc: Mark Pearson <markpearson@lenovo.com>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Darren Hart <dvhart@infradead.org>
Cc: Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>
Cc: ibm-acpi-devel@lists.sourceforge.net
Cc: platform-driver-x86@vger.kernel.org
---
 Documentation/admin-guide/laptops/thinkpad-acpi.rst |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- lnx-59-rc2.orig/Documentation/admin-guide/laptops/thinkpad-acpi.rst
+++ lnx-59-rc2/Documentation/admin-guide/laptops/thinkpad-acpi.rst
@@ -1434,7 +1434,7 @@ on the feature, restricting the viewing
 
 
 DYTC Lapmode sensor
-------------------
+-------------------
 
 sysfs: dytc_lapmode
 




_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
