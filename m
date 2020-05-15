Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D70C1D5BBC
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 15 May 2020 23:42:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jZi5H-0007rg-EO; Fri, 15 May 2020 21:41:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andy.shevchenko@gmail.com>) id 1jZi5F-0007rY-UN
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 15 May 2020 21:41:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6wTjQtb75vxwwUpQOuSXET7G/gWKLTlHS4eXtBSEVQs=; b=TkoqBXQzbdf1J6O5THwLOBAeFy
 vJu6AL5LKghHykkbtyyqyTKnn3NCd9zh9rk4PBr3OILZuoUXL7gkeycHsSCe0I0kZh3VhM+bYX7qM
 PgqkW67JbEoHOhshq62YNmsxu55iK3sd3MbQWXS8+/CV8/zObubnIxt6UGcV7j4kira4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6wTjQtb75vxwwUpQOuSXET7G/gWKLTlHS4eXtBSEVQs=; b=H/tUL/WmRJvZZ2r43czXedDt7s
 /g2effq2gEGcag0mxb5WDhe9zymj93FHpKiQY62d6U6upDq3vIx9f6Xkzzbrtpx3DgONsczuTZfNr
 BJWZIA7+2QJ0u372LhTJrrNv0+opVYrmCeINumijeet62QmM9ZCBKgHYj/nHe20u0PaY=;
Received: from mail-pj1-f65.google.com ([209.85.216.65])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jZi5E-009CZ3-Ij
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 15 May 2020 21:41:33 +0000
Received: by mail-pj1-f65.google.com with SMTP id t40so1575539pjb.3
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Fri, 15 May 2020 14:41:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6wTjQtb75vxwwUpQOuSXET7G/gWKLTlHS4eXtBSEVQs=;
 b=gOpkghCRHL3EAX5gs7prRJRg7VXtB8bVIHhwOFBx3+pdE62N55QVFUZ5o/a5lNTENi
 y+7yotxmOri7Y8CRsOp+zLAQB3Rn32rHzgGkhE0aaTVkU/0m5/nANXOFBuKfWzo3torc
 l5g1p5aVgzTJdANWIEdkMa5auAFlqvPb6M30qkHfjcBx7AwIcs9gJuuhug10W+WJhQ7l
 pKx6nxQ4FuAwcAMRMlLnzqufxM8gHA4OF0CZQIDpDaJqrgwEv9+lFZRGki7428JDIJaJ
 ZFLmQQ5Rmj+PHtnngYX8tMjQpVhQM4l7FFDlvN2HE/+ve97T1PMO7PC4lsvpjF4VlnI8
 sL8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6wTjQtb75vxwwUpQOuSXET7G/gWKLTlHS4eXtBSEVQs=;
 b=lYCH84nlITXcRHK5IYd6jjOkX3rTuKcGu+NQObrPD2uKrXq3LEGGNznKUcg1IqNuZB
 y6hRqgDu3+1ZBN7CimxW7ZFzdRPeIgfSKEcvlqXiRE+S2EfnJdDNhIq1M50dQc0y6/58
 YT3Y4YOPcAoJmavxFzR4IckZSEq5s4AcLXUMJglMP6MNCZvYRY1uSYJXktVOqoh5g9As
 zWQJU7k+B6JtpoEhrrMGj/89l70ojb51hB2/kIkZYXRAFG9TPvseG63UJG31rpI0BqDo
 NKMSVT7GZKh4oGPGkQYchhAlFCDTYIOvu0739BtZ8yd/cXTgn4JNwbTITo5dHcR/uxYs
 +Ykg==
X-Gm-Message-State: AOAM533sNX7OPDpZ98sDtxR/d/Ym1cqGnMiE9GoA5iq+Y9j/3kVM1f4h
 ySt0ayWz3widG8wRu0FhdawHOWv95u85vOxVip4=
X-Google-Smtp-Source: ABdhPJwS0Wkz5kxUpYKWbjdCPIUB4hTjF7ZvgeUjFNqAvQ8AgR8dPU1wUc7lA/tlSrjbHm3FivGbMcrFEHf7ilSH5vw=
X-Received: by 2002:a17:90b:94a:: with SMTP id
 dw10mr5781646pjb.228.1589578887038; 
 Fri, 15 May 2020 14:41:27 -0700 (PDT)
MIME-Version: 1.0
References: <1505028180.591737.1589564161284.ref@mail.yahoo.com>
 <1505028180.591737.1589564161284@mail.yahoo.com>
In-Reply-To: <1505028180.591737.1589564161284@mail.yahoo.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sat, 16 May 2020 00:41:16 +0300
Message-ID: <CAHp75VfC0NdyyR1zXbk47G_9y5ResrpV+w3cOntDqP_naocuvQ@mail.gmail.com>
To: "larsh@apache.org" <larsh@apache.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andy.shevchenko[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.65 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1jZi5E-009CZ3-Ij
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
 <ibm-acpi-devel@lists.sourceforge.net>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

+Cc: ACPI ML and Rafael

On Fri, May 15, 2020 at 8:36 PM larsh@apache.org <larsh@apache.org> wrote:
>
> Hi. I hope this is the right forum to raise this...
>
> For a while I have noticed that my CPU (i9-9880H in a Lenovo X1 Extreme Gen2) never enters any sleep mode below pc2.
> (Confirmed with powertop and /sys/kernel/debug/pmc_core/package_cstate_show)
>
> Interestingly the CPU *can* reachers deeper C states *after* a resume from sleep (either S0ix or S3, i.e. freeze or mem).
>
> This article finally pointed me in the right direction: https://01.org/blogs/qwang59/2020/linux-s0ix-troubleshooting
>
> Somehow SOUTHPORT_A is requesting a max latency of 1 us.
> There are no external devices attached.
>
> This is before a resume:
>
> $ cat /sys/kernel/debug/pmc_core/ltr_show
> SOUTHPORT_A                             LTR: RAW: 0x88018c01            Non-Snoop(ns): 1024             Snoop(ns): 32768           <-------
> SOUTHPORT_B                             LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> SATA                                    LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> GIGABIT_ETHERNET                        LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> XHCI                                    LTR: RAW: 0x13ff                Non-Snoop(ns): 0                Snoop(ns): 0
> Reserved                                LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> ME                                      LTR: RAW: 0x8000800             Non-Snoop(ns): 0                Snoop(ns): 0
> EVA                                     LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> SOUTHPORT_C                             LTR: RAW: 0x9f409f4             Non-Snoop(ns): 0                Snoop(ns): 0
> HD_AUDIO                                LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> CNV                                     LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> LPSS                                    LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> SOUTHPORT_D                             LTR: RAW: 0x8c548c54            Non-Snoop(ns): 2752512          Snoop(ns): 2752512
> SOUTHPORT_E                             LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> CAMERA                                  LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> ESPI                                    LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> SCC                                     LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> ISH                                     LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> UFSX2                                   LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> EMMC                                    LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> WIGIG                                   LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> CURRENT_PLATFORM                        LTR: RAW: 0x40201               Non-Snoop(ns): 0                Snoop(ns): 0
> AGGREGATED_SYSTEM                       LTR: RAW: 0x7fbfdfe             Non-Snoop(ns): 0                Snoop(ns): 0
>
> Notice the 1000ns max latency requirement for SOUTHPORT_A.
>
> Ignoring SOUTHPORT_A via /sys/kernel/debug/pmc_core/ltr_ignore subsequently allows the CPU to reach deep sleep states.
>
> After a resume it looks like suddenly SOUTHPORT_C is active and with a less tight latency requirement:
>
> $ cat /sys/kernel/debug/pmc_core/ltr_show
> SOUTHPORT_A                             LTR: RAW: 0x8010c01             Non-Snoop(ns): 0                Snoop(ns): 0               <--------
> SOUTHPORT_B                             LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> SATA                                    LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> GIGABIT_ETHERNET                        LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> XHCI                                    LTR: RAW: 0x13ff                Non-Snoop(ns): 0                Snoop(ns): 0
> Reserved                                LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> ME                                      LTR: RAW: 0x8000800             Non-Snoop(ns): 0                Snoop(ns): 0
> EVA                                     LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> SOUTHPORT_C                             LTR: RAW: 0x88468846            Non-Snoop(ns): 71680            Snoop(ns): 71680           <---------
> HD_AUDIO                                LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> CNV                                     LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> LPSS                                    LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> SOUTHPORT_D                             LTR: RAW: 0x8c548c54            Non-Snoop(ns): 2752512          Snoop(ns): 2752512
> SOUTHPORT_E                             LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> CAMERA                                  LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> ESPI                                    LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> SCC                                     LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> ISH                                     LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> UFSX2                                   LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> EMMC                                    LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> WIGIG                                   LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> CURRENT_PLATFORM                        LTR: RAW: 0x40201               Non-Snoop(ns): 0                Snoop(ns): 0
> AGGREGATED_SYSTEM                       LTR: RAW: 0x904824              Non-Snoop(ns): 0                Snoop(ns): 0
>
> Does anybody know what's going on or how to debug this further?
>
> As stated above, I was able to work around this problem by ignoring SOUTHPORT_A via /sys/kernel/debug/pmc_core/ltr_ignore.
> There has to be a better way, and I'm sure I'm not the only one running into this.
>
> Thanks.
>
> -- Lars



-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
