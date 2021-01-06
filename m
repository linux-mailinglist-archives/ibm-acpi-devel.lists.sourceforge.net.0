Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 315AC2EBB79
	for <lists+ibm-acpi-devel@lfdr.de>; Wed,  6 Jan 2021 10:02:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1kx4hc-0007Zz-D7; Wed, 06 Jan 2021 09:02:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <joe@perches.com>) id 1kx4ha-0007Zp-1G
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 06 Jan 2021 09:01:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AV3beXi6eFBP7x1l1dTmDYZoxdbo/iCMawi4x44aY2Q=; b=Yifn6/5fHuMLy8JkJuyQ562o0e
 nfE7vXU6WDQbhxld0rNxOXQH4nsdkaW7rArlOtCAZ5wIvzJdeGEBRl40EJSeQ66xfu2uqkPaPwmEU
 wPyHZ9lh5i7IhL5wqsT/OYTu/9wRpLyyfFePP8l/SdzAkvARv4dH4jwVS4YkIjAGbd4U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AV3beXi6eFBP7x1l1dTmDYZoxdbo/iCMawi4x44aY2Q=; b=Dlvg1LiQGyYa/PGUbDXwMhQr9j
 k0mANSSkzeYQR0fuoN9XQFHF8/bzdEA7tGR9AT335MDAm7WjsA3MyBcSHr8YS0Qb7fnMCAvgBO5RN
 qRRg7r8d6QtKB8PMIAUrQHdGnzcM+8WEKzwrIADTE3lxy/aNU85V+kPv7NXRnUtRXsbM=;
Received: from smtprelay0119.hostedemail.com ([216.40.44.119]
 helo=smtprelay.hostedemail.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kx4hW-003K8C-Bs
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 06 Jan 2021 09:01:57 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay05.hostedemail.com (Postfix) with ESMTP id 2625918037C58;
 Wed,  6 Jan 2021 09:01:41 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:973:988:989:1260:1261:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:2892:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:3871:3872:4250:4321:4384:4605:5007:7652:10004:10400:10848:11232:11658:11914:12296:12297:12740:12760:12895:13069:13311:13357:13439:14659:14721:21080:21627:21990:30029:30034:30054:30075:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: duck79_510625a274e0
X-Filterd-Recvd-Size: 1842
Received: from [192.168.1.159] (unknown [47.151.137.21])
 (Authenticated sender: joe@perches.com)
 by omf20.hostedemail.com (Postfix) with ESMTPA;
 Wed,  6 Jan 2021 09:01:39 +0000 (UTC)
Message-ID: <2d5f6ffcf47ec4675cde21ff52fc70a9dd13b023.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: YANG LI <abaci-bugfix@linux.alibaba.com>, hdegoede@redhat.com
Date: Wed, 06 Jan 2021 01:01:37 -0800
In-Reply-To: <1609914976-28113-1-git-send-email-abaci-bugfix@linux.alibaba.com>
References: <1609914976-28113-1-git-send-email-abaci-bugfix@linux.alibaba.com>
User-Agent: Evolution 3.38.1-1 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.40.44.119 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.40.44.119 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kx4hW-003K8C-Bs
Subject: Re: [ibm-acpi-devel] [PATCH] thinkpad_acpi: fix: use scnprintf
 instead of snprintf.
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
Cc: ibm-acpi@hmh.eng.br, platform-driver-x86@vger.kernel.org,
 mgross@linux.intel.com, linux-kernel@vger.kernel.org,
 ibm-acpi-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Wed, 2021-01-06 at 14:36 +0800, YANG LI wrote:
> The snprintf() function returns the number of characters which would
> have been printed if there were enough space, but the scnprintf()
> returns the number of characters which were actually printed. If the
> buffer is not large enough, then using snprintf() would result in a
> read overflow and an information leak. This error was found with the
> help of coccicheck.

In all cases, the buffer _is_ large enough.

tmpi is length 5 and ok.
include/sound/core.h:   char shortname[32];             /* short name of this soundcard */
include/sound/core.h:   char longname[80];              /* name of this soundcard */
include/sound/core.h:   char mixername[80];             /* mixer name */

_show function lengths are OK for all the uses with PAGE_SIZE.
And it's probably better to use sysfs_emit for all the _show functions




_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
