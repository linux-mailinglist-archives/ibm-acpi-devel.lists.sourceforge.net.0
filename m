Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 67CDE57EE7
	for <lists+ibm-acpi-devel@lfdr.de>; Thu, 27 Jun 2019 11:03:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1hgQJ2-0006fY-8V; Thu, 27 Jun 2019 09:03:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <fsteiner-mail1@bio.ifi.lmu.de>) id 1hgQIz-0006f6-Dy
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 27 Jun 2019 09:02:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Message-ID:To:Subject:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=b6rhrvipDV/psjFu7K0DjN6+zqHHP1kobIqegmf6QQU=; b=VAMh7GX5eMpK8QkAlrIURvOuju
 q9p2/zTU8zczZm2BNvtniD9tB/FD3hN/z9t0TnKQu9QT7uwI5bK9Rdl86mwe8N8/kWza5jW0dmL9x
 oUNqFubSTUJkyIm6jY5gw1SHRGmUygtqkWwJjojUNMmJf0bYGymWzqDVKmAy0d7KTCZI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:To:
 Subject:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=b6rhrvipDV/psjFu7K0DjN6+zqHHP1kobIqegmf6QQU=; b=g
 3gF7VIl21hRtTn+HL3NQ6FwF0A8hReanejJyxtUaRiAPQjzxvE3nX1zDG4ooUrFuADMo2ZxTKZ7x6
 pdKKV2KX0UXV3BOUdWotSo6gt/oWAACaegeTkd/i5PrZJu9MmwRHe2/eMME11tbkDGUKVMSKhTfx/
 v4tejeQ8fq9vspOY=;
Received: from smtpout11.ifi.lmu.de ([141.84.214.246])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hgQJA-00GTKm-Nh
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 27 Jun 2019 09:03:10 +0000
Received: from [IPv6:2001:4ca0:4000:1011:141:84:1:30] (galois.bio.ifi.lmu.de
 [IPv6:2001:4ca0:4000:1011:141:84:1:30])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: steiner.bio)
 by smtpin1.ifi.lmu.de (Postfix) with ESMTPSA id 30C15250F52
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Thu, 27 Jun 2019 11:03:02 +0200 (CEST)
From: Frank Steiner <fsteiner-mail1@bio.ifi.lmu.de>
To: ibm-acpi-devel@lists.sourceforge.net
Message-ID: <95e3df5e-a19a-1d3b-8d29-35ce645698b2@bio.ifi.lmu.de>
Date: Thu, 27 Jun 2019 11:03:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
Content-Language: en-US
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: lmu.de]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1hgQJA-00GTKm-Nh
Subject: [ibm-acpi-devel] lde disk-activity trigger on Thinkpad T570/580
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

I'm not sure if this is related to thinkpad_acpi or not, but maybe
someone here can judge this.

We are trying to turn e.g. the power led into a hard disk activity
indicator by

echo disk-activity > /sys/devices/platform/thinkpad_acpi/leds/tpacpi::power/trigger

This works fine on all our older thinkpad models with SATA hard disks
works also on our PCs with SSD disks (SATA as well as NVME), but
it fails on our newer thinkpads, i.e. T570 and T580 with NVME SSDs.

The LED just stays off all the time no matter what we do with the hard
disk.

Could this be some information missing in thge thinkpad_acpi module for
those new models? Or is this some general code somewhere else in the
kernel?

If it could be related to thinkpad_acpi what kind of information could
I send to help someone write a patch?

cu,
Frank


-- 
Dipl.-Inform. Frank Steiner   Web:  http://www.bio.ifi.lmu.de/~steiner/
Lehrstuhl f. Bioinformatik    Mail: http://www.bio.ifi.lmu.de/~steiner/m/
LMU, Amalienstr. 17           Phone: +49 89 2180-4049
80333 Muenchen, Germany       Fax:   +49 89 2180-99-4049
* Rekursion kann man erst verstehen, wenn man Rekursion verstanden hat. *


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
