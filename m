Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B645926DD22
	for <lists+ibm-acpi-devel@lfdr.de>; Thu, 17 Sep 2020 15:49:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1kIuHu-00071Z-6P; Thu, 17 Sep 2020 13:49:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <markpearson@lenovo.com>) id 1kIuHt-00071R-2b
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 17 Sep 2020 13:49:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1B9OZ1qaxfzZ8NzGFKNtv4vDYQeHTDtbpxeF793+JzM=; b=W6kJu8C6xBl6WPaKyQPeGMGIy7
 05yjAWUu40UQZc9DSit+iHlVgD+JvjTZiKqF/NgBhzit1338Ymge6RGsDBnsvo4/Q2BSMGUwPLIQF
 KZPJ2w5gtwXp1XBhLn9Slcf9fCM+izmVW2CLIp9MBr2RCBdk9pdFQ+OaBiq8UTr87Wf0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1B9OZ1qaxfzZ8NzGFKNtv4vDYQeHTDtbpxeF793+JzM=; b=kj+cpOaCnNxTN9EtoIbJTU91iY
 lX27Yv+ugtDfG5Zf6mDBSOTNl8SLYp9qerS/owaasolktPjYAhWoNCAUP4fDq6bUdhKL4Om9qHJ8t
 AEzBPEZv90BlIfewRnkBfZ95ooyREqWdSBCNP170Nn21cjm6yqpYN3fp+wYfLidw3pGU=;
Received: from mail1.bemta23.messagelabs.com ([67.219.246.3])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kIuHo-00ECNx-Iz
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 17 Sep 2020 13:49:25 +0000
Received: from [100.112.1.169] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-3.bemta.az-b.us-east-1.aws.symcld.net id 92/45-23514-059636F5;
 Thu, 17 Sep 2020 13:49:04 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupkleJIrShJLcpLzFFi42JJl3vFpuuXmRx
 vsPiKocWDuekWb45PZ7KYfdjGYs6ztYwWZxYmWTR1NrFZrN7zgtmB3WPSzBnMHr8PMHrsXvCZ
 yeP9vqtsHp83yQWwRrFm5iXlVySwZpx4+5O54BZfxcT2+gbGl9xdjFwcQgL/GSWWPz/DAuE8Z
 JR4sm4fcxcjJ4ewQLzE57dLWEFsEQF1iakdPWwgRcwCzxglzs47zQ6SEBLoZJT4cMsIxGYT0J
 bYsuUXG4jNK2ArcXR2O1gNi4CqxNPeT0xdjBwcogKxEt9m+kGUCEqcnPmEBSTMKWAncfRRLEi
 YWcBCYub884wQtrjErSfzmSBseYntb+eAnSYhoCCx8vtCNgg7QWLZyzvMExgFZyGZOgvJqFlI
 Rs1CMmoBI8sqRrOkosz0jJLcxMwcXUMDA11DQyNdY10jA2O9xCrdJL3SYt3UxOISXUO9xPJiv
 eLK3OScFL281JJNjMAYSilgPr2DcembD3qHGCU5mJREeQ+nJ8cL8SXlp1RmJBZnxBeV5qQWH2
 KU4eBQkuDdkgaUEyxKTU+tSMvMAcYzTFqCg0dJhLcqAyjNW1yQmFucmQ6ROsWoKCXOmwHSJwC
 SyCjNg2uDpZBLjLJSwryMDAwMQjwFqUW5mSWo8q8YxTkYlYR59UHG82TmlcBNfwW0mAloMRtn
 IsjikkSElFQD02wBu6QHW1JWrH0retdTNPt+fvqyNbfXHPW69i/MSzDjlN6Bhd3cvgnvsg7/l
 otr3T+h59Ycc6MFKtHnjr//Y/mg9eGRmxsit3PLNp5i6a28mv3235aI205pXdc8A65wXXwRy1
 f050zDfrdnJ9z+vzYu3cJS4/XDILeFZ87DOReWeCb/0/5Z2Dn3VEDyute+H1LbnqjKBT0utP2
 04Mvlu6aM2o1Re9P3cexc5bzYLYPjetiNtAZ9u/YKsbhHbx6VZ8c/7w5++3Jhp8w3lgUuDMs8
 HXm+9ZpW6CwK5DnVrqogvLdQr/Wg/vqfJW8Td724eLhUzITZ/xLfsba36hnyZzcv7dPoK0o00
 pnf+dy1TYmlOCPRUIu5qDgRADVCTSmcAwAA
X-Env-Sender: markpearson@lenovo.com
X-Msg-Ref: server-28.tower-395.messagelabs.com!1600350539!2905!1
X-Originating-IP: [103.30.234.6]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.60.3; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 8060 invoked from network); 17 Sep 2020 13:49:02 -0000
Received: from unknown (HELO lenovo.com) (103.30.234.6)
 by server-28.tower-395.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384
 encrypted SMTP; 17 Sep 2020 13:49:02 -0000
Received: from reswpmail04.lenovo.com (unknown [10.62.32.23])
 (using TLSv1.2 with cipher AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by Forcepoint Email with ESMTPS id 4B981D91DDC20B8E1365;
 Thu, 17 Sep 2020 21:48:56 +0800 (CST)
Received: from [10.46.52.228] (10.46.52.228) by reswpmail04.lenovo.com
 (10.62.32.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2044.4; Thu, 17 Sep
 2020 06:48:54 -0700
To: Hans de Goede <hdegoede@redhat.com>
References: <markpearson@lenovo.com>
 <20200821175310.335873-1-markpearson@lenovo.com>
 <56b9e961-5dd8-8ac1-fa5a-3fb0b222b2e8@redhat.com>
From: Mark Pearson <markpearson@lenovo.com>
Message-ID: <26277791-0f0d-3958-a73f-951606fe2fef@lenovo.com>
Date: Thu, 17 Sep 2020 09:48:52 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <56b9e961-5dd8-8ac1-fa5a-3fb0b222b2e8@redhat.com>
Content-Language: en-US
X-Originating-IP: [10.46.52.228]
X-ClientProxiedBy: reswpmail04.lenovo.com (10.62.32.23) To
 reswpmail04.lenovo.com (10.62.32.23)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [67.219.246.3 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [67.219.246.3 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1kIuHo-00ECNx-Iz
Subject: Re: [ibm-acpi-devel] [External] Re: [PATCH v2] platform/x86:
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
Cc: mario.limonciello@dell.com, ibm-acpi@hmh.eng.br,
 platform-driver-x86@vger.kernel.org, ibm-acpi-devel@lists.sourceforge.net,
 Jared Dominguez <jaredz@redhat.com>, Nitin Joshi <njoshi1@lenovo.com>,
 bnocera@redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Hans,

On 9/17/2020 7:39 AM, Hans de Goede wrote:
> Hi,
> 
> On 8/21/20 7:53 PM, Mark Pearson wrote:
>> Lenovo Thinkpad platforms with DYTC version 5 and newer have enhanced
>> firmware to provide different performance/thermal modes.
>>
<Snip>
> 
> 
> So we recently had another driver show up with almost the same interface 
> / thing:
> 
> https://patchwork.kernel.org/patch/11774509/
> 
> So I believe that we really should come up with a standardize sysfs 
> interface
> for this under /sys/class/<some-name>
> 
> Please see the "RFC: offering a standardized (/sys/class) userspace API 
> for selecting
> system/laptop performance-profiles" mail thread which I just started.
> 
> Note I've not looked at the rest of this patch at all yet. But this 
> patch should
> not be merged until the userspace API question is settled so nack to 
> this patch
> for now (sorry).
> 
> Mark, once we have an agreement on what the userspace API for this should
> look like I can implement a small helper-library / class-core for 
> registering
> the class device for this, modify this patch to use that and test it on 
> a X1C8.
> 
> Or if you prefer you can do this yourself. Please let me know how you 
> want to
> proceed with this.
I'll join in that thread and depending on what is involved and the level 
of kernel expertise involved will contribute as much as I can. For sure 
will modify, integrate and test this implementation once that is available.

If there is a way I can 'tweak' this patch to expose the current 
performance mode to users in a way that is acceptable until the generic 
solution is available let me know and I'll do that. I'm just guessing 
that a generic solution needing input from multiple vendors could take a 
little while to develop - having a way to check what mode your system is 
in is really useful given you can change the mode using hotkeys.

Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
