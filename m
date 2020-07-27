Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9060322EA23
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 27 Jul 2020 12:35:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1k00TY-0001Ll-Ap; Mon, 27 Jul 2020 10:35:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andy.shevchenko@gmail.com>) id 1k00TW-0001Le-Mw
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 27 Jul 2020 10:35:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8ClZe5PyyqO8gDxm5fRF6b2O9arzEr9QE+Mo0TcPbnY=; b=c9jgmaHTzVpJ45ybabXaKIksJi
 xBsJzmt9v/0Kan46Uae0VCUWlcyR0rS2F0kiaZ1sPUYCqb2bVWTvWQ+msrRm19EokG0iJ1abGOHGI
 Mk4e2mkgZvP6lgdEV8GG2X/LHEEysvQw/JK2nW2idKsD/cnMDAYuctZu6KDv4PIM73Jc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8ClZe5PyyqO8gDxm5fRF6b2O9arzEr9QE+Mo0TcPbnY=; b=NbL3ZD8ZLUBQVgevY73bW1sSuD
 dM9vfMLIDHuaJj1sHC99hUBPUyTugoSLntrYYUucQBo6UheRtS/EhVsb7k6d419bvqZxX2UzP+4l0
 Pqlgq1ncMHsi6RaFwgTnpTPzRHyspAzzT3qKejT0BhV0eq83PgiAs35UjoBJafaFc+L4=;
Received: from mail-pl1-f195.google.com ([209.85.214.195])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k00TV-000yo3-LQ
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 27 Jul 2020 10:35:18 +0000
Received: by mail-pl1-f195.google.com with SMTP id b9so7787001plx.6
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 27 Jul 2020 03:35:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8ClZe5PyyqO8gDxm5fRF6b2O9arzEr9QE+Mo0TcPbnY=;
 b=XFi1D7DejrCr2IMpjku14NxRw8NvwxNdluaTsV9MQzldT1GskNkBMUg/ex5cDiOP4a
 j+9cwHe/lbmd6nXkk1lxUT2hs3Mni9Qtdf2HiYon2fZfqKvzP1VzVYzsdu35HLxrSNJu
 L+WbZp3ly1heSrjIJpVgmrwxJneMkNm3/9iMNw/vibPJvMysOcLXeT0LgLRQumj5Er4J
 tpraXw43afXlKF1hEQUjswS1ZY62M4o/jHKd8MX+GPzA0JG8wplF1F6NFZVx2oDVbM4n
 H/JDwAzbj/uBUBEHQ3V+d+wXR7pGPy0zvVn0EEO3UZcmW7Nb6ZF2rgMql2OopdtbymMi
 DNTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8ClZe5PyyqO8gDxm5fRF6b2O9arzEr9QE+Mo0TcPbnY=;
 b=AXZdccs7L/SB5W268vhyBAJzhyBOygiVf2IBiiXne6U+yzxLLeE3HhAH1qKZpHTUEV
 EKj1vZM0/vBeyvP1IZTmNlzDwM6CoTy9G6+4onRMidzAeN8h5/a5Nv2sJtOUqtLzoe7A
 0ynGQJXnrgEn3ww8ggKgod9R4QMU1WGEhKmtdwYxVg98p3Lb5JW3RrCWB4GbgjzTdLSH
 V1hPRF/kWBZPe+a8fy3wzKprpHpF+cXo2BdkUiqotvx+EXazUvmgtNIJCUBES1js41Iw
 j//8qb51fCo1j8wFThFXNX5I4Wk2r3MNvcIcZlnfSI9mrn0m9dGEYLsUd6l3/Xgt7Kjp
 A+Bg==
X-Gm-Message-State: AOAM532VblVE3YpxeaIERqtGcFk4Xh/OQ8XWuBw4VUr6Dqm15glbRzsb
 zJEeeOQed3Pxjs3Ecizvpg1CCSX8N3av2tJOyAY=
X-Google-Smtp-Source: ABdhPJwY6JiBKTnjB1Mb3q/1E6CYRRiWTnEvPCmdRa9/0HuAKakkYIMZqh3mSd2xjpNn/Iz+qZvw2o/v9XgdvVDD00k=
X-Received: by 2002:a17:902:8491:: with SMTP id
 c17mr18162635plo.262.1595846112090; 
 Mon, 27 Jul 2020 03:35:12 -0700 (PDT)
MIME-Version: 1.0
References: <markpearson@lenovo.com>
 <20200715235242.4934-1-markpearson@lenovo.com>
In-Reply-To: <20200715235242.4934-1-markpearson@lenovo.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 27 Jul 2020 13:34:57 +0300
Message-ID: <CAHp75Vcwg9aEpybYwEFvhYH4gpy7952i+zMs-2TKGPzkzuhO=g@mail.gmail.com>
To: Mark Pearson <markpearson@lenovo.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.214.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andy.shevchenko[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.195 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1k00TV-000yo3-LQ
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: psensor
 interface
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
Cc: Thinkpad-acpi devel ML <ibm-acpi-devel@lists.sourceforge.net>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Nitin Joshi <njoshi1@lenovo.com>,
 Platform Driver <platform-driver-x86@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Thu, Jul 16, 2020 at 2:53 AM Mark Pearson <markpearson@lenovo.com> wrote:
>
> Some Lenovo Thinkpad platforms are equipped with a 'palm sensor' so as
> to be able to determine if a user is physically proximate to the device.
>
> This patch provides the ability to retrieve the psensor state via sysfs
> entrypoints and will be used by userspace for WWAN functionality to
> control the transmission level safely

...


>         case TP_HKEY_EV_PALM_DETECTED:
>         case TP_HKEY_EV_PALM_UNDETECTED:
> -               /* palm detected hovering the keyboard, forward to user-space
> -                * via netlink for consumption */
> +               /* palm detected - pass on to event handler */
> +               tpacpi_driver_event(hkey);
>                 return true;

Comment here tells something about the netlink interface to user
space. Can you elaborate why we need sysfs now and how it's all
supposed to work?

...

> +static int psensor_get(bool *state)
> +{
> +       acpi_handle psensor_handle;
> +       int output;
> +
> +       if (ACPI_FAILURE(acpi_get_handle(hkey_handle, "GPSS", &psensor_handle)))
> +               return -ENODEV;
> +
> +       if (!acpi_evalf(psensor_handle, &output, NULL, "d"))
> +               return -EIO;
> +
> +       /* Check if sensor has a Psensor */
> +       if (!(output & BIT(PSENSOR_PRESENT_BIT)))
> +               return -ENODEV;
> +
> +       /* Return if psensor is set or not */
> +       *state = output & BIT(PSENSOR_ON_BIT) ? true : false;
> +       return 0;
> +}

It reminds me of a function you created in one of the previous
changes. Can you rather create a parameterized helper which will serve
for both?

...

> +/* sysfs psensor entry */
> +static ssize_t psensor_state_show(struct device *dev,
> +                                       struct device_attribute *attr,
> +                                       char *buf)
> +{

> +       return snprintf(buf, PAGE_SIZE, "%d\n", psensor_state);

We know that %d takes much less than PAGE_SIZE, use sprintf().

> +}

> +

No blank line here.

> +static DEVICE_ATTR_RO(psensor_state);

...

> +static struct attribute *psensor_attributes[] = {
> +       &dev_attr_psensor_state.attr,

> +       NULL,

No comma for terminator line(s).

> +};

...

> +       /* If support isn't available (ENODEV) then don't return an error
> +        * but just don't create the sysfs group
> +        */

/*
 * Consider to use a proper multi-line comment style.
 * Like here. (It's applicable to the entire patch)
 */

...

> +       err = sysfs_create_group(&tpacpi_pdev->dev.kobj, &psensor_attr_group);
> +       return err;

return sysfs...

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
