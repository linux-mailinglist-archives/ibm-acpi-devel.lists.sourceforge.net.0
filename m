Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 32CCA50C09E
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 22 Apr 2022 22:10:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1nhzbA-0003sb-PU; Fri, 22 Apr 2022 20:09:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hello@maedartmann.name>) id 1nhzbA-0003sU-2g
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 22 Apr 2022 20:09:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Message-ID:
 References:In-Reply-To:Subject:To:From:Date:MIME-Version:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=thbofsRiAbAbvgwLxwY4AYhMnvbssfAk7MbGyuc//ro=; b=DfvVXbx7wKEl2nrdX9D1Vx32V/
 hQsoQ9voN/AQStDKQEt2q0p1oPcwwhPFtLLwZFtM+GDZ0wCit4c9PcHv8ougAWeG0mURnr0tQNOca
 0ilSq0Amg/j2SkriPG2sSadnkEam4D7NQJdfnF4QrLkdJrpjgZYy5pr9iVhDGVGZ8gSw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Message-ID:References:In-Reply-To:
 Subject:To:From:Date:MIME-Version:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=thbofsRiAbAbvgwLxwY4AYhMnvbssfAk7MbGyuc//ro=; b=LQG8u7Z+7nblNsKP+gag0Bh7JV
 igG01Ef70AyP+qMH0DQOkTTsd5xDgUzsObe79QM/gF7u2GurBMKvd+WXbD43Gi44CCJbfTDbQdJgK
 ujKoq20flpOsfFcs//oZjo2ujjHrZKexW6n075hAS0VnmbtMWUpAMZ+67ivTG6+wnEHc=;
Received: from maedartmann.name ([83.138.55.44] helo=mail.maedartmann.name)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nhzb6-006odl-EJ
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 22 Apr 2022 20:09:46 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=maedartmann.name;
 s=dkim; t=1650658170;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=thbofsRiAbAbvgwLxwY4AYhMnvbssfAk7MbGyuc//ro=;
 b=KXbY9DEHuduuzLs9Qd2L5b1NqSZZrKiUm+fyH2VhCrKAo9Lv00wQYSFEtpVmktmo31aydL
 OX2APzw+0cvBT+kRKo90yzfy2RMVR0E4Bda3pZ7fINvwByoDzIl2jsYhyGAq/7vtrCDRLG
 67YhI5Bn1Wvk4QQfNIm/2ncpFEsZeLs3mVnbkqyi7NJgSK3fb2ruVDFWayUG2cAZKl53gS
 A7GyyTpgo5qQ0K2kxZDjnjxhuEnV1dO6Q9rryiMoXTN28r7A5AsbU0VgzIgSRCKpM/0vaQ
 2qtLBrNYPEJKwDUOIlmxhg1nSfM+rSKC4z6D1Yg2auhz6YG/koRhxhnQbKNj+Q==
Date: Fri, 22 Apr 2022 20:09:30 +0000
To: ibm-acpi-devel@lists.sourceforge.net
In-Reply-To: <69a20cc421912cc0768293cf306edc3c@maedartmann.name>
References: <69a20cc421912cc0768293cf306edc3c@maedartmann.name>
Message-ID: <1815d5d3ad48c1c3af706fa907f51900@maedartmann.name>
X-Sender: hello@maedartmann.name
Authentication-Results: mail.maedartmann.name;
 auth=pass smtp.mailfrom=hello@maedartmann.name
X-Spam-Level: **
X-Spamd-Bar: ++
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2022-04-22 14:15, Mae Dartmann via ibm-acpi-devel wrote:
 > Hi, > > I recently got my hands on a ThinkPad L13 Yoga Gen 2 AMD (the 5850U
 > spec). It works great on Linux, except for the tablet mode s [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1nhzb6-006odl-EJ
Subject: Re: [ibm-acpi-devel] Broken tablet mode switch for L13 Yoga Gen 2
 AMD: Unknown/reserved multi mode value 0x0000 for type 4
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
From: Mae Dartmann via ibm-acpi-devel <ibm-acpi-devel@lists.sourceforge.net>
Reply-To: Mae Dartmann <hello@maedartmann.name>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On 2022-04-22 14:15, Mae Dartmann via ibm-acpi-devel wrote:
> Hi,
> 
> I recently got my hands on a ThinkPad L13 Yoga Gen 2 AMD (the 5850U
> spec). It works great on Linux, except for the tablet mode switch,
> which appears to be broken on mainline (I'm running 5.18-rc3), as well
> as older kernels.
> 
> dmesg shows an error that appears to originate from the
> `hotkey_gmms_get_tablet_mode` function in
> drivers/platform/x86/thinkpad_acpi.c, specifically when checking if
> the mode is valid (lines 2020ff.):
> 
> thinkpad_acpi: Unknown/reserved multi mode value 0x0000 for type 4,
> please report this to ibm-acpi-devel@lists.sourceforge.net
> 
> I have opened a bug report in the kernel bugzilla
> (https://bugzilla.kernel.org/show_bug.cgi?id=215873), but I thought I
> would do as the module tells me and report this issue in the mailing
> list, too.
> 
> I don't have much experience in kernel development so I might not be
> much help, but please let me know if I can test something, try out
> patches, etc. I run my own distribution on the machine, so patching
> and compiling kernels is not a big deal for me.
> 
> Thanks
> ---
> Mae Dartmann
> git : https://github.com/mdartmann
> mail: hello@maedartmann.name
> 
> 
> _______________________________________________
> ibm-acpi-devel mailing list
> ibm-acpi-devel@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

Update:

I spent the last day or so inserting printk statements at various points 
throughout the driver, as well as using acpica to see if/when the hotkey 
logic in the driver runs.

As far as I can tell, this devices' tablet switch does not get 
recognized at all by the driver, turning the screen around does not 
trigger anything in the driver.

There are no calls to acpi_evalf, the hotkey_notify function does not 
recognize the event,  and I can't see any ACPI_EVENTS through 
/sys/module/acpi/debug_layer.

hotkey_gmms_get_tablet_mode only gets run on boot, resume or when 
reading /sys/bus/platform/devices/thinkpad_acpi/hotkey_tablet_mode.

I have Windows 11 installed on the same machine, it works perfectly 
there. I identified that the driver that handles tablet mode is called 
"Microsoft HID GPIO Laptop or Slate Indicator Driver". If needed, I can 
provide the information it exposes via device manager.

I am way out of my depth here. I can kind of piece together what is 
wrong and what the driver is doing, however, I have no clue how ACPI 
works or how I could fix this.

Let me know if I can provide any more information, from the windows 
driver or otherwise.

Thanks
---
Mae Dartmann
git  : https://github.com/mdartmann
mail : hello@maedartmann.name


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
