Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 190B424E0B3
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 21 Aug 2020 21:36:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1k9CpY-0001I5-9A; Fri, 21 Aug 2020 19:36:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <markpearson@lenovo.com>) id 1k9CpX-0001Hv-1W
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 21 Aug 2020 19:36:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iaSB3j8utnh/fec/w4bzw3AdJc7+lDF2Gl/RpWsvtw8=; b=JnAV4Zkukta4Vm0eRYjNp/HNvO
 Dvl2kSCOfmzrHxYLRuJ71ssOqOs9ti2kQ5zNtyDqRcdZQ9K/zSyyHdAViUOtyKYvE9ZCihbN9S8Nk
 wTNbmuP6hRar3cjcOGK4JnRVn/oFedGq532hA86FZVgloC/eDdwn8tu6lSRxLVmbPaAA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iaSB3j8utnh/fec/w4bzw3AdJc7+lDF2Gl/RpWsvtw8=; b=Y9AwrpfIaWoQGiVI6G23hYwNDe
 TQLKWUanQIl/H4jjy8HzSuXFzvPhcaApYU3aZalARz02oer1YO0rsMhxQ8KSSyFILxURnR0OmCpXa
 hQNkXvvAMny5Xw2kCVgzbTFoiPpVJRfBUm3OFOJC8Xb7Ykp3bIyM+yZQyOboExBFZ+OA=;
Received: from mail1.bemta24.messagelabs.com ([67.219.250.113])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k9CpV-003PKt-4O
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 21 Aug 2020 19:36:02 +0000
Received: from [100.112.133.110] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-2.bemta.az-b.us-west-2.aws.symcld.net id 45/E7-46141-312204F5;
 Fri, 21 Aug 2020 19:35:47 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmplleJIrShJLcpLzFFi42JJl3vFrius5BB
 vsPSUoMWDuekWsw/bWMx5tpbRoqmzic1i9Z4XzA6sHpNmzmD2+H2A0WP3gs9MHu/3XWXz+LxJ
 LoA1ijUzLym/IoE149vFr4wF2wUrWnfeYmxg/MLbxcjFISTwn1HiRfd95i5GTiDnIaPE+TMpI
 LawQLzE/ycL2EFsEQFTiV/zprCDNDALzGGS2HHrHSNE9wpGiScfzrCAVLEJaEts2fKLDcTmFb
 CVeDN1OdhUFgFViT+Lt4FNEhWIlVg+9Q8rRI2gxMmZT8B6OYHiq+ccBqthFrCQmDn/PCOELS5
 x68l8JghbXmL72zlgMyUEFCRmXJjHBGEnSCx7eYd5AqPgLCRjZyEZNQvJqFlIRi1gZFnFaJFU
 lJmeUZKbmJmja2hgoGtoaKRraGyia2hirJdYpZukV1qsW55aXKJrpJdYXqxXXJmbnJOil5das
 okRGDspBW39OxjXv/mgd4hRkoNJSZR3rpBDvBBfUn5KZUZicUZ8UWlOavEhRhkODiUJXmdFoJ
 xgUWp6akVaZg4wjmHSEhw8SiK8NiBp3uKCxNzizHSI1ClGRSlxXhGQhABIIqM0D64NljouMcp
 KCfMyMjAwCPEUpBblZpagyr9iFOdgVBLmtQSZwpOZVwI3/RXQYiagxda5tiCLSxIRUlINTJKN
 r89bzQ+44rs0ukLsWXbgtpt/ilzerl8cxLN3wiHezXXHZRuqNubleXK/mLty29TK7oV7Dta82
 zyvRidtaoTIm/mp2+Yqhi3a/duu8vM2g+ubFr+pCMw9n5z2yPZkk2fU7PmTND1lmev/vzc4HX
 fFUnRZX/xJDWUVm1nfa9x2PK3REOX2sm5e//jBlu+h2gapn67Z/p138K3WlRuPt113LHnTK58
 jxBhZdP54kt+u668X8Qd+u3Xi09zXVUJ3tFfXu66/4q34v+n0L+EZ8txh8kkTeUWtLlZ/e32O
 N0AqOmPLyhRO79mGDPuO/rs0XUc309sq4P+sGwE/wx8uzDrx8cfavH7bPbWP92nNENysxFKck
 WioxVxUnAgAJ7hqGZgDAAA=
X-Env-Sender: markpearson@lenovo.com
X-Msg-Ref: server-31.tower-346.messagelabs.com!1598038544!17767!1
X-Originating-IP: [103.30.234.7]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.50.3; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 12871 invoked from network); 21 Aug 2020 19:35:47 -0000
Received: from unknown (HELO lenovo.com) (103.30.234.7)
 by server-31.tower-346.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384
 encrypted SMTP; 21 Aug 2020 19:35:47 -0000
Received: from reswpmail04.lenovo.com (unknown [10.62.32.23])
 (using TLSv1.2 with cipher AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by Forcepoint Email with ESMTPS id 5BB15C83D2930DA51A00;
 Sat, 22 Aug 2020 03:35:43 +0800 (CST)
Received: from [10.46.48.149] (10.46.48.149) by reswpmail04.lenovo.com
 (10.62.32.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.1913.5; Fri, 21 Aug
 2020 12:35:39 -0700
To: "Limonciello, Mario" <Mario.Limonciello@dell.com>
References: <markpearson@lenovo.com>
 <20200821175310.335873-1-markpearson@lenovo.com>
 <DM6PR19MB2636F1CFCE1E386D6E793E25FA5B0@DM6PR19MB2636.namprd19.prod.outlook.com>
From: Mark Pearson <markpearson@lenovo.com>
Message-ID: <1806c4ec-6788-bcc7-7e09-8e5274d2b9d5@lenovo.com>
Date: Fri, 21 Aug 2020 15:35:38 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <DM6PR19MB2636F1CFCE1E386D6E793E25FA5B0@DM6PR19MB2636.namprd19.prod.outlook.com>
Content-Language: en-US
X-Originating-IP: [10.46.48.149]
X-ClientProxiedBy: reswpmail04.lenovo.com (10.62.32.23) To
 reswpmail04.lenovo.com (10.62.32.23)
X-Spam-Score: -1.0 (-)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [67.219.250.113 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [67.219.250.113 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.1 NICE_REPLY_A           Looks like a legit reply (A)
 1.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k9CpV-003PKt-4O
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

Hi Mario

On 8/21/2020 3:15 PM, Limonciello, Mario wrote:
>>
<snip>
> 
> Thanks for adapting a lot of my feedback, this looks much better to me.
> 
No problems and genuinely thank you for the feedback. Sorry it took so 
long to get this update out - PTO and other things got in the way :)

>>
<snip>
>> +
>> +The sysfs entry provides the ability to return the current status and to set
>> the
>> +desired mode. For example::
>> +
>> +        echo H > /sys/devices/platform/thinkpad_acpi/dytc_perfmode
>> +        echo M > /sys/devices/platform/thinkpad_acpi/dytc_perfmode
>> +        echo L > /sys/devices/platform/thinkpad_acpi/dytc_perfmode
>> +
> 
> I was thinking about this some more, do you actually want another mode that "disables"
> this feature?   IE "O" turns it off an calls DYTC_DISABLE_CQL.
> 
> For example if a user wanted to test the recently landed code in thermald 2.3
> and compare performance between the two it seems like this and that "might" fight.
> As an outsider looking in - I of course may be wrong too here.
> 
> If at some point in the future thermald does a better job than this implementation you
> might also want an "out" to let thermald or another piece of userland turn this off
> if it's in the picture.
> 
I'm still digging into this one. Right now I haven't found a good clean 
way of just disabling the firmware. Currently when thermald goes in and 
tweaks the CPU power registers it has the effect of overriding the FW 
anyway - but I appreciate that's not quite the same as actually doing it 
explicitly.

I'm still discussing with the BIOS team how to implement this - these 
conversations take time.... I suspect I'll need a new BIOS API which 
will take a while to implement and get rolled out. I didn't want to hold 
up this patch as there are benefits for users in the meantime and Lenovo 
do plan on supporting the thermal software going forwards. I'm not not 
dropping the plan to have a disable function as I can see the benefits.

Thanks for the input. Let me know if you want a reviewed-by tag added. I 
think it's kinda awesome having input from a Dell engineer on a Lenovo 
related driver and I hope in the future I can provide the same help ;) 
Open source is awesome.

Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
