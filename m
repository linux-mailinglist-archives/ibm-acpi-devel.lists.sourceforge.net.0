Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 793021D75A5
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 18 May 2020 12:53:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jadOs-00081V-9z; Mon, 18 May 2020 10:53:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rjw@rjwysocki.net>) id 1jadOq-00080F-CM
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 18 May 2020 10:53:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=d/t79XC5sP0Xixv5IZ9JsWbXurReQ4VR3Zs4+T5Yns0=; b=H95Hm7720B+BcxCOwsi34KeLOh
 EcpNL7hifaEF1c81aahaCseDmJYbPmHSX5euGk31tCasyxMb8J3mmPZlouAoxlTK+dB0qgnQQKoq/
 AG7o6aCWCZcqOdOCx6AB9PWirXhvFBbZZZuYscyXfOUSaggQ15IFHnGz5sxdeOIcwCcI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=d/t79XC5sP0Xixv5IZ9JsWbXurReQ4VR3Zs4+T5Yns0=; b=S2ADm8xu/NwaISwBSVi93Zx+P3
 Vr0LgWk67ULbAcQG3I4JqigTqr9UKjL1ahneWDlWmyQC2dXdmX7fk/5c5igVQgKamGmZCxj6fBR7G
 SYCkSeS+mSuttHqo/05om6dStXjc5P79N8T+Zsnznw7uT7pj6K4ToNAPUBKFx7LFZisQ=;
Received: from cloudserver094114.home.pl ([79.96.170.134])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jadOm-00Gn3b-Qo
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 18 May 2020 10:53:36 +0000
Received: from 89-64-86-21.dynamic.chello.pl (89.64.86.21) (HELO
 kreacher.localnet)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.83.415)
 id 3ef8d7e6de62ea20; Mon, 18 May 2020 12:26:35 +0200
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 18 May 2020 12:26:34 +0200
Message-ID: <2952287.p5mUHPKNZq@kreacher>
In-Reply-To: <CAHp75VfC0NdyyR1zXbk47G_9y5ResrpV+w3cOntDqP_naocuvQ@mail.gmail.com>
References: <1505028180.591737.1589564161284.ref@mail.yahoo.com>
 <1505028180.591737.1589564161284@mail.yahoo.com>
 <CAHp75VfC0NdyyR1zXbk47G_9y5ResrpV+w3cOntDqP_naocuvQ@mail.gmail.com>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: 01.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jadOm-00Gn3b-Qo
Subject: Re: [ibm-acpi-devel] Low Latency Tolerance preventing Intel Package
 from entering deep sleep states
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
 <ibm-acpi-devel@lists.sourceforge.net>, "larsh@apache.org" <larsh@apache.org>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 David Box <david.e.box@linux.intel.com>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Friday, May 15, 2020 11:41:16 PM CEST Andy Shevchenko wrote:
> +Cc: ACPI ML and Rafael

+Cc: David Box

> On Fri, May 15, 2020 at 8:36 PM larsh@apache.org <larsh@apache.org> wrote:
> >
> > Hi. I hope this is the right forum to raise this...
> >
> > For a while I have noticed that my CPU (i9-9880H in a Lenovo X1 Extreme Gen2) never enters any sleep mode below pc2.
> > (Confirmed with powertop and /sys/kernel/debug/pmc_core/package_cstate_show)
> >
> > Interestingly the CPU *can* reachers deeper C states *after* a resume from sleep (either S0ix or S3, i.e. freeze or mem).
> >
> > This article finally pointed me in the right direction: https://01.org/blogs/qwang59/2020/linux-s0ix-troubleshooting
> >
> > Somehow SOUTHPORT_A is requesting a max latency of 1 us.
> > There are no external devices attached.
> >
> > This is before a resume:
> >
> > $ cat /sys/kernel/debug/pmc_core/ltr_show
> > SOUTHPORT_A                             LTR: RAW: 0x88018c01            Non-Snoop(ns): 1024             Snoop(ns): 32768           <-------
> > SOUTHPORT_B                             LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> > SATA                                    LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> > GIGABIT_ETHERNET                        LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> > XHCI                                    LTR: RAW: 0x13ff                Non-Snoop(ns): 0                Snoop(ns): 0
> > Reserved                                LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> > ME                                      LTR: RAW: 0x8000800             Non-Snoop(ns): 0                Snoop(ns): 0
> > EVA                                     LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> > SOUTHPORT_C                             LTR: RAW: 0x9f409f4             Non-Snoop(ns): 0                Snoop(ns): 0
> > HD_AUDIO                                LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> > CNV                                     LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> > LPSS                                    LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> > SOUTHPORT_D                             LTR: RAW: 0x8c548c54            Non-Snoop(ns): 2752512          Snoop(ns): 2752512
> > SOUTHPORT_E                             LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> > CAMERA                                  LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> > ESPI                                    LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> > SCC                                     LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> > ISH                                     LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> > UFSX2                                   LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> > EMMC                                    LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> > WIGIG                                   LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> > CURRENT_PLATFORM                        LTR: RAW: 0x40201               Non-Snoop(ns): 0                Snoop(ns): 0
> > AGGREGATED_SYSTEM                       LTR: RAW: 0x7fbfdfe             Non-Snoop(ns): 0                Snoop(ns): 0
> >
> > Notice the 1000ns max latency requirement for SOUTHPORT_A.
> >
> > Ignoring SOUTHPORT_A via /sys/kernel/debug/pmc_core/ltr_ignore subsequently allows the CPU to reach deep sleep states.
> >
> > After a resume it looks like suddenly SOUTHPORT_C is active and with a less tight latency requirement:
> >
> > $ cat /sys/kernel/debug/pmc_core/ltr_show
> > SOUTHPORT_A                             LTR: RAW: 0x8010c01             Non-Snoop(ns): 0                Snoop(ns): 0               <--------
> > SOUTHPORT_B                             LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> > SATA                                    LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> > GIGABIT_ETHERNET                        LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> > XHCI                                    LTR: RAW: 0x13ff                Non-Snoop(ns): 0                Snoop(ns): 0
> > Reserved                                LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> > ME                                      LTR: RAW: 0x8000800             Non-Snoop(ns): 0                Snoop(ns): 0
> > EVA                                     LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> > SOUTHPORT_C                             LTR: RAW: 0x88468846            Non-Snoop(ns): 71680            Snoop(ns): 71680           <---------
> > HD_AUDIO                                LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> > CNV                                     LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> > LPSS                                    LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> > SOUTHPORT_D                             LTR: RAW: 0x8c548c54            Non-Snoop(ns): 2752512          Snoop(ns): 2752512
> > SOUTHPORT_E                             LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> > CAMERA                                  LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> > ESPI                                    LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> > SCC                                     LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> > ISH                                     LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> > UFSX2                                   LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> > EMMC                                    LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> > WIGIG                                   LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> > CURRENT_PLATFORM                        LTR: RAW: 0x40201               Non-Snoop(ns): 0                Snoop(ns): 0
> > AGGREGATED_SYSTEM                       LTR: RAW: 0x904824              Non-Snoop(ns): 0                Snoop(ns): 0
> >
> > Does anybody know what's going on or how to debug this further?
> >
> > As stated above, I was able to work around this problem by ignoring SOUTHPORT_A via /sys/kernel/debug/pmc_core/ltr_ignore.
> > There has to be a better way, and I'm sure I'm not the only one running into this.
> >
> > Thanks.
> >
> > -- Lars
> 
> 
> 
> 






_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
