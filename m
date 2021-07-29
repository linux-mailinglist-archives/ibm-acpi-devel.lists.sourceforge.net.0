Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B2FD33D9FB2
	for <lists+ibm-acpi-devel@lfdr.de>; Thu, 29 Jul 2021 10:38:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1m91Y7-0004Ty-Pm; Thu, 29 Jul 2021 08:37:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <andy.shevchenko@gmail.com>) id 1m91Y6-0004Tr-Mq
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 29 Jul 2021 08:37:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EsrfTvny/SpzJRbB7yoAhloVOqEJbXPedO1ke9Lw82Y=; b=PVhrvLH1eBE3a4SE6B/cKNWh1r
 W9BAmMI0NlANpJfU486i7vSsgWKWFP5VaLFt20sZSBajDM9bahRof25/aS4iqO6PTECM7ADSSGnjH
 ViZXPOpDmSdZ2excHi4I2UboWdx3jNegVRa6Ea6RZ+tFSJkyPi1U3GRySqsB8PCQ1RKA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EsrfTvny/SpzJRbB7yoAhloVOqEJbXPedO1ke9Lw82Y=; b=UH8oQa8IIT1+YUJLa0z3Gfcmar
 O8DarP8wwzzWKGxw9Kdwrauf40USAvjj0/BWT8D6ik2G9Y56yYa5Vus76mDWSAmRWRvR5o0qN6a0v
 y6fKCtyT1c+MC44y7K4p6YWz6uesZ+dC0WFe0TFY7LD+pfjjBANr3Cfqal2y1q/C2MKA=;
Received: from mail-pj1-f42.google.com ([209.85.216.42])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1m91Y5-006H9p-Ey
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 29 Jul 2021 08:37:50 +0000
Received: by mail-pj1-f42.google.com with SMTP id l19so9361708pjz.0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Thu, 29 Jul 2021 01:37:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EsrfTvny/SpzJRbB7yoAhloVOqEJbXPedO1ke9Lw82Y=;
 b=M76cyDQcjfsuDEkSnUD2bWiws7Vcq5lLpCBBh4QGVSzp78nf6GBA+bpWD1vvOIkQdc
 jcYXl1LmJSDRA1wTnm/OGTtZq/WspSqSTOwNkeTIAk42PtKxPkZ58I1h03F0Cd1xYY31
 SCgPQUSP2/VlTEVXaiN6tf5yv5SHHUqukZ8D/tQ30RTv6OO9l+L+PqTDXiYGYx1nMirv
 uPFBcAn8gaQaCNdNfgqHSjx0FAAisg9GnaV6qTH9DNME/r/xv/NL/DuhhfIs5R//F8cv
 /eD9LQi4mGEV+DGg2a7ycskyG3gfZ5YMXHk+xlhTzAtVWbdM5zyG0YM8oMFPhHN/NTUp
 i+Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EsrfTvny/SpzJRbB7yoAhloVOqEJbXPedO1ke9Lw82Y=;
 b=WonmmvwipZqF1JgzLfo4Qb+51hf9avKHn10AhgxslJXebf5NzfoGMhWGJw2HCfmxww
 Fx4I0RRNZPJ6Rvcg0vCM8/zGOP/H8OhslDKfIWMNDNTHgYn+myk8D0RmsFtpftg/OHfx
 TgkWhblwM/6idpt/lhw/MxlIZrbuWICHJWO8DHZ7r0wkpi3QLUP7pGJlfbGa3SCLWFDN
 al+c/g0ToOyknIQXgwwZqL/nhDzK6etCEuS9VijhlssSpzAmGPbwNLktgO90QQ9ngoit
 Kkrxl0FcqCUQkRYUqJlR0Q2bOYr+6U8CioSYoLr12C4xnkjygksS6UxSc05XcLeRd4rI
 4WDQ==
X-Gm-Message-State: AOAM532HO+5/dRn5dyQ1N8XMxBSvqCG1a4OsJwFUYUA/4PjfXwpI5sz7
 nxf0CQKRuuj1S9bjJFMx0kR8KnSL5IX/IEVUl/c=
X-Google-Smtp-Source: ABdhPJzwrcm4RQAm4C1p1Rn8af5HkQIAJqwrrsYynFizjWfO6+au8SYAk+BLwfxghFP9rTUHccYIOIsuBe40dFx8tw8=
X-Received: by 2002:a63:5a5b:: with SMTP id k27mr2916152pgm.74.1627547863853; 
 Thu, 29 Jul 2021 01:37:43 -0700 (PDT)
MIME-Version: 1.0
References: <20210729082134.6683-1-hdegoede@redhat.com>
In-Reply-To: <20210729082134.6683-1-hdegoede@redhat.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 29 Jul 2021 11:37:04 +0300
Message-ID: <CAHp75VepyNqwLSDaDmc+XCk+_gC5+zGUQ51DOo7KUt2-Gaty-Q@mail.gmail.com>
To: Hans de Goede <hdegoede@redhat.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andy.shevchenko[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.42 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.42 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1m91Y5-006H9p-Ey
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

On Thu, Jul 29, 2021 at 11:21 AM Hans de Goede <hdegoede@redhat.com> wrote:
>
> Various 360 degree hinges (yoga) style 2-in-1 devices use 2 accelerometers
> to allow the OS to determine the angle between the display and the base of
> the device.
>
> On Windows these are read by a special HingeAngleService process which
> calls undocumented ACPI methods, to let the firmware know if the 2-in-1 is
> in tablet- or laptop-mode. The firmware may use this to disable the kbd and
> touchpad to avoid spurious input in tablet-mode as well as to report
> SW_TABLET_MODE info to the OS.
>
> Since Linux does not call these undocumented methods, the SW_TABLET_MODE
> info reported by various pdx86 drivers is incorrect on these devices.
>
> Before this commit the intel-hid and thinkpad_acpi code already had 2
> hardcoded checks for ACPI hardware-ids of dual-accel sensors to avoid
> reporting broken info.
>
> And now we also have a bug-report about the same problem in the intel-vbtn
> code. Since there are at least 3 different ACPI hardware-ids in play, add
> a new dual_accel_detect() helper which checks for all 3, rather then
> adding different hardware-ids to the drivers as bug-reports trickle in.
> Having shared code which checks all known hardware-ids is esp. important
> for the intel-hid and intel-vbtn drivers as these are generic drivers
> which are used on a lot of devices.
>
> The BOSC0200 hardware-id requires special handling, because often it is
> used for a single-accelerometer setup. Only in a few cases it refers to
> a dual-accel setup, in which case there will be 2 I2cSerialBus resources
> in the device's resource-list, so the helper checks for this.

...

> +static int dual_accel_i2c_resource_count(struct acpi_resource *ares, void *data)
> +{
> +       struct acpi_resource_i2c_serialbus *sb;
> +       int *count = data;
> +
> +       if (i2c_acpi_get_i2c_resource(ares, &sb))
> +               *count = *count + 1;
> +
> +       return 1;
> +}

It will be a third copy of this in the kernel.
Let's put it to i2c.h or somewhere available for all these users.

> +
> +static int dual_accel_i2c_client_count(struct acpi_device *adev)
> +{
> +       int ret, count = 0;
> +       LIST_HEAD(r);
> +
> +       ret = acpi_dev_get_resources(adev, &r, dual_accel_i2c_resource_count, &count);
> +       if (ret < 0)
> +               return ret;
> +
> +       acpi_dev_free_resource_list(&r);
> +       return count;
> +}

So does this.

Taking into account that this is a bug fix, I'm okay if you do above
as an additional patch (or patches) on top of this.

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
