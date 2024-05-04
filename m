Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5538BBCCC
	for <lists+ibm-acpi-devel@lfdr.de>; Sat,  4 May 2024 17:37:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1s3HRG-00023p-PI;
	Sat, 04 May 2024 15:36:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <gregkh@linuxfoundation.org>) id 1s3HRC-00023f-JE
 for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 04 May 2024 15:36:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BEHfgGo/0W1gAL/HvOUGuMMBGSuTJXz3WVsWmH84pNc=; b=m0lPXy5km0l1dIQrELy6JrIcKH
 7eH1UbZpEzkRteHCx3d07QuWztMLufA1sYwibRfe1eVuCk4vosLQMvt8HnnVCSEdR1pRuD8SBgSBS
 BqDB/yNuoeuyU/+vQsVN/jAY2XfHYclGtRDLkXiKMMKXBqSytW7JzUnJ7KlnEJCuNfpk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BEHfgGo/0W1gAL/HvOUGuMMBGSuTJXz3WVsWmH84pNc=; b=GshbyiGsqkKPvAXYkRf+LW7Pdy
 VB9pQyARWsR2cp39XlzFdpZ4EJqlFyxtooqYiO4YYxHjYmZVly3H2y0SYUjtnbsx5kjgKvpP5PjtE
 t2LyNSI85F9kEBU0BdyKpdB9xLVKr4LHA0DzU/gpytq1jlKwxdF0WGz3oPxYXqGbO3bg=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s3HRC-0004AP-0m for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 04 May 2024 15:36:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 7E42260AB9;
 Sat,  4 May 2024 15:36:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92CBEC072AA;
 Sat,  4 May 2024 15:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1714836983;
 bh=nwu87VDHK729eGU2R6RqtqlA5jPb1XtrfjcVNZX2UW8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gOU9LDkGC/Nk0n7vDBEZnWdd/OxMBxqcUv0bWurd537fHJ4jcdyDDcv+QbZAK3nE/
 ++E8Cs160Smi3bmrYhGFtE6q5sBfTKr4b7AubdwbVrdiO9sZW2n1rHLERpHgtLVwFL
 eCOt84oekveT8FaBGhnj3Hf2FmZa93ZVT3j5PrVE=
Date: Sat, 4 May 2024 17:36:20 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Lukas Wunner <lukas@wunner.de>
Message-ID: <2024050409-confident-delouse-a976@gregkh>
References: <cover.1713608122.git.lukas@wunner.de> <ZjZGzg5LFU2AT3_D@wunner.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZjZGzg5LFU2AT3_D@wunner.de>
X-Spam-Score: -1.4 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, May 04, 2024 at 04:31:42PM +0200, Lukas Wunner wrote:
 > Dear Greg, > > On Sat, Apr 20, 2024 at 10:00:00PM +0200, Lukas Wunner wrote:
 > > Introduce a generic ->show() callback to expose a strin [...] 
 Content analysis details:   (-1.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linuxfoundation.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -1.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1s3HRC-0004AP-0m
Subject: Re: [ibm-acpi-devel] [PATCH 0/6] Deduplicate string exposure in
 sysfs
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
Cc: Mark Rutland <mark.rutland@arm.com>, Tyrel Datwyler <tyreld@linux.ibm.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, storagedev@microchip.com,
 Yicong Yang <yangyicong@hisilicon.com>, ibm-acpi-devel@lists.sourceforge.net,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>, Will Deacon <will@kernel.org>,
 Jijie Shao <shaojijie@huawei.com>, Khuong Dinh <khuong@os.amperecomputing.com>,
 Sudarsana Kalluru <sudarsana.kalluru@qlogic.com>,
 Dennis Dalessandro <dennis.dalessandro@cornelisnetworks.com>,
 linux-rdma@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>,
 "Luke D. Jones" <luke@ljones.dev>, Nilesh Javali <njavali@marvell.com>,
 Ilpo Jaervinen <ilpo.jarvinen@linux.intel.com>,
 Guenter Roeck <linux@roeck-us.net>, platform-driver-x86@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Jonathan Cameron <jonathan.cameron@huawei.com>,
 Azael Avalos <coproscefalo@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-hwmon@vger.kernel.org, linux-scsi@vger.kernel.org,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Don Brace <don.brace@microchip.com>, Bjorn Andersson <andersson@kernel.org>,
 Anil Gurumur thy <anil.gurumurthy@qlogic.com>, linux-kernel@vger.kernel.org,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 GR-QLogic-Storage-Upstream@marvell.com, Shuai Xue <xueshuai@linux.alibaba.com>,
 Corentin Chary <corentin.chary@gmail.com>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Sat, May 04, 2024 at 04:31:42PM +0200, Lukas Wunner wrote:
> Dear Greg,
> 
> On Sat, Apr 20, 2024 at 10:00:00PM +0200, Lukas Wunner wrote:
> > Introduce a generic ->show() callback to expose a string as a device
> > attribute in sysfs.  Deduplicate various identical callbacks across
> > the tree.
> > 
> > Result:  Minus 216 LoC, minus 1576 bytes vmlinux size (x86_64 allyesconfig).
> > 
> > This is a byproduct of my upcoming PCI device authentication v2 patches.
> > 
> > 
> > Lukas Wunner (6):
> >   driver core: Add device_show_string() helper for sysfs attributes
> >   hwmon: Use device_show_string() helper for sysfs attributes
> >   IB/qib: Use device_show_string() helper for sysfs attributes
> >   perf: Use device_show_string() helper for sysfs attributes
> >   platform/x86: Use device_show_string() helper for sysfs attributes
> >   scsi: Use device_show_string() helper for sysfs attributes
> 
> This series hasn't been applied to driver-core-next AFAICS and the
> merge window is drawing closer.
> 
> So far only patches 1, 2 and 5 have been ack'ed by the respective
> subsystem maintainers.  If the missing acks are the reason it hasn't
> been applied, would it be possibe to apply only 1, 2 and 5?
> 
> I would then resubmit the other ones individually to the subsystem
> maintainers in the next cycle.

I'll just pick it up now, thanks!

greg k-h


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
