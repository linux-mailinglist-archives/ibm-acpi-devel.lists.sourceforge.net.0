Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D02D3D9FD9
	for <lists+ibm-acpi-devel@lfdr.de>; Thu, 29 Jul 2021 10:51:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1m91lC-0004b2-2N; Thu, 29 Jul 2021 08:51:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andy.shevchenko@gmail.com>) id 1m91lB-0004aw-Dt
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 29 Jul 2021 08:51:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dUj1P0AzqgAchl6jA4S00J/qZkPPxZhkbN+Xiq2WGLg=; b=MRD8ch7/li5Ky/sAf8MbzR24dT
 fKw5jGPLR5/CViCMtfQAl/T3lxNRFt4xu9mGjtY51xkonLdOcqE5DC0hL19ygFl2o8fyv5jbpet/W
 12gDqoukIyV0FCxGR2y5iMFNM3vgbXrofKnq/2/ZVQe9UA1mQ6ox3oh1DBfBUyKiqC8c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dUj1P0AzqgAchl6jA4S00J/qZkPPxZhkbN+Xiq2WGLg=; b=kQ82Jr3bpVqi1I5fvoC7HSCmq/
 7z18pZ8pvOqYk03WQKHhhoMe9lFTfOEMGrpprteHYy3OKyxDJ81o1YmbKRUaRkbGdtHTZ6uY/QQqa
 V58EibkRZoniAljafFHatieZyVm3Uu9Kd1nCbfEugertefI3T1iiQqRLwvjSmzd7rgik=;
Received: from mail-pj1-f54.google.com ([209.85.216.54])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1m91lA-006I9K-7G
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 29 Jul 2021 08:51:21 +0000
Received: by mail-pj1-f54.google.com with SMTP id
 k4-20020a17090a5144b02901731c776526so14493127pjm.4
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Thu, 29 Jul 2021 01:51:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dUj1P0AzqgAchl6jA4S00J/qZkPPxZhkbN+Xiq2WGLg=;
 b=KE/xuk+tQes5WMjruTwfyOGEf/oypE+UxtXolXbVeER79Jx0e0A6DzTemjPsErkjl4
 aToUKo1z40Rizuuc+jAY1VMpMphzGOjMzcfhkcrnPybXx5GVZuNhUpt7J0eLIy44YSfM
 sHfdKj+giWFH1ArUTporkXUkNu1b2/V6OUIjbGzV1Ard4qGfyyFh7hJSdiUso0ZGtYgg
 MRYgDWy08RaLZt1ZuNs5FOKaEycDzUac+jHIPWN/11YySfe+1+y0Nkk4rq+ul1oI/ZG5
 0UJbCKAdcJmv8pqjZ2Rat1tZyiuI/4vag/yqqDSYl4DAyxBO1T0HGG6bZS/AxYAEnl9J
 FbFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dUj1P0AzqgAchl6jA4S00J/qZkPPxZhkbN+Xiq2WGLg=;
 b=eN4v8PLPtyr4xqhg5iTnl3Pz8bs1nnQd6dX9ow7OF4PnMqZrCwBmbrvKSo8eszGX6j
 0qm8UR9qwhJwZuqVVpou5gknzJ9pDT3BHaDomuD6MD4J4outzVDrv5907ziNgmcLDQfG
 naI9P8Euxk36j6KvBzSBTEcg+MGsGnIzbYrsiJ76FWMLxQ0PSk9TG+MUw9fd0lWJWsv4
 aF74XMOM34Oo20k0PVV0ok6cW7mai1B9NJuIIMfIyi06DCslVg4oR8hzLTt/hleDwlVH
 +XdhVbeF1r6lDhxHm2E1MRQqYaOoSbX35vRUXYzldfRKyxgi4cb9txKJKe2t06X85rO7
 n8MQ==
X-Gm-Message-State: AOAM531vblxW55I7CiWIbKL751luDqclH/24AaYci10kHSMOOyEVtIql
 ZcbNN/djTAOnjrHnkZ5yI5SRAkT28aXbdTZ+tpc=
X-Google-Smtp-Source: ABdhPJxGvvBYQQfLVOUEU+msxBkX/nG2hHGPlAr9mzt1LgWZM8NbXWxR0DObemlrxKoczMEPnACKb4uFOb/MPU4UYw4=
X-Received: by 2002:a63:d014:: with SMTP id z20mr2853429pgf.203.1627548673835; 
 Thu, 29 Jul 2021 01:51:13 -0700 (PDT)
MIME-Version: 1.0
References: <20210729082134.6683-1-hdegoede@redhat.com>
 <CAHp75VepyNqwLSDaDmc+XCk+_gC5+zGUQ51DOo7KUt2-Gaty-Q@mail.gmail.com>
 <7e6402dd-ec83-5014-8165-95e45cd3169f@redhat.com>
In-Reply-To: <7e6402dd-ec83-5014-8165-95e45cd3169f@redhat.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 29 Jul 2021 11:50:34 +0300
Message-ID: <CAHp75VeeN7KYifZ7K82CKmj4QKexAu2cK1pqXaj_coMPO4Q8ZQ@mail.gmail.com>
To: Hans de Goede <hdegoede@redhat.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andy.shevchenko[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.54 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.54 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1m91lA-006I9K-7G
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: Add and use a
 dual_accel_detect() helper
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
Cc: Mark Gross <mgross@linux.intel.com>,
 Thinkpad-acpi devel ML <ibm-acpi-devel@lists.sourceforge.net>,
 Julius Lehmann <julius@devpi.de>,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Mark Pearson <markpearson@lenovo.com>, Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Thu, Jul 29, 2021 at 11:45 AM Hans de Goede <hdegoede@redhat.com> wrote:
>
> Hi,
>
> On 7/29/21 10:37 AM, Andy Shevchenko wrote:
> > On Thu, Jul 29, 2021 at 11:21 AM Hans de Goede <hdegoede@redhat.com> wrote:
> >>
> >> Various 360 degree hinges (yoga) style 2-in-1 devices use 2 accelerometers
> >> to allow the OS to determine the angle between the display and the base of
> >> the device.
> >>
> >> On Windows these are read by a special HingeAngleService process which
> >> calls undocumented ACPI methods, to let the firmware know if the 2-in-1 is
> >> in tablet- or laptop-mode. The firmware may use this to disable the kbd and
> >> touchpad to avoid spurious input in tablet-mode as well as to report
> >> SW_TABLET_MODE info to the OS.
> >>
> >> Since Linux does not call these undocumented methods, the SW_TABLET_MODE
> >> info reported by various pdx86 drivers is incorrect on these devices.
> >>
> >> Before this commit the intel-hid and thinkpad_acpi code already had 2
> >> hardcoded checks for ACPI hardware-ids of dual-accel sensors to avoid
> >> reporting broken info.
> >>
> >> And now we also have a bug-report about the same problem in the intel-vbtn
> >> code. Since there are at least 3 different ACPI hardware-ids in play, add
> >> a new dual_accel_detect() helper which checks for all 3, rather then
> >> adding different hardware-ids to the drivers as bug-reports trickle in.
> >> Having shared code which checks all known hardware-ids is esp. important
> >> for the intel-hid and intel-vbtn drivers as these are generic drivers
> >> which are used on a lot of devices.
> >>
> >> The BOSC0200 hardware-id requires special handling, because often it is
> >> used for a single-accelerometer setup. Only in a few cases it refers to
> >> a dual-accel setup, in which case there will be 2 I2cSerialBus resources
> >> in the device's resource-list, so the helper checks for this.
> >
> > ...
> >
> >> +static int dual_accel_i2c_resource_count(struct acpi_resource *ares, void *data)
> >> +{
> >> +       struct acpi_resource_i2c_serialbus *sb;
> >> +       int *count = data;
> >> +
> >> +       if (i2c_acpi_get_i2c_resource(ares, &sb))
> >> +               *count = *count + 1;
> >> +
> >> +       return 1;
> >> +}
> >
> > It will be a third copy of this in the kernel.
> > Let's put it to i2c.h or somewhere available for all these users.
> >
> >> +
> >> +static int dual_accel_i2c_client_count(struct acpi_device *adev)
> >> +{
> >> +       int ret, count = 0;
> >> +       LIST_HEAD(r);
> >> +
> >> +       ret = acpi_dev_get_resources(adev, &r, dual_accel_i2c_resource_count, &count);
> >> +       if (ret < 0)
> >> +               return ret;
> >> +
> >> +       acpi_dev_free_resource_list(&r);
> >> +       return count;
> >> +}
> >
> > So does this.
> >
> > Taking into account that this is a bug fix, I'm okay if you do above
> > as an additional patch (or patches) on top of this.
>
> Right, I had a note about this behind the cut (---) line, but I dropped
> the patch and git-am-ed it while reworking my tree for some other issue
> dropping the note (sorry), the note was:
>
> """
> ---
> Note the counting of the number of I2cSerialBus resources in an
> ACPI-device's resource-list is becoming a common pattern. I plan
> to add a new shared helper for this in a follow-up patch-set.
> I've deliberately not made use of such a new helper in this patch
> for easier backporting to the stable series.
> """
>
> In other words, I fully agree. I've already added an item to my
> TODO list about doing a followup series to replace the 3 copies in:

With this promise taken
Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>

>  drivers/platform/x86/dual_accel_detect.h
>  drivers/platform/x86/i2c-multi-instantiate.c
>  drivers/platform/x86/intel/int33fe/intel_cht_int33fe_common.c
>
> With a new helper in drivers/i2c/i2c-core-acpi.c, like the
> i2c_acpi_get_i2c_resource() helper which was recently added.


-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
