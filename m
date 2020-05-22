Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FDD41DE284
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 22 May 2020 10:59:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jc3WQ-0007Ss-S7; Fri, 22 May 2020 08:59:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andy.shevchenko@gmail.com>) id 1jc3WO-0007SU-Lb
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 22 May 2020 08:59:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=V0IWUwMc/srUWcJUu+6/hxd1H7cj5uoLmAUBBeUE/nY=; b=eEYAX42BkbB6wBVPM+N8PtkHMS
 kePjJ43ZGhfPiXstjb9xNBE7eByizlKM93ULPmC8WRbV/bI2aRuduo35cQsvkDjAhWo/WnaChMdwc
 vrdgj64rtvYnOLIgWOqYQoCS3p59drDeoXDrOCge6/KIeDIYee1n7+p310Y/cuQJSOYQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=V0IWUwMc/srUWcJUu+6/hxd1H7cj5uoLmAUBBeUE/nY=; b=WBYgKx+2OzYNjH9qgmvtxy5RhH
 QIk/le+dcRjEctIbz6vS5pbVEEz7B31GCRV96wUpDlyYWn4tqSHK+npDjlA4IaLD3RTt2faXGNF8Z
 Jzxf3FAI7E/LfLM0YtGwn9BcKSd3mwhae7dxy5h/NgZG90vl0ENPAhZG2js7Ed2DWxZc=;
Received: from mail-pj1-f66.google.com ([209.85.216.66])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jc3WM-00CXcI-31
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 22 May 2020 08:59:15 +0000
Received: by mail-pj1-f66.google.com with SMTP id k7so4649623pjs.5
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Fri, 22 May 2020 01:59:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=V0IWUwMc/srUWcJUu+6/hxd1H7cj5uoLmAUBBeUE/nY=;
 b=b0R2Kgc9ZuREKf/56jiSRr+W4l/4mWqn+/PTbWFmPfMPVja+B48AFFDo6iZQ/o50wv
 lUd9GO51RSvxzphhTzwGBlKW16hylYbbEplCW8ihoQch90rpeinw9Qy3H7lx/QtaoBzm
 f3Ms3h4moBV3CVgR/5AXJz6WuKuW9uGz7DUYxKyEgzyZvjNbFP2E4zwelQ7eCfqJ4zIv
 GKTzZ3SzarXIS09blxsQIaePVTmP63FOyKdh9yVbyW7BKYW+eEcZFnS2Uhiwq8byFFBo
 zsjEQYOFunlE09hit14SLny1aZU3Kl0lLb9hBpfAzhLmeoKjrPkLOmiC6Z5zcBQRYUlm
 HIbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=V0IWUwMc/srUWcJUu+6/hxd1H7cj5uoLmAUBBeUE/nY=;
 b=A/yFZlHy6MANic772j0/UuNlmI2Q5lvFljNVQv8MGDOt8ErQF74+ZGF3H25wIN02XQ
 Z1+lwKqlgd0sboWRtsSB0DIz1sYOGXtPvLOc1ybwjiExwSJf06YxHCNYEYIK9Y2xoeU9
 kkWretxixnogCZtI4xLMBy7MHkVjydVMNVHc/Y5FP/CK8sxxPum4/1nDytx775hd4SXs
 o/xwyqkeaukntBBfCIyHiwFmLHN7zfkYZ31Xr3vz5pXYF1jQnOGrkV8YND8ImWLCCjGB
 u1/Qc4zdPKOQ2c6pbWiwQsFAz28sNIyrsSMlrNeRsZNgO6IVGgyovUC259QyLcrD3HcR
 WjQQ==
X-Gm-Message-State: AOAM531S9+pWkaL1G6pNwYpqTqIsvfq0P9HePz1aDrQG/g+0cG+sGDPG
 4vFuiyyZonW+AKl6rwXJ7gnLaUrxN4WlbcKH5XXNSndjMYD1gg==
X-Google-Smtp-Source: ABdhPJzW1PCtrjJS+E3ZJX5U/D6yVKL3hJO8V1b3sbmsgyKBMMjWrXatV4ohJM4jUty8jBBXIxDvZvE0p2k4Egt3f+c=
X-Received: by 2002:a17:90b:113:: with SMTP id
 p19mr3374828pjz.129.1590137941381; 
 Fri, 22 May 2020 01:59:01 -0700 (PDT)
MIME-Version: 1.0
References: <1505028180.591737.1589564161284.ref@mail.yahoo.com>
 <1505028180.591737.1589564161284@mail.yahoo.com>
 <CAHp75VfC0NdyyR1zXbk47G_9y5ResrpV+w3cOntDqP_naocuvQ@mail.gmail.com>
 <2952287.p5mUHPKNZq@kreacher>
 <d0022af356cf9bd5b544187d9a396734d85a76b3.camel@linux.intel.com>
 <193598853.2172716.1590128099214@mail.yahoo.com>
In-Reply-To: <193598853.2172716.1590128099214@mail.yahoo.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 22 May 2020 11:58:44 +0300
Message-ID: <CAHp75VcQSECZeK-5OhJqXaZdW0r8gnvt_PBSKGK4+BKpa9D9KQ@mail.gmail.com>
To: "larsh@apache.org" <larsh@apache.org>,
 Adrian Hunter <adrian.hunter@intel.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andy.shevchenko[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.66 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1jc3WM-00CXcI-31
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
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 "David E. Box" <david.e.box@linux.intel.com>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

+Cc: Adrian

On Fri, May 22, 2020 at 9:15 AM larsh@apache.org <larsh@apache.org> wrote:
>
> Thanks David!
>
> With this I tracked down the SD Card Reader (Genesys Logic, Inc Device 9755) as the culprit.
> These are standard in many ThinkPads.
> The curious part is that resume from suspend (S3 or S0iX) also fixes the problem.
> Looks like the driver is not initializing correctly at boot time.
>
> Transcript:
>
> $ cat /sys/kernel/debug/pmc_core/ltr_show | grep SOUTHPORT
> SOUTHPORT_A                             LTR: RAW: 0x88018c01            Non-Snoop(ns): 1024             Snoop(ns): 32768
> SOUTHPORT_B                             LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> SOUTHPORT_C                             LTR: RAW: 0x9f409f4             Non-Snoop(ns): 0                Snoop(ns): 0
> SOUTHPORT_D                             LTR: RAW: 0x88aa88aa            Non-Snoop(ns): 174080           Snoop(ns): 174080
> SOUTHPORT_E                             LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
>
> $ lspci -t
> -[0000:00]-+-00.0
>            +-01.0-[01]--+-00.0
>            |            \-00.1
>            +-02.0
>            +-04.0
>            +-08.0
>            +-12.0
>            +-14.0
>            +-14.2
>            +-15.0
>            +-16.0
>            +-1c.0-[53]----00.0
>            +-1d.0-[02]----00.0
>            +-1d.6-[52]----00.0
>            +-1e.0
>            +-1f.0
>            +-1f.3
>            +-1f.4
>            +-1f.5
>            \-1f.6
>
> $ lspci | grep 53
> 53:00.0 SD Host controller: Genesys Logic, Inc Device 9755
>
> $ cat /sys/bus/pci/devices/0000\:53\:00.0/power/control
> auto
>
> $ echo 1 > /sys/bus/pci/devices/0000\:53\:00.0/remove
> 1
>
> $ cat /sys/kernel/debug/pmc_core/ltr_show | grep SOUTHPORT
> SOUTHPORT_A                             LTR: RAW: 0x8010c01             Non-Snoop(ns): 0                Snoop(ns): 0
> SOUTHPORT_B                             LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
> SOUTHPORT_C                             LTR: RAW: 0x9f409f4             Non-Snoop(ns): 0                Snoop(ns): 0
> SOUTHPORT_D                             LTR: RAW: 0x8c548c54            Non-Snoop(ns): 2752512          Snoop(ns): 2752512
> SOUTHPORT_E                             LTR: RAW: 0x0                   Non-Snoop(ns): 0                Snoop(ns): 0
>
> Cheers.
>
> -- Lars
>
>
>
>
>
>
>
>
> On Tuesday, May 19, 2020, 9:03:53 AM PDT, David E. Box <david.e.box@linux.intel.com> wrote:
>
>
>
>
>
> > > > Does anybody know what's going on or how to debug this further?
> > > > As stated above, I was able to work around this problem by
> > > > ignoring SOUTHPORT_A via /sys/kernel/debug/pmc_core/ltr_ignore.
> > > > There has to be a better way, and I'm sure I'm not the only one
> > > > running into this.
>
> ltr_show shows the PMC's (Power Management Controller) view of SoC
> devices and busses. The SOUTHPORTs are the PCIe root ports on your
> system. When you run lspci they are the PCI bridges. Generally, the
> bridges are enumerated in the same order as the SOUTHPORTs, so
> SOUTHPORT_A is your first bridge and the device attached to it (shown
> in lspci -t) is the device that was blocking deeper PC states according
> to your debug.
>
> Determine what this device is on your system. If the ltr was low it's
> because that is what the device requested. You should first check that
> runtime pm is enabled for the device. To do this, check the control
> file in /sys/bus/pci/devices/<SSSS:BB:DD.F>/power, where SSSS:BB:DD.F
> is the enumeration of your device as shown in lspci. If it is 'on' then
> runtime pm is disabled. To enable it echo 'auto' into the file with
> root privileges. Enabling runtime pm should allow the driver to reduce
> functionality of the device when idle. This should lead to a larger
> latency request on the PCI bus which should be reflected in ltr_show.
> You can see if the device is actually runtime suspended and how much
> time it's been suspended (or active) by reading the associated files in
> the power folder.
>
> If this doesn't work, then it's possible that your device doesn't
> support runtime pm. This may be purposely for reliability reasons or
> the driver may just lack support. Check forums discussing issues with
> the device and look for possible options in the driver to force pm
> support (generally this will be centered around enabling ASPM).
>
> You can also download powertop to see the package c-state residencies
> more clearly as percentages of time. powertop also has a tunables tab
> that will show the status of runtime pm on all devices on the system
> and allow you to enable them individually.
>
>
> David
>


-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
