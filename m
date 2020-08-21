Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F20424E1D2
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 21 Aug 2020 22:06:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1k9DIx-0000LW-GG; Fri, 21 Aug 2020 20:06:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <markpearson@lenovo.com>) id 1k9DIv-0000LA-9Q
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 21 Aug 2020 20:06:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eKXqPClKERhY9XZBD5tE66tdsIbmENmLff9YmQVeKpk=; b=Dmrq5fim8oZsqUgL0BQqC+Bv9T
 ZBwTLSp2WJCMGg833o3YK9Wv2hWaMc4qGCRMgqg3ggHsCqWTR2um1n/sVrtTxhiH7l7iCLQbRq6u/
 v4BwUqrvSiPuAaL+YEb850JBnf/68IJPAiSIx7Rb6hrqoOevxCPGHtFLoRV8MR2N25l4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eKXqPClKERhY9XZBD5tE66tdsIbmENmLff9YmQVeKpk=; b=WPxOGfZR+1IJ1XoMjxauvTHcJg
 y2A6FV65tiZTQJX2Z6G77TXdJkXNZvDM7tk62cbVZbTDCz14/4hFnhuTXsIWGGBolRVJfV0JGIlC6
 jAmoXSDEGWnQ2DIdcgUlgvcRZ3SX3b+GDHj+HaAodEFCfZwVuyP0t0raL8Zoj7Mqje2s=;
Received: from mail1.bemta23.messagelabs.com ([67.219.246.112])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k9DIr-00EnoI-I3
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 21 Aug 2020 20:06:25 +0000
Received: from [100.112.4.225] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-1.bemta.az-c.us-east-1.aws.symcld.net id 5F/E1-04232-339204F5;
 Fri, 21 Aug 2020 20:06:11 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpmleJIrShJLcpLzFFi42JJl3vFrmuk6RB
 vsPabusWDuekWsw/bWMx5tpbRoqmzic1i9Z4XzA6sHpNmzmD2+H2A0WP3gs9MHu/3XWXz+LxJ
 LoA1ijUzLym/IoE148en0+wFr/krGh7uZW1gfMbTxcjFISTwn1HiyJ+LzBDOQ0aJ5hcXGLsYO
 TmEBeIl/j9ZwA5iiwiYSvyaN4UdpIhZYA6TxI5b7xghOtYyScxacp4NpIpNQFtiy5ZfQDYHB6
 +ArcSmuf4gYRYBVYmWLVdYQGxRgViJ5VP/sILYvAKCEidnPgGLcwLFv95qAVvMLGAhMXP+eSh
 bXOLWk/lMELa8xPa3c5hBbAkBBYkZF+YxQdgJEste3mGewCg4C8nYWUhGzUIyahaSUQsYWVYx
 miUVZaZnlOQmZuboGhoY6BoaGuma6xpaGOslVukm65UW66YmFpfoGuollhfrFVfmJuek6OWll
 mxiBMZNSgH79h2MC9980DvEKMnBpCTKO1fIIV6ILyk/pTIjsTgjvqg0J7X4EKMMB4eSBK+0Cl
 BOsCg1PbUiLTMHGMMwaQkOHiUR3l8gad7igsTc4sx0iNQpRkUpcV53daCEAEgiozQPrg2WNi4
 xykoJ8zIyMDAI8RSkFuVmlqDKv2IU52BUEuYtBpnCk5lXAjf9FdBiJqDF1rm2IItLEhFSUg1M
 t6wWHHSYv2+d0cSbxl4KnxVnTfK7cMm2cWdhs+ayB2nMZ69PqdsSUiery5N67nn7/8tR9qXLh
 H537Dxbs71quuxGjy2FvYcSfiqZlb9y9r28o3pnqGXCkru/d6Se36M4485Jp/MRn/srH2469P
 IV8+tDRd6rdzucbW/4W3iwZVXkad2Z223avO4YlPJ42Wv43704p3/F5TuP3dfP94g782d/YvK
 U9sZ9/qY2vyp67in3SijyX+lrz5+5ZXqO6gODZ791O778vhLovMxV4kCMW7/uet91pjE9fLeW
 ztqzKjQiOOnCnoPaDTWvkhvXvXh/yuafoFvFq0YZHvVdQS1cYrpr160JY7NyZmKo2l2Xq8RSn
 JFoqMVcVJwIAFvUYEeWAwAA
X-Env-Sender: markpearson@lenovo.com
X-Msg-Ref: server-4.tower-415.messagelabs.com!1598040368!1186248!1
X-Originating-IP: [103.30.234.7]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.50.3; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 2232 invoked from network); 21 Aug 2020 20:06:10 -0000
Received: from unknown (HELO lenovo.com) (103.30.234.7)
 by server-4.tower-415.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384
 encrypted SMTP; 21 Aug 2020 20:06:10 -0000
Received: from reswpmail04.lenovo.com (unknown [10.62.32.23])
 (using TLSv1.2 with cipher AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by Forcepoint Email with ESMTPS id AD13EB5BE4FE05DF0E42;
 Sat, 22 Aug 2020 04:06:06 +0800 (CST)
Received: from [10.46.48.149] (10.46.48.149) by reswpmail04.lenovo.com
 (10.62.32.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.1913.5; Fri, 21 Aug
 2020 13:06:03 -0700
To: "Limonciello, Mario" <Mario.Limonciello@dell.com>
References: <markpearson@lenovo.com>
 <20200821175310.335873-1-markpearson@lenovo.com>
 <DM6PR19MB2636F1CFCE1E386D6E793E25FA5B0@DM6PR19MB2636.namprd19.prod.outlook.com>
 <1806c4ec-6788-bcc7-7e09-8e5274d2b9d5@lenovo.com>
 <DM6PR19MB26369308415B8235B3C9997EFA5B0@DM6PR19MB2636.namprd19.prod.outlook.com>
From: Mark Pearson <markpearson@lenovo.com>
Message-ID: <9e0c14a9-3b24-4b64-6d9e-b312d28dfd44@lenovo.com>
Date: Fri, 21 Aug 2020 16:06:02 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <DM6PR19MB26369308415B8235B3C9997EFA5B0@DM6PR19MB2636.namprd19.prod.outlook.com>
Content-Language: en-US
X-Originating-IP: [10.46.48.149]
X-ClientProxiedBy: reswpmail04.lenovo.com (10.62.32.23) To
 reswpmail04.lenovo.com (10.62.32.23)
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [67.219.246.112 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [67.219.246.112 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.1 NICE_REPLY_A           Looks like a legit reply (A)
 0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k9DIr-00EnoI-I3
Subject: Re: [ibm-acpi-devel] [External] RE: [PATCH v2] platform/x86:
 thinkpad_acpi: performance mode interface
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
Cc: "ibm-acpi-devel@lists.sourceforge.net"
 <ibm-acpi-devel@lists.sourceforge.net>,
 "bnocera@redhat.com" <bnocera@redhat.com>,
 "ibm-acpi@hmh.eng.br" <ibm-acpi@hmh.eng.br>, Nitin Joshi <njoshi1@lenovo.com>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On 8/21/2020 4:00 PM, Limonciello, Mario wrote:
<snip>
>>>> + +The sysfs entry provides the ability to return the current
>>>> status and to set
>>>> the +desired mode. For example:: + +        echo H >
>>>> /sys/devices/platform/thinkpad_acpi/dytc_perfmode +        echo
>>>> M > /sys/devices/platform/thinkpad_acpi/dytc_perfmode +
>>>> echo L > /sys/devices/platform/thinkpad_acpi/dytc_perfmode +
>>> 
>>> I was thinking about this some more, do you actually want another
>>> mode that "disables"
>>> this feature?   IE "O" turns it off an calls DYTC_DISABLE_CQL.
>>> 
>>> For example if a user wanted to test the recently landed code in
>>> thermald 2.3
>>> and compare performance between the two it seems like this and
>>> that "might" fight.
>>> As an outsider looking in - I of course may be wrong too here.
>>> 
>>> If at some point in the future thermald does a better job than
>>> this implementation you
>>> might also want an "out" to let thermald or another piece of
>>> userland turn this off if it's in the picture.
>>> 
>> I'm still digging into this one. Right now I haven't found a good
>> clean way of just disabling the firmware. Currently when thermald
>> goes in and tweaks the CPU power registers it has the effect of
>> overriding the FW anyway - but I appreciate that's not quite the
>> same as actually doing it explicitly.
>> 
> 
> What about a modprobe parameter to disable at least?  That would at
> least make it pretty easy to make a change, reboot and compare with
> thermald (or other software) without disabling the rest of the
> functionality of the thinkpad_acpi driver.
> 
The problem is I don't have a good way to disable the firmware (that I 
know of yet) so a modprobe parameter wouldn't really do much. I guess it 
could skip providing the sysfs entry points - but the FW will still be 
there doing it's thing, so I'm not sure I see the benefit of that. At 
least the sysfs entry point gives a bit more insight into what is going on.
Let me know if I'm missing something obvious.

Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
