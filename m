Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 586CD755FD
	for <lists+ibm-acpi-devel@lfdr.de>; Thu, 25 Jul 2019 19:44:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1hqhmt-0006aU-7h; Thu, 25 Jul 2019 17:44:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andy.shevchenko@gmail.com>) id 1hqhms-0006aH-5Y
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 25 Jul 2019 17:44:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=F1UAd0NAfu4/AD+pKmFdZqYRIwZPuAgiz507KIuTUu0=; b=KdnDoGb6hqGFaFW4bi5sQ76qn0
 YOdar6AY+Xr36/0Lchjkg7u14TVml5gv3gDzNXZC6caE4Awhx/7ypNTbZ39r0o1Brm8u5s2YpuxoZ
 HIyFAAJdym8ubpAsUacutk81ds1e2ovrscTrkbig0HQxq9rBKB8vcHe0NoqIKEQLQXKU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=F1UAd0NAfu4/AD+pKmFdZqYRIwZPuAgiz507KIuTUu0=; b=ju0S062nqDLv+cmZMD3/CGD90x
 y3T9dEWY5eTHLJYXyRj0eEZHKv+EV5SYVz6rFf/JQHuA4fzGeFpNkqWN/BeX8ZuyDTJaXqkQEJNIv
 kkmZrzWxVLtG/lI8TsqeA+IXZNJEuP3ykI54HaxsWpecJma81uUTPqVjUftk/PHRXjPg=;
Received: from mail-pf1-f193.google.com ([209.85.210.193])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hqhmq-001UUq-6K
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 25 Jul 2019 17:44:18 +0000
Received: by mail-pf1-f193.google.com with SMTP id i189so23117531pfg.10
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Thu, 25 Jul 2019 10:44:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=F1UAd0NAfu4/AD+pKmFdZqYRIwZPuAgiz507KIuTUu0=;
 b=tHgnHRXUiGTMjTcR2hueEd2TixdbiBau3BS+FsHeIeUAsFdtkvzmE8Zbg0MU5p+YlW
 LrItiadPbiltPNWAWxgKjcganHhE3rbfLcyBWptNErX5LatSVDq1t4pr2Ktg45DJb7kI
 o8ayjt5orHffZniU0HNV4FRuO2RVebowXaMotoZ8nV0nEbA5Nb7pVcimmmL1tyPMnVCt
 lH0+HjIt9GY38fGsIxlRWPBo5lpkFTyTq5SNBnlBdw/s0f1K0A03PCKONNObRGC/BUWh
 c7hFOWGVz6YELr3KoYVzTFsDh558VPKBr37g6AA1ELK9VOQVwvoqlEEFiNG6JN6KTBCQ
 AiQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=F1UAd0NAfu4/AD+pKmFdZqYRIwZPuAgiz507KIuTUu0=;
 b=adT+RK3CSmCYARJPug6q0VuvY+3akRi0Yg43RJQZWe+FR3nnC18ThXTd5C9H4GoSOl
 KP4UBvlvYTqFcvlVdbVFQoHL70bPgwA+sf2c+mZQpYjNJE3dMRoW6QAyeioV1EHgp+Xd
 qtPIL+UeLM9sXvozOD+j+ZKEgS+7ZfBFVDvYIaMC6iJTJhzAJ2W46Yo2DAFdCtUjVUAh
 5b1FyYa788MuJp8nd/+mQ5pE4j9GFy/H3jU1K5XkiY+z6X3SjFpca5N3KNouDMb2V5tv
 rVWtNPajF6WNrBMd4s3JYvgZINDRZcv6SHI6zBAtRv4fJOphMpKijZad/dVC/HtpPvz4
 Sf1w==
X-Gm-Message-State: APjAAAWztvbX8urk3owFja8gqfTOasjGWtDTU4Lw4AiRAIM3FjYhgImE
 z16jC58AZf9Iq2iwKFUqTKiWdJX56biQqFlLJv4=
X-Google-Smtp-Source: APXvYqw+4+bf528CSyzjWwmIIIDYau9QdqfYZBS0bdCrHm4PmVXfTbo1UNG3jaDGiqVWB+g+0cGpjP+FniOJvzZ4Aog=
X-Received: by 2002:a62:4e86:: with SMTP id c128mr17803119pfb.64.1564076650526; 
 Thu, 25 Jul 2019 10:44:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190703163000.315-1-huangfq.daxian@gmail.com>
In-Reply-To: <20190703163000.315-1-huangfq.daxian@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 25 Jul 2019 20:43:59 +0300
Message-ID: <CAHp75Vefj9dBFHYn84ZHMteWgGEAq5bvAuvgbO8XRZcn_UdXHA@mail.gmail.com>
To: Fuqian Huang <huangfq.daxian@gmail.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andy.shevchenko[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1hqhmq-001UUq-6K
Subject: Re: [ibm-acpi-devel] [PATCH v2 21/35] platform/x86/thinkpad: Use
 kmemdup rather than duplicating its implementation
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
Cc: Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 Thinkpad-acpi devel ML <ibm-acpi-devel@lists.sourceforge.net>,
 Darren Hart <dvhart@infradead.org>, Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Wed, Jul 3, 2019 at 7:30 PM Fuqian Huang <huangfq.daxian@gmail.com> wrote:
>
> kmemdup is introduced to duplicate a region of memory in a neat way.
> Rather than kmalloc/kzalloc + memcpy, which the programmer needs to
> write the size twice (sometimes lead to mistakes), kmemdup improves
> readability, leads to smaller code and also reduce the chances of mistakes.
> Suggestion to use kmemdup rather than using kmalloc/kzalloc + memcpy.
>

Pushed to my review and testing queue, thanks!

> Signed-off-by: Fuqian Huang <huangfq.daxian@gmail.com>
> ---
> Changes in v2:
>   - Fix a typo in commit message (memset -> memcpy)
>
>  drivers/platform/x86/thinkpad_acpi.c | 17 +++++++----------
>  1 file changed, 7 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index 7bde4640ef34..d379bdf98a0f 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -3647,22 +3647,19 @@ static int __init hotkey_init(struct ibm_init_struct *iibm)
>                 goto err_exit;
>
>         /* Set up key map */
> -       hotkey_keycode_map = kmalloc(TPACPI_HOTKEY_MAP_SIZE,
> -                                       GFP_KERNEL);
> -       if (!hotkey_keycode_map) {
> -               pr_err("failed to allocate memory for key map\n");
> -               res = -ENOMEM;
> -               goto err_exit;
> -       }
> -
>         keymap_id = tpacpi_check_quirks(tpacpi_keymap_qtable,
>                                         ARRAY_SIZE(tpacpi_keymap_qtable));
>         BUG_ON(keymap_id >= ARRAY_SIZE(tpacpi_keymaps));
>         dbg_printk(TPACPI_DBG_INIT | TPACPI_DBG_HKEY,
>                    "using keymap number %lu\n", keymap_id);
>
> -       memcpy(hotkey_keycode_map, &tpacpi_keymaps[keymap_id],
> -               TPACPI_HOTKEY_MAP_SIZE);
> +       hotkey_keycode_map = kmemdup(&tpacpi_keymaps[keymap_id],
> +                       TPACPI_HOTKEY_MAP_SIZE, GFP_KERNEL);
> +       if (!hotkey_keycode_map) {
> +               pr_err("failed to allocate memory for key map\n");
> +               res = -ENOMEM;
> +               goto err_exit;
> +       }
>
>         input_set_capability(tpacpi_inputdev, EV_MSC, MSC_SCAN);
>         tpacpi_inputdev->keycodesize = TPACPI_HOTKEY_MAP_TYPESIZE;
> --
> 2.11.0
>


-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
