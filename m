Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6384A21B50C
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 10 Jul 2020 14:29:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jts92-0007Vu-T3; Fri, 10 Jul 2020 12:28:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <markpearson@lenovo.com>) id 1jts91-0007Vm-KC
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 10 Jul 2020 12:28:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HBXNMw3dNi2P9yyxXAPIHWSSCmKONCfsxBWQRzIVVCE=; b=GrT3UxEgdO2aTgMy02LA8Lzto0
 b3jATUCrnbkbNgdpCJPk2xW+JfFhwJLUgxRwGoh0ezDmy3c2fOVLYhKMAFQlMl9pvj6M1iwGFwN11
 +rXnSJUdn4TX3FmtPrRYWSClIpwSbmu5HWYELxOjbQfFY4mz8dmbH2/0WE9fdj/cbnWE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HBXNMw3dNi2P9yyxXAPIHWSSCmKONCfsxBWQRzIVVCE=; b=gXJE5cwbpmDf4I+AVqjSO5uKUu
 mwMqNEEG+9dftu3kirEZzD+LkzhwsE5Q3dbZgqLfjUSGbJZYu2H9cCTU9HV8bssvX5nCa73gym13R
 N670GBCyQWLb+owyIqR/bEXLEaZaNPG+Cdp9Hx1H+PKHB3G5TZiEJAdettMJL3CrJZ10=;
Received: from mail1.bemta24.messagelabs.com ([67.219.250.5])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jts8u-001zk0-Km
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 10 Jul 2020 12:28:47 +0000
Received: from [100.112.131.194] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-5.bemta.az-a.us-west-2.aws.symcld.net id 27/02-15041-7EE580F5;
 Fri, 10 Jul 2020 12:28:23 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupmleJIrShJLcpLzFFi42JJl3vFpvs8jiP
 e4NQDFouXEw4zWjyYm27x5vh0JovZh20s5jxby2ixes8LZgc2j52z7rJ7/D7A6LF7wWcmj/f7
 rrJ5fN4kF8AaxZqZl5RfkcCasfXQdvaCJoGKl6+XszcwfuHpYuTiEBL4zyjRtXs3E4TzkFFia
 vttIIeTQ1ggXuL/gWZmEFtEIFSi/edVVpAiZoFZTBLTTk9kgeiYwiTxcOpFNpAqNgFtiS1bfo
 HZvAK2EscnXwOzWQRUJbrndLGA2KICsRK/2g8yQ9QISpyc+QQszikQKHH+7DNWEJtZwEJi5vz
 zjBC2uMStJ/OZIGx5ie1v54D1SggoSFzc1s8GYSdILHt5h3kCo+AsJGNnIRk1C8moWUhGLWBk
 WcVokVSUmZ5RkpuYmaNraGCga2hopGtobKhrZGiml1ilm6hXWqxbnlpcomukl1herFdcmZuck
 6KXl1qyiREYRykFzTd2MM5680HvEKMkB5OSKO+0j+zxQnxJ+SmVGYnFGfFFpTmpxYcYZTg4lC
 R4C2M54oUEi1LTUyvSMnOAMQ2TluDgURLh3RQDlOYtLkjMLc5Mh0idYlSUEueVAOkTAElklOb
 BtcHSyCVGWSlhXkYGBgYhnoLUotzMElT5V4ziHIxKwryXQMbzZOaVwE1/BbSYCWjxUQ42kMUl
 iQgpqQamXT57Fy63Mmbb0l0Zlabec9OrfbbPjKctR9U5ZCtvbdtZkCdYefAin9HxPZrVt5gcP
 qeWx8/5d5Fd8wp3Vva+O7dnPGM77ml05gzvBK2LTH9qJu8RmbTzjL5KYcin3KAXx4JMq2MN12
 0XvJ7+fpPk3vLYoofMTMYbd+lwP5yl+2rFm8ZzLg6aKzh33tC7surjO9aQye9PvLg+wWO1xP0
 7LzKa7KsXHM5Ld98o3HtrwYdz8X9a99acXXxSZkV9S/4Gtto1u4Wbdwr/PqqRpSL2TeRD581t
 jwQiAh59lArT7DgT11b9tNAmdm6Z388Zgny7/eIc11wSnC93dhProfPRp/8rRU7ufOnVbK9x2
 VqzXImlOCPRUIu5qDgRAP+Jj7OeAwAA
X-Env-Sender: markpearson@lenovo.com
X-Msg-Ref: server-27.tower-326.messagelabs.com!1594384100!58578!1
X-Originating-IP: [103.30.234.6]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.50.2; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 24716 invoked from network); 10 Jul 2020 12:28:22 -0000
Received: from unknown (HELO lenovo.com) (103.30.234.6)
 by server-27.tower-326.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384
 encrypted SMTP; 10 Jul 2020 12:28:22 -0000
Received: from reswpmail04.lenovo.com (unknown [10.62.32.23])
 (using TLSv1.2 with cipher AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by Forcepoint Email with ESMTPS id DB020BC103158074BEEF;
 Fri, 10 Jul 2020 20:28:18 +0800 (CST)
Received: from [10.38.58.247] (10.38.58.247) by reswpmail04.lenovo.com
 (10.62.32.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.1913.5; Fri, 10 Jul
 2020 05:28:16 -0700
To: Andy Shevchenko <andy.shevchenko@gmail.com>, Hans de Goede
 <hdegoede@redhat.com>
References: <markpearson@lenovo.com>
 <20200703012353.26413-1-markpearson@lenovo.com>
 <CAHp75Vcs15wGCzwW8Pq7AXyqQnvnopNdFP1nDE0nf+ZTz=9zFw@mail.gmail.com>
 <7c1698a6-ebd6-553d-a686-d9bd4e5a5e99@redhat.com>
 <CAHp75Ve-qOs8VosoxEaHH1EnK-r16Sx0ki3uj14yZJWyuwC88w@mail.gmail.com>
From: Mark Pearson <markpearson@lenovo.com>
Message-ID: <fbbaa036-2bd5-b1cc-862e-f006e9fbefde@lenovo.com>
Date: Fri, 10 Jul 2020 08:28:15 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAHp75Ve-qOs8VosoxEaHH1EnK-r16Sx0ki3uj14yZJWyuwC88w@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.38.58.247]
X-ClientProxiedBy: reswpmail04.lenovo.com (10.62.32.23) To
 reswpmail04.lenovo.com (10.62.32.23)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [67.219.250.5 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [67.219.250.5 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: lenovo.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1jts8u-001zk0-Km
Subject: Re: [ibm-acpi-devel] [External] Re: [PATCH v5] platform/x86:
 thinkpad_acpi: lap or desk mode interface
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
Cc: Sugumaran <slacshiminar@lenovo.com>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 Thinkpad-acpi devel ML <ibm-acpi-devel@lists.sourceforge.net>,
 Nitin Joshi <njoshi1@lenovo.com>, Bastien Nocera <bnocera@redhat.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net



On 7/10/2020 8:20 AM, Andy Shevchenko wrote:
> On Fri, Jul 10, 2020 at 11:00 AM Hans de Goede <hdegoede@redhat.com> wrote:
>>
>> Hi,
>>
>> On 7/9/20 8:02 PM, Andy Shevchenko wrote:
>>> On Fri, Jul 3, 2020 at 4:24 AM Mark Pearson <markpearson@lenovo.com> wrote:
>>>>
>>>> Newer Lenovo Thinkpad platforms have support to identify whether the
>>>> system is on-lap or not using an ACPI DYTC event from the firmware.
>>>>
>>>> This patch provides the ability to retrieve the current mode via sysfs
>>>> entrypoints and will be used by userspace for thermal mode and WWAN
>>>> functionality
>>>
>>> Hans, do you think it's good to have custom ABI for this? I think you
>>> may be know better what types of ABI we already have for such thing.
>>
>> Actually, Mark asked me the same question before submitting his
>> patch upstream. I'm never a fan of custom ABI for this. But for now
>> the solution Lenovo has chosen to deal with thermal management
>> issues on modern hw is unique to Lenovo and we do not have anything
>> like this anywhere else.
>>
>> So for now I believe that a custom ABI is best.
>>
>> If we see this becoming a common feature on more platforms then we can
>> design a generic API for it once we have a better idea how this would
>> look like when implemented by others and then thinkpad_acpi can easily
>> add support for the new generic interface, while keeping its own
>> custom interface for backward compatibility.
> 
> Thank you very much for the elaborative comment, appreciated!
> 
Yes, thanks Hans from me too.

Just to note, I'm very happy to work on or contribute to a generic 
framework if that makes sense in the future. I'd likely need some help & 
guidance on the best way to do it but if you see a need let me know.

Andy - let me know if you need anything else for this patch. I have a 
follow on patch for a similar sensor that I'll send up once this one is 
approved - I figured we should learn from our mistakes on this one 
before duplicating the errors.

Thanks all for the support, reviews and guidance

Mark



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
