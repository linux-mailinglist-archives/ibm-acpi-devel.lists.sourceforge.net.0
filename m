Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 03FD121BEB1
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 10 Jul 2020 22:40:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jtzoC-0002PM-OY; Fri, 10 Jul 2020 20:39:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andy.shevchenko@gmail.com>) id 1jtzoB-0002PF-Vm
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 10 Jul 2020 20:39:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kOy3WRzQtRC4Q2JOAJBpU3Jt3236sbY/Ra6/MJZGQiY=; b=ck/wFPBhRnfMXIgrR2rAZQYJF3
 OU14WjIs6UR6dnl+5h1WCNYOowHz8Jvx3wFVHhvXHMd9D2lWkiyQW8iFftCHjVSeo34CbgPyTOVvG
 Y3ARStCoaMDwJr3Gn+vdLnH4ZxC7MiTkJTDbphztQzLMVXidWEwrK1hEKUPhRyc51yH0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kOy3WRzQtRC4Q2JOAJBpU3Jt3236sbY/Ra6/MJZGQiY=; b=cDmZ0jWZlL5gx56mF/8NShgGfr
 LvEbrOIMVeS8pS1h2gft/K/eIheHMn7udShXlPDdXEhhdElkz0yJB62uckJ6qi3z7ctzGWgJ34cdA
 e2aUsQdrEnFT9ZXGtXkoEt8aS73LMLe/H+Yioyk+J+aELK9T/6oaIt4/SbMhUYdYh0OA=;
Received: from mail-pg1-f194.google.com ([209.85.215.194])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jtzoA-00DVGa-Fi
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 10 Jul 2020 20:39:47 +0000
Received: by mail-pg1-f194.google.com with SMTP id l63so3007815pge.12
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Fri, 10 Jul 2020 13:39:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kOy3WRzQtRC4Q2JOAJBpU3Jt3236sbY/Ra6/MJZGQiY=;
 b=qbJfRyl6ikf8c8bq2TQBhxM14A6c7+KVmLonsdD56whoQO00jbwWKAuur9qMZLb7aM
 OLAQbRWnQ/WmXcfaSZD11zBc92/jWfDmGxbhdVblq5jEpIqrtkCSFY+PP56oiOZambBa
 buPrJNDgKlBGCps+VuFZvNRpdN0Rla5XSk4LQuJXkgLAckIV6xY/mmG7ZRIlJ7l//j3l
 ZFJZP02+v+Iuv0ycd0dUsnt5eCh93LblWcOXsrkmMAbCiJVntnbaoEKnr9B0q5M5pvAx
 KQ8idd5UICNC7ejjXzAELgOBsixvBF7AMrYIZyOJS+4Ap57J18IG/QQvTaLZG0gxejnD
 Myig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kOy3WRzQtRC4Q2JOAJBpU3Jt3236sbY/Ra6/MJZGQiY=;
 b=qNUCZHtC95hW+fciQKKOH9H7NRv9C3/r8lzjcJPTMUu3Y3F4J6ZtyhLc0RxG7/Zi2y
 RyQJGvAr7hsBIHGJO78GLyTKeAEdp+InDVWeV7KYkg7R+Ppof+VCFSOKa82dojJkwAtc
 1Du16qgFj8lb8jQzXHxJ/tcTWQtRyXoMc52RbZkx1Hwov1ycF8AYke50oKwZdN+Wg8jy
 Mmr6beEv5NCHRG1PHQAJZEQkn3ZBAz8tNp9NqdledUmTKdNU//LHRGFtxr4Fx84axAUA
 Sqtg7lQ3yKadp7i6G65S5L2r39cDR+ELCCymaJoVenr9TnG/XD+E486o9H05p4+cJxgl
 wymw==
X-Gm-Message-State: AOAM530Qn4lnJGQkDSC/pK5IRb6IW4fDSPdEpw7OLk00bnVU7TYrEA56
 tyKPeX76Wkq/wWKSdEuCxFYYHKdlkKWTdGojz7M=
X-Google-Smtp-Source: ABdhPJweorVSib19TBYf2eX82367jKl/Bk/GYW+qYWWs6/OPc4yIODCbRGqsE00WX1PO47r+jlGlp1+vPBs/p/IdEVU=
X-Received: by 2002:a63:924b:: with SMTP id s11mr58092425pgn.74.1594413573715; 
 Fri, 10 Jul 2020 13:39:33 -0700 (PDT)
MIME-Version: 1.0
References: <markpearson@lenovo.com>
 <20200703012353.26413-1-markpearson@lenovo.com>
In-Reply-To: <20200703012353.26413-1-markpearson@lenovo.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 10 Jul 2020 23:39:17 +0300
Message-ID: <CAHp75VfQWL9TEhmPi6Svj8Y39DrXa-p-Gko-_u+sMVNz41FYXQ@mail.gmail.com>
To: Mark Pearson <markpearson@lenovo.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andy.shevchenko[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.194 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: lenovo.com]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jtzoA-00DVGa-Fi
Subject: Re: [ibm-acpi-devel] [PATCH v5] platform/x86: thinkpad_acpi: lap or
 desk mode interface
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
Cc: Sugumaran <slacshiminar@lenovo.com>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 Thinkpad-acpi devel ML <ibm-acpi-devel@lists.sourceforge.net>,
 Nitin Joshi <njoshi1@lenovo.com>, Bastien Nocera <bnocera@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Fri, Jul 3, 2020 at 4:24 AM Mark Pearson <markpearson@lenovo.com> wrote:
>
> Newer Lenovo Thinkpad platforms have support to identify whether the
> system is on-lap or not using an ACPI DYTC event from the firmware.
>
> This patch provides the ability to retrieve the current mode via sysfs
> entrypoints and will be used by userspace for thermal mode and WWAN
> functionality
>

Pushed to my review and testing queue, thanks!

> Co-developed-by: Nitin Joshi <njoshi1@lenovo.com>
> Signed-off-by: Nitin Joshi <njoshi1@lenovo.com>
> Reviewed-by: Sugumaran <slacshiminar@lenovo.com>
> Reviewed-by: Bastien Nocera <bnocera@redhat.com>
> Signed-off-by: Mark Pearson <markpearson@lenovo.com>
> ---
> Changes in v5:
>  - Updated with review changes from Andy Shevchenko
>  - Added ABI information to thinkpad-acpi.rst
>  - improved error handling and parameter passing as recommended
>  - code cleanup as recommended
>  - added review tag from bnocera
> Changes in v4:
>  - Correct hotkey event comment as we're handling event
>  - Remove unnecessary check in dytc_lapmode_refresh
> Changes in v3:
> - Fixed inaccurate comments
> - Used BIT macro to check lapmode bit setting as recommended and update
>   define name
> - Check for new_state == dytc_lapmode in dytc_lapmode_refresh
> Changes in v2:
> - cleaned up initialisation sequence to be cleaner and avoid spamming
>   platforms that don't have DYTC with warning message. Tested on P52
> - Adding platform-driver-x86 mailing list for review as requested
>
>  .../admin-guide/laptops/thinkpad-acpi.rst     |  15 +++
>  drivers/platform/x86/thinkpad_acpi.c          | 111 +++++++++++++++++-
>  2 files changed, 124 insertions(+), 2 deletions(-)
>
> diff --git a/Documentation/admin-guide/laptops/thinkpad-acpi.rst b/Documentation/admin-guide/laptops/thinkpad-acpi.rst
> index 822907dcc845..99066aa8d97b 100644
> --- a/Documentation/admin-guide/laptops/thinkpad-acpi.rst
> +++ b/Documentation/admin-guide/laptops/thinkpad-acpi.rst
> @@ -50,6 +50,7 @@ detailed description):
>         - WAN enable and disable
>         - UWB enable and disable
>         - LCD Shadow (PrivacyGuard) enable and disable
> +       - Lap mode sensor
>
>  A compatibility table by model and feature is maintained on the web
>  site, http://ibm-acpi.sf.net/. I appreciate any success or failure
> @@ -1432,6 +1433,20 @@ The first command ensures the best viewing angle and the latter one turns
>  on the feature, restricting the viewing angles.
>
>
> +DYTC Lapmode sensor
> +------------------
> +
> +sysfs: dytc_lapmode
> +
> +Newer thinkpads and mobile workstations have the ability to determine if
> +the device is in deskmode or lapmode. This feature is used by user space
> +to decide if WWAN transmission can be increased to maximum power and is
> +also useful for understanding the different thermal modes available as
> +they differ between desk and lap mode.
> +
> +The property is read-only. If the platform doesn't have support the sysfs
> +class is not created.
> +
>  EXPERIMENTAL: UWB
>  -----------------
>
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index ff7f0a4f2475..037eb77414f9 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -4022,8 +4022,8 @@ static bool hotkey_notify_6xxx(const u32 hkey,
>                 return true;
>         case TP_HKEY_EV_THM_CSM_COMPLETED:
>                 pr_debug("EC reports: Thermal Control Command set completed (DYTC)\n");
> -               /* recommended action: do nothing, we don't have
> -                * Lenovo ATM information */
> +               /* Thermal event - pass on to event handler */
> +               tpacpi_driver_event(hkey);
>                 return true;
>         case TP_HKEY_EV_THM_TRANSFM_CHANGED:
>                 pr_debug("EC reports: Thermal Transformation changed (GMTS)\n");
> @@ -9795,6 +9795,105 @@ static struct ibm_struct lcdshadow_driver_data = {
>         .write = lcdshadow_write,
>  };
>
> +/*************************************************************************
> + * DYTC subdriver, for the Lenovo lapmode feature
> + */
> +
> +#define DYTC_CMD_GET          2 /* To get current IC function and mode */
> +#define DYTC_GET_LAPMODE_BIT 17 /* Set when in lapmode */
> +
> +static bool dytc_lapmode;
> +
> +static void dytc_lapmode_notify_change(void)
> +{
> +       sysfs_notify(&tpacpi_pdev->dev.kobj, NULL, "dytc_lapmode");
> +}
> +
> +static int dytc_command(int command, int *output)
> +{
> +       acpi_handle dytc_handle;
> +
> +       if (ACPI_FAILURE(acpi_get_handle(hkey_handle, "DYTC", &dytc_handle))) {
> +               /* Platform doesn't support DYTC */
> +               return -ENODEV;
> +       }
> +       if (!acpi_evalf(dytc_handle, output, NULL, "dd", command))
> +               return -EIO;
> +       return 0;
> +}
> +
> +static int dytc_lapmode_get(bool *state)
> +{
> +       int output, err;
> +
> +       err = dytc_command(DYTC_CMD_GET, &output);
> +       if (err)
> +               return err;
> +       *state = output & BIT(DYTC_GET_LAPMODE_BIT) ? true : false;
> +       return 0;
> +}
> +
> +static void dytc_lapmode_refresh(void)
> +{
> +       bool new_state;
> +       int err;
> +
> +       err = dytc_lapmode_get(&new_state);
> +       if (err || (new_state == dytc_lapmode))
> +               return;
> +
> +       dytc_lapmode = new_state;
> +       dytc_lapmode_notify_change();
> +}
> +
> +/* sysfs lapmode entry */
> +static ssize_t dytc_lapmode_show(struct device *dev,
> +                                       struct device_attribute *attr,
> +                                       char *buf)
> +{
> +       return snprintf(buf, PAGE_SIZE, "%d\n", dytc_lapmode);
> +}
> +
> +static DEVICE_ATTR_RO(dytc_lapmode);
> +
> +static struct attribute *dytc_attributes[] = {
> +       &dev_attr_dytc_lapmode.attr,
> +       NULL,
> +};
> +
> +static const struct attribute_group dytc_attr_group = {
> +       .attrs = dytc_attributes,
> +};
> +
> +static int tpacpi_dytc_init(struct ibm_init_struct *iibm)
> +{
> +       int err;
> +
> +       err = dytc_lapmode_get(&dytc_lapmode);
> +       /* If support isn't available (ENODEV) then don't return an error
> +        * but just don't create the sysfs group
> +        */
> +       if (err == -ENODEV)
> +               return 0;
> +       /* For all other errors we can flag the failure */
> +       if (err)
> +               return err;
> +
> +       /* Platform supports this feature - create the group */
> +       err = sysfs_create_group(&tpacpi_pdev->dev.kobj, &dytc_attr_group);
> +       return err;
> +}
> +
> +static void dytc_exit(void)
> +{
> +       sysfs_remove_group(&tpacpi_pdev->dev.kobj, &dytc_attr_group);
> +}
> +
> +static struct ibm_struct dytc_driver_data = {
> +       .name = "dytc",
> +       .exit = dytc_exit,
> +};
> +
>  /****************************************************************************
>   ****************************************************************************
>   *
> @@ -9842,6 +9941,10 @@ static void tpacpi_driver_event(const unsigned int hkey_event)
>
>                 mutex_unlock(&kbdlight_mutex);
>         }
> +
> +       if (hkey_event == TP_HKEY_EV_THM_CSM_COMPLETED)
> +               dytc_lapmode_refresh();
> +
>  }
>
>  static void hotkey_driver_event(const unsigned int scancode)
> @@ -10280,6 +10383,10 @@ static struct ibm_init_struct ibms_init[] __initdata = {
>                 .init = tpacpi_lcdshadow_init,
>                 .data = &lcdshadow_driver_data,
>         },
> +       {
> +               .init = tpacpi_dytc_init,
> +               .data = &dytc_driver_data,
> +       },
>  };
>
>  static int __init set_ibm_param(const char *val, const struct kernel_param *kp)
> --
> 2.26.2
>


-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
