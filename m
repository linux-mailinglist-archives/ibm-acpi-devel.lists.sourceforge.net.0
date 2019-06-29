Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CC1155AB6D
	for <lists+ibm-acpi-devel@lfdr.de>; Sat, 29 Jun 2019 15:16:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1hhDCk-000679-RS; Sat, 29 Jun 2019 13:15:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andy.shevchenko@gmail.com>) id 1hhDCj-00066k-3Z
 for ibm-acpi-devel@lists.sourceforge.net; Sat, 29 Jun 2019 13:15:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=p/g2jEkcBrLVYJpS61NrU0i8yrQ9NSsj8NhWssa8/VQ=; b=lqSKBeAO6pkDh1GlpzHkCrEFoP
 YJtnJVeDMefFDItSwcdIuu+wyxFoU36+d9D589NQgnWIjYc+VMf4rZ+TEiEDttnTQ3TMuEgD5gofI
 VvaY87ecGeXt3mGELvGb2X4Dx0Pw5EVyi+5P4YwnMfySp175vL9k4PJJahj102O/xILc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=p/g2jEkcBrLVYJpS61NrU0i8yrQ9NSsj8NhWssa8/VQ=; b=MHum1dj8/6PgcDNhENRJ+l6TfB
 DXm82SW/WgXeNGmSCsctUPU4JBzJzqLvBv2COiT3p7RXdXcbLde6U/B+JzNTRf3yWjJCXzRCFqAFP
 MX+KURTGt7Io7EKVN4BJk+hhknMQuDjx5IkPJn+fLVsOqpt9JANKUPsWOSbSrm7m+aGc=;
Received: from mail-pf1-f194.google.com ([209.85.210.194])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hhDCj-001hh2-42
 for ibm-acpi-devel@lists.sourceforge.net; Sat, 29 Jun 2019 13:15:46 +0000
Received: by mail-pf1-f194.google.com with SMTP id d126so4333254pfd.2
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Sat, 29 Jun 2019 06:15:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=p/g2jEkcBrLVYJpS61NrU0i8yrQ9NSsj8NhWssa8/VQ=;
 b=Jk2WP1zO+mraAchFVtFRdRStiitIE/ZN0jUZ0agJrBNRQsOKwB/Oww+bkSF8aHx2zf
 jAjXxpOgsNaLxbzLxYejrOIVRuEpVhP6BueFSmx3AFc7OHom7COd86UJCOYJzG8Ny2NE
 EKXe8fjqPAucJMdzz2dDX/TK8SYllA3A0z8FEY0/RsqoA4ZzE7zOeA8xfTHchGvnuzcJ
 jTROQz/v6qLWrT+SewFaemGzxY+r7ZQBGMVpFccN6ZyWmuIAQ43ySzdhw5DOaK6Binu5
 Zx/tu2xdN3DLPtho288L/1m0KuI3Dhx/r8n9g+N7f5GvA7mcn8WqBFh92XLeuCKYgVPL
 6XmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=p/g2jEkcBrLVYJpS61NrU0i8yrQ9NSsj8NhWssa8/VQ=;
 b=OnBKnPPjk8h+PBuH5ZHbMyVpBILV3cJ8B029yKjqfdn3tJVNzdptU3+OzGxJUEzELk
 IQpcZ8RkO4yv6iIV3jvHrBv08JMr+/h8K5RBV3QXzUkOj1UL45Mgypkf6uTeRpnNiuWi
 ZM4lg74QCCwQKBMFS4WOj9O9lB7kj2ugfHmMqZONWJA6lkipp+8M4jQTYSR1bKWYUNQP
 2RDuhyOJgNAxgHXFAuG5IOUYvbDExRnDKc+w+mMwVEr6bo0xVfCdX2IRF0414rXpq0Ed
 FPIQEvTP1pKHRo8nFdLbOdieuRGbhnR2/cUcRMOltLPqQXCAHCuR8UQbz/ZjnrIYRFRY
 q8ng==
X-Gm-Message-State: APjAAAUoNXE0qs0qt9CsdJgEnI5jekQ06Q+uqhcSO7NrrjlQvbHfPzwR
 Uzu4Uemyh5rj52r9K/XB9JtlJzmj6EM7bh/pUrk=
X-Google-Smtp-Source: APXvYqyrr2VdDEUbHcWCcC7jOxqs4kbZzHpOndIKoaaxDdhFzv2Wy1ibW4hykZTFhtupft9pzPhoRjd/2CbJ3QZSt4Q=
X-Received: by 2002:a63:f346:: with SMTP id t6mr15060141pgj.203.1561814139378; 
 Sat, 29 Jun 2019 06:15:39 -0700 (PDT)
MIME-Version: 1.0
References: <E1hSOxT-00005q-An@tuxpaddy.alexanderweb.homeip.net>
In-Reply-To: <E1hSOxT-00005q-An@tuxpaddy.alexanderweb.homeip.net>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sat, 29 Jun 2019 16:15:28 +0300
Message-ID: <CAHp75VdzPvs0x_gT4HAMFj8KRYcQgk+ZXgC4yCPA25mS6qFFiQ@mail.gmail.com>
To: Alexander Schremmer <alex@alexanderweb.de>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andy.shevchenko[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.194 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: alexanderweb.de]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1hhDCj-001hh2-42
Subject: Re: [ibm-acpi-devel] [PATCH] Add Lenovo PrivacyGuard feature found
 in T480s, T490, T490s
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
Cc: Darren Hart <dvhart@infradead.org>,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Andy Shevchenko <andy@infradead.org>,
 Thinkpad-acpi devel ML <ibm-acpi-devel@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Sun, May 19, 2019 at 7:46 PM Alexander Schremmer
<alex@alexanderweb.de> wrote:
>
> From 6bfe30cae2be3f4fbe9f9990a4e83302569ff7e9 Mon Sep 17 00:00:00 2001
> From: Alexander Schremmer <alex@alexanderweb.de>
> Date: Sun, 19 May 2019 18:13:05 +0200
> Subject: [PATCH] platform/x86: Add Lenovo ThinkPad PrivacyGuard.
>
> This feature is found optionally in T480s, T490, T490s.
>
> The feature is called lcdshadow and visible via
> /proc/acpi/ibm/lcdshadow.
>
> The ACPI methods \_SB.PCI0.LPCB.EC.HKEY.{GSSS,SSSS,TSSS,CSSS} are
> available in these machines. They get, set, toggle or change the state
> apparently.
>
> The patch was tested on a 5.0 series kernel on a T480s.

While being in my review and testing queue it doesn't produce any
warnings the ABI extension lacks of documentation part.

>
> Signed-off-by: Alexander Schremmer <alex@alexanderweb.de>
> ---
>  drivers/platform/x86/thinkpad_acpi.c | 108 +++++++++++++++++++++++++++
>  1 file changed, 108 insertions(+)
>
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index 71cfaf26efd1..f2603643b067 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -9729,6 +9729,110 @@ static struct ibm_struct battery_driver_data = {
>         .exit = tpacpi_battery_exit,
>  };
>
> +/*************************************************************************
> + * LCD Shadow subdriver, for the Lenovo PrivacyGuard feature
> + */
> +
> +
> +static int lcdshadow_state;
> +
> +static int lcdshadow_on_off(bool state)
> +{
> +       acpi_handle set_shadow_handle;
> +       int output;
> +
> +       if (ACPI_FAILURE(acpi_get_handle(
> +                                       hkey_handle,
> +                                       "SSSS",
> +                                       &set_shadow_handle))) {
> +               pr_warn("Thinkpad ACPI has no %s interface.\n", "SSSS");
> +               return -EIO;
> +       }
> +
> +       if (!acpi_evalf(set_shadow_handle, &output, NULL, "dd", (int)state))
> +               return -EIO;
> +
> +       lcdshadow_state = state;
> +       return 0;
> +}
> +
> +static int lcdshadow_set(bool on)
> +{
> +       if (lcdshadow_state < 0 || lcdshadow_state == on)
> +               return lcdshadow_state;
> +       return lcdshadow_on_off(on);
> +}
> +
> +static int tpacpi_lcdshadow_init(struct ibm_init_struct *iibm)
> +{
> +       acpi_handle get_shadow_handle;
> +       int output;
> +
> +       if (ACPI_FAILURE(acpi_get_handle(
> +                                       hkey_handle,
> +                                       "GSSS",
> +                                       &get_shadow_handle))) {
> +               lcdshadow_state = -ENODEV;
> +               return 0;
> +       }
> +
> +       if (!acpi_evalf(get_shadow_handle, &output, NULL, "dd", 0))
> +               return -EIO;
> +       if (!(output & 0x10000)) {
> +               lcdshadow_state = -ENODEV;
> +               return 0;
> +       }
> +       lcdshadow_state = output & 0x1;
> +
> +       return 0;
> +}
> +
> +static void lcdshadow_resume(void)
> +{
> +       if (lcdshadow_state >= 0)
> +               lcdshadow_on_off(lcdshadow_state);
> +}
> +
> +static int lcdshadow_read(struct seq_file *m)
> +{
> +       if (lcdshadow_state < 0) {
> +               seq_puts(m, "status:\t\tnot supported\n");
> +       } else {
> +               seq_printf(m, "status:\t\t%d\n", lcdshadow_state);
> +               seq_puts(m, "commands:\t0, 1\n");
> +       }
> +
> +       return 0;
> +}
> +
> +static int lcdshadow_write(char *buf)
> +{
> +       char *cmd;
> +       int state = -1;
> +
> +       if (lcdshadow_state < 0)
> +               return -ENODEV;
> +
> +       while ((cmd = next_cmd(&buf))) {
> +               if (strlencmp(cmd, "0") == 0)
> +                       state = 0;
> +               else if (strlencmp(cmd, "1") == 0)
> +                       state = 1;
> +       }
> +
> +       if (state == -1)
> +               return -EINVAL;
> +
> +       return lcdshadow_set(state);
> +}
> +
> +static struct ibm_struct lcdshadow_driver_data = {
> +       .name = "lcdshadow",
> +       .resume = lcdshadow_resume,
> +       .read = lcdshadow_read,
> +       .write = lcdshadow_write,
> +};
> +
>  /****************************************************************************
>   ****************************************************************************
>   *
> @@ -10210,6 +10314,10 @@ static struct ibm_init_struct ibms_init[] __initdata = {
>                 .init = tpacpi_battery_init,
>                 .data = &battery_driver_data,
>         },
> +       {
> +               .init = tpacpi_lcdshadow_init,
> +               .data = &lcdshadow_driver_data,
> +       },
>  };
>
>  static int __init set_ibm_param(const char *val, const struct kernel_param *kp)
> --
> 2.20.1
>


-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
