Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 17EDE50BA31
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 22 Apr 2022 16:35:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1nhuMf-0004kN-Oh; Fri, 22 Apr 2022 14:34:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hello@maedartmann.name>) id 1nhuMe-0004kH-EF
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 22 Apr 2022 14:34:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Message-ID:
 Subject:To:From:Date:MIME-Version:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HrhGAao5gh2ZbFISOjJewDzhl6J3wSdD2OHdjPPSFC0=; b=db0cLrF0EDEaLQh6CxERvfCQpt
 JGCOu/ougwuuJjMiFoxlswlQmf2Oh59N7CCRGRJ0xydNqUhHHYZN9D6xSpDy5CkpAAu2p1vDzTMuL
 f2qnmUAtAl2/PXRQ3dxUrUj3cnDZc2qrisY5lssJHviOGmT/S7dM12qy8bZPsysPF5wA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Message-ID:Subject:To:From:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=HrhGAao5gh2ZbFISOjJewDzhl6J3wSdD2OHdjPPSFC0=; b=M
 skpZ78T7ItmDDV+NEkIayAyzm+bzVFX6i3joVangswSIOZecC2QTjbUzkww74R+INHYDUyeDquqdy
 +gWAchxuv7ysdVDjQvUt3upCHvcJ1VkHuhpuO5NF6KsZghRBLGLcuiubaKeOxLnFG2tKiVzYJM+yy
 TOkxfjfjzZmtV9mA=;
Received: from maedartmann.name ([83.138.55.44] helo=mail.maedartmann.name)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nhuMa-0005rq-Vv
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 22 Apr 2022 14:34:28 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=maedartmann.name;
 s=dkim; t=1650636917;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=HrhGAao5gh2ZbFISOjJewDzhl6J3wSdD2OHdjPPSFC0=;
 b=HtUlhu7h4aCZXge+8LYmw3lmMHksy8z2Ndpa6WqjxqS74ME8JLvE2SYsEzjsUAKL8RRnJw
 DdPmtSpB7WjPvTKrDgmJr0DU3Ci9VJovTRCfFacGR0S2GzhNTJZqv66rFbNouJSryi8ZIS
 nT0i3lRCaKg0oxWDQhz01+I4FKmwY91gtSNSbf8DRUJ6OTeVqc9XDW0/RYEfhMnYLyjhcC
 ft4Ww6JWZU2F2PMbPCjdGoh/bIg6KCXlAbDQ+P8BFc7JbhciwBk4z5VqZM+faBif1SQfxy
 S0UN28+4kvQZuTs0Bvfdm9YbCQXK7Adnl4tfUHJn7SIR/GVwm/F+eeinu2x35A==
Date: Fri, 22 Apr 2022 14:15:17 +0000
To: ibm-acpi-devel@lists.sourceforge.net
Message-ID: <69a20cc421912cc0768293cf306edc3c@maedartmann.name>
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
 Content preview:  Hi, I recently got my hands on a ThinkPad L13 Yoga Gen 2 AMD
 (the 5850U spec). It works great on Linux, except for the tablet mode switch, 
 which appears to be broken on mainline (I'm running 5.18-rc3), as [...] 
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
X-Headers-End: 1nhuMa-0005rq-Vv
Subject: [ibm-acpi-devel] Broken tablet mode switch for L13 Yoga Gen 2 AMD:
 Unknown/reserved multi mode value 0x0000 for type 4
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

Hi,

I recently got my hands on a ThinkPad L13 Yoga Gen 2 AMD (the 5850U 
spec). It works great on Linux, except for the tablet mode switch, which 
appears to be broken on mainline (I'm running 5.18-rc3), as well as 
older kernels.

dmesg shows an error that appears to originate from the 
`hotkey_gmms_get_tablet_mode` function in 
drivers/platform/x86/thinkpad_acpi.c, specifically when checking if the 
mode is valid (lines 2020ff.):

thinkpad_acpi: Unknown/reserved multi mode value 0x0000 for type 4, 
please report this to ibm-acpi-devel@lists.sourceforge.net

I have opened a bug report in the kernel bugzilla 
(https://bugzilla.kernel.org/show_bug.cgi?id=215873), but I thought I 
would do as the module tells me and report this issue in the mailing 
list, too.

I don't have much experience in kernel development so I might not be 
much help, but please let me know if I can test something, try out 
patches, etc. I run my own distribution on the machine, so patching and 
compiling kernels is not a big deal for me.

Thanks
---
Mae Dartmann
git : https://github.com/mdartmann
mail: hello@maedartmann.name


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
