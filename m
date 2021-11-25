Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5940645E07F
	for <lists+ibm-acpi-devel@lfdr.de>; Thu, 25 Nov 2021 19:25:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1mqJQ8-0006wU-Pd; Thu, 25 Nov 2021 18:24:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <kevin@kevinlocke.name>) id 1mqJQ7-0006wO-TU
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 25 Nov 2021 18:24:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VpcpDsvRXqXC33witfehqt8eXvEl5c9WaD+wC9rJhb8=; b=N4Xgk2sHz0JhcQqX5Hb0SHztY2
 O9Ls02v/sGPvy0bybdVj6145sak2yNIk5epE66nyThkRh2mHtTtb1eZkzR3mWMQqIiX8KATuRvHHH
 clu2WpVK/YO6dtaP0W6AiszPZ89LpcTYt55culZaffpdPIhLQ0vYrAU8X436DsGB3veg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VpcpDsvRXqXC33witfehqt8eXvEl5c9WaD+wC9rJhb8=; b=Hs4lNiAurbpuWmbHy6ZM3ikYD4
 hshv+FCCaazzNE1fjAqk6AP3FfdKBVA0sp4OF2GJ0xIkCsCkjs2SH47nKvia9fVBphzups2G64L/s
 ISjSD6lOc43vJEPk1MBwbp38QbA+eHZPQfv4Q2of93PHbXSvNm/iFh608pOl4Sjh33+I=;
Received: from vulcan.kevinlocke.name ([107.191.43.88])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mqJQ3-00958I-9X
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 25 Nov 2021 18:24:32 +0000
Received: from kevinolos.kevinlocke.name
 (2600-6c67-5000-3d1b-acf4-78ed-e050-e54b.res6.spectrum.com
 [IPv6:2600:6c67:5000:3d1b:acf4:78ed:e050:e54b])
 (Authenticated sender: kevin@kevinlocke.name)
 by vulcan.kevinlocke.name (Postfix) with ESMTPSA id 1B6C828D37FA;
 Thu, 25 Nov 2021 18:04:34 +0000 (UTC)
Received: by kevinolos.kevinlocke.name (Postfix, from userid 1000)
 id DF4FB13003B1; Thu, 25 Nov 2021 11:04:32 -0700 (MST)
Date: Thu, 25 Nov 2021 11:04:32 -0700
From: Kevin Locke <kevin@kevinlocke.name>
To: Thomas =?iso-8859-1?Q?Wei=DFschuh?= <linux@weissschuh.net>
Message-ID: <YZ/QMNQIe04x/tkF@kevinlocke.name>
Mail-Followup-To: Kevin Locke <kevin@kevinlocke.name>,
 Thomas =?iso-8859-1?Q?Wei=DFschuh?= <linux@weissschuh.net>,
 linux-pm@vger.kernel.org, ibm-acpi-devel@lists.sourceforge.net,
 platform-driver-x86@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20211123232704.25394-1-linux@weissschuh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211123232704.25394-1-linux@weissschuh.net>
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, 2021-11-24 at 00:27 +0100, Thomas Weißschuh wrote:
    > this series adds support for the charge_behaviour property to the power
    > subsystem and thinkpad_acpi driver. Wonderful! Thanks for working on this.
    
 
 Content analysis details:   (-2.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [107.191.43.88 listed in list.dnswl.org]
X-Headers-End: 1mqJQ3-00958I-9X
Subject: Re: [ibm-acpi-devel] [PATCH 0/4] power: supply: add
 charge_behaviour property (force-discharge, inhibit-charge)
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
Cc: ibm-acpi-devel@lists.sourceforge.net, platform-driver-x86@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Wed, 2021-11-24 at 00:27 +0100, Thomas Wei=DFschuh wrote:
> this series adds support for the charge_behaviour property to the power
> subsystem and thinkpad_acpi driver.

Wonderful!  Thanks for working on this.

I can confirm inhibit-charge and force-discharge states work with
patch v2 on v5.16-rc2 on a T430 (2342-CTO) with BIOS G1ETC2WW (2.82 ),
EC G1HT36WW and a single battery.  Most behavior is as expected:

- With force-discharge, status becomes "Discharging" and energy_now
  drops over time while AC remains connected.
- With inhibit-charge, status becomes "Unknown" and energy_now is
  stable over time, even when not fully charged.
- With auto, status becomes "Charging" and energy_now rises over time.
- charge_behaviour takes precedence over
  charge_control_{start,end}_threshold: status remains
  Discharging/Unknown when below the start threshold, either due to
  discharge or threshold change.
- charge_behaviour is preserved over soft reboot.
- inhibit-charge/auto are preserved across battery removal and
  reinsertion.
- inhibit-charge/auto are preserved across s2ram (S3).
- With force-discharge, if the battery is removed, the machine
  immediately powers off.

Some behavior is a little surprising:

- charge_behaviour can not be set to force-discharge if AC is
  disconnected (EIO).  If charge_behaviour is force-discharge when AC
  is disconnected, it changes to auto, unlike inhibit-charge.
- charge_behavior force-discharge is not preserved across s2ram (S3),
  unlike inhibit-charge.
- charge_behaviour is not preserved across hard reset (unlike charge
  thresholds).  Interestingly, it appears that inhibit-charge is
  preserved across power-off (no charging is observed while powered
  off) but not power-on, even though it is preserved across soft
  reboot, as noted above.

I assume the behavior is under the control of the EC, so these aren't
criticisms of the patch.  Just some observations.

Tested-by: Kevin Locke <kevin@kevinlocke.name>

Thanks again,
Kevin


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
