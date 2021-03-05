Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 51C2E32F084
	for <lists+ibm-acpi-devel@lfdr.de>; Fri,  5 Mar 2021 18:01:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1lIDpL-0007zv-NF; Fri, 05 Mar 2021 17:01:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <kevin@kevinlocke.name>) id 1lIDp1-0007yx-AB
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 05 Mar 2021 17:01:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NcaHi2ynNmyr8rkk8wR6EC54xjjWSdMPKKIeS7TZbK4=; b=KZIbUENOQZ4U+bhEne+h/OZObR
 FvFjMZ8XGs3nfwDeN2e7dT0FY+twS2wNi61gTWJAVfvkhq+k38HeSj4ykKdOT0baMFJrROF343b7Z
 8Qe+J/5PPHnlnDGiFkHV5fY6Rp47agT2DyrPRX85Jh/BMMFLhFXDiG1pGFhWV32WcyxY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NcaHi2ynNmyr8rkk8wR6EC54xjjWSdMPKKIeS7TZbK4=; b=FCJOQzVM91f8zYd3HdHLc7SFAH
 3TzQss1PSIJqz9Osj5uOx4LOwQn7/akfxVK6L3R8wUsg6Anuxw5brG10JMiyqoBfxFrvIIxiRNN8B
 IcIg/MjVSRtTtVHRvlyiB/1umC6J/mj8VYWFedjooYc1nhie7lL95+xGawtsHqIHTNKk=;
Received: from vulcan.kevinlocke.name ([107.191.43.88])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lIDoe-00058U-7p
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 05 Mar 2021 17:00:57 +0000
Received: from kevinolos.kevinlocke.name
 (2600-6c67-5000-3d1b-bbf5-9078-10b8-e7c1.res6.spectrum.com
 [IPv6:2600:6c67:5000:3d1b:bbf5:9078:10b8:e7c1])
 (Authenticated sender: kevin@kevinlocke.name)
 by vulcan.kevinlocke.name (Postfix) with ESMTPSA id D3A7920EDB35;
 Fri,  5 Mar 2021 16:42:50 +0000 (UTC)
Received: by kevinolos.kevinlocke.name (Postfix, from userid 1000)
 id AA3D81300170; Fri,  5 Mar 2021 09:42:48 -0700 (MST)
Date: Fri, 5 Mar 2021 09:42:48 -0700
From: Kevin Locke <kevin@kevinlocke.name>
To: Nitin Joshi <nitjoshi@gmail.com>
Message-ID: <YEJfiP+oUzgCXG2r@kevinlocke.name>
Mail-Followup-To: Kevin Locke <kevin@kevinlocke.name>,
 Nitin Joshi <nitjoshi@gmail.com>, hdegoede@redhat.com,
 ibm-acpi-devel@lists.sourceforge.net,
 platform-driver-x86@vger.kernel.org,
 Nitin Joshi <njoshi1@lenovo.com>,
 Mark Pearson <markpearson@lenovo.com>
References: <20210212055856.232702-1-njoshi1@lenovo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210212055856.232702-1-njoshi1@lenovo.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1lIDoe-00058U-7p
Subject: Re: [ibm-acpi-devel] [PATCH 1/2] platorm/x86: thinkpad_acpi: sysfs
 interface to reduce wlan tx power
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
Cc: Mark Pearson <markpearson@lenovo.com>, hdegoede@redhat.com,
 platform-driver-x86@vger.kernel.org, Nitin Joshi <njoshi1@lenovo.com>,
 ibm-acpi-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Fri, 2021-02-12 at 14:58 +0900, Nitin Joshi wrote:
> Some newer Thinkpads have the WLAN antenna placed close to the WWAN
> antenna. In these cases FCC certification requires that when WWAN is
> active we reduce WLAN transmission power. A new Dynamic Power
> Reduction Control (DPRC) method is available from the BIOS on these
> platforms to reduce or restore WLAN Tx power.
> 
> This patch provides a sysfs interface that userspace can use to adjust the
> WLAN power appropriately.

Question from a user: How does wlan_tx_strength_reduce relate to or
interact with ioctl(SIOCSIWTXPOW) (i.e. iwconfig txpower) and
NL80211_ATTR_WIPHY_TX_POWER_LEVEL (i.e. iw dev set txpower)?  If I
request 30 dBm then enable wlan_tx_strength_reduce, what happens?  Same
in the opposite order?  Will ioctl(SIOCGIWTXPOW) show the reduced
txpower?

Thanks,
Kevin


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
