Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A556E487B98
	for <lists+ibm-acpi-devel@lfdr.de>; Fri,  7 Jan 2022 18:44:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1n5tH6-00068y-SU; Fri, 07 Jan 2022 17:43:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dmitry.torokhov@gmail.com>) id 1n5tH4-00068r-UP
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 07 Jan 2022 17:43:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:Date:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=g30nKtOg1oeqH8IqiezmzUi5A0C1r6MR6z8qoYYRJG0=; b=YTcxVH3jSwL1W1yfv4GjqEBn2G
 pUQf7hMnQR+ZhzHOS2cIS+tHmksN5RnQHbo9CfuwHzT0JG5DTJZnftf61GK6v5v9hOW+/ZWbpvMQH
 6FWilH+583DI8DHyX4pIM6myT9+gloikmPskxNFctJDB78PmpOszHj9XUvjA/0EJwohc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :Date:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=g30nKtOg1oeqH8IqiezmzUi5A0C1r6MR6z8qoYYRJG0=; b=InAU9zzODi3z80XwV0bXhSvGBg
 zHwuYWbjnfRDSsPdPT5Mn62z/I/GAb3zo8iKS+au3QRGrdbR9WQnW7WEBkdq+z1cHr+al9S3BDhNI
 zHzRxeO3Akvxpx4Ol39NkDrlMNLEwjro4tXvP/sN/K++q2k355x4i0lh48O0w+vRi7NU=;
Received: from mail-pj1-f53.google.com ([209.85.216.53])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1n5tH4-000108-9b
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 07 Jan 2022 17:43:34 +0000
Received: by mail-pj1-f53.google.com with SMTP id
 l16-20020a17090a409000b001b2e9628c9cso7046789pjg.4
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Fri, 07 Jan 2022 09:43:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=g30nKtOg1oeqH8IqiezmzUi5A0C1r6MR6z8qoYYRJG0=;
 b=noyvDUT/nbivAF0rT4dfV9xn454IPhiHu8WTlgdT6oRJhgftL0NuoSgAlbZV5RJIu9
 nTN/iiRSBTxIP1KcsGuJek5zEuhhmvJdOkyteusKA3jjzOFtRc9NkCps2T0D/VkSHO+w
 sx3YC9DckzmiUFjpY6leFfzIBYvLiM0e9EBP861h3wrCS5IGmu9OLi30S5+j9VfmCfkJ
 6jbgNM0yNeieKo9HV/lzjqJeZ6bwyhFYTcSF518jb7VMNpDWgoYxMNgIV9YC1e04MEjH
 PIJVNX+5v84rv15o728J8YW2ck+rZEDWYPlQSpJTnbu9Euk41vqTxb88DmpTmOiX9WYu
 oBhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=g30nKtOg1oeqH8IqiezmzUi5A0C1r6MR6z8qoYYRJG0=;
 b=Ctow8S+MztKnqJ6i5EOuv6eOtb1qO8hwe7kiBtgdsswoCuRfhLHWtIxjgfCuUpa6jT
 rxRHkqpR7+orVhAl5Ran3K8Ep+4OlPL71ddkezo2sNLklgbXqlyNife1IUBbMWh/dx15
 arKPgVlt8RGB+e3G1PSPKa6eLBm7OEUZACofmviICdG0JZHiuKOxpOt8Xht4yZ7mV29m
 2WghjUwIFDAjdMLBnXbQChr1+x0sK4bMpxrj3CgqN0c1PsDy+L9OKdvcn0L0fKgylrXi
 lDFB3PT3K5z2Win9iGQJoULhyhQ60uWpWM8SA/sd5BRx9D9tK5DMw7T/joNUGvjDLXUb
 tj9A==
X-Gm-Message-State: AOAM531t2F4R3RQD5BeO1BEEdxhXvI4EP+YLFmJJ/+PQrXhnEXcySYCk
 zmtMD7ll3Cg5gIjr+dQ53V0=
X-Google-Smtp-Source: ABdhPJwKY32mIfyYWhl9RZtln0aNIwFsoDt8YrT/vnaJUStlVNedJ3mNTbWr7JM9VrRLn5ydISU7aQ==
X-Received: by 2002:a17:902:f54a:b0:14a:147b:6036 with SMTP id
 h10-20020a170902f54a00b0014a147b6036mr907495plf.154.1641577408541; 
 Fri, 07 Jan 2022 09:43:28 -0800 (PST)
Received: from google.com ([2620:15c:202:201:4a85:a3d:72a9:2009])
 by smtp.gmail.com with ESMTPSA id z12sm6690164pfe.110.2022.01.07.09.43.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Jan 2022 09:43:27 -0800 (PST)
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
X-Google-Original-From: Dmitry Torokhov <dtor@google.com>
Date: Fri, 7 Jan 2022 09:43:23 -0800
To: Rajat Jain <rajatja@google.com>
Message-ID: <Ydh7u1kuXSMzwmW0@google.com>
References: <20211222001127.3337471-1-rajatja@google.com>
 <20211222001127.3337471-2-rajatja@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211222001127.3337471-2-rajatja@google.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Rajat, On Tue, Dec 21, 2021 at 04:11:26PM -0800, Rajat
 Jain wrote: > +static int chromeos_privacy_screen_remove(struct acpi_device
 *adev) > +{ > + struct drm_privacy_screen *drm_privacy_screen = acpi_driver_
 [...] Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.53 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dmitry.torokhov[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.53 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1n5tH4-000108-9b
Subject: Re: [ibm-acpi-devel] [PATCH v4 2/3] platform/chrome: Add driver for
 ChromeOS privacy-screen
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
Cc: gwendal@google.com, marcheu@google.com,
 Thomas Zimmermann <tzimmermann@suse.de>, seanpaul@google.com,
 ibm-acpi-devel@lists.sourceforge.net, David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 platform-driver-x86@vger.kernel.org, Mark Gross <markgross@kernel.org>,
 Hans de Goede <hdegoede@redhat.com>, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Benson Leung <bleung@chromium.org>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>, rajatxjain@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Rajat,

On Tue, Dec 21, 2021 at 04:11:26PM -0800, Rajat Jain wrote:
> +static int chromeos_privacy_screen_remove(struct acpi_device *adev)
> +{
> +	struct drm_privacy_screen *drm_privacy_screen =	acpi_driver_data(adev);

Please add an empty line here:

WARNING: Missing a blank line after declarations
#292: FILE: drivers/platform/chrome/chromeos_privacy_screen.c:129:
+       struct drm_privacy_screen *drm_privacy_screen = acpi_driver_data(adev);
+       drm_privacy_screen_unregister(drm_privacy_screen);

> +	drm_privacy_screen_unregister(drm_privacy_screen);
> +	return 0;
> +}
> +
> +static const struct acpi_device_id chromeos_privacy_screen_device_ids[] = {
> +	{"GOOG0010", 0}, /* Google's electronic privacy screen for eDP-1 */
> +	{}
> +};
> +MODULE_DEVICE_TABLE(acpi, chromeos_privacy_screen_device_ids);
> +
> +static struct acpi_driver chromeos_privacy_screen_driver = {
> +	.name = "chromeos_privacy_screen_drvr",

Could I buy 2 move vowels? ;)

> +	.class = "ChromeOS",
> +	.ids = chromeos_privacy_screen_device_ids,
> +	.ops = {
> +		.add = chromeos_privacy_screen_add,
> +		.remove = chromeos_privacy_screen_remove,
> +	},
> +};
> +
> +module_acpi_driver(chromeos_privacy_screen_driver);
> +MODULE_LICENSE("GPL v2");
> +MODULE_DESCRIPTION("ChromeOS ACPI Privacy Screen driver");
> +MODULE_AUTHOR("Rajat Jain <rajatja@google.com>");

Otherwise

Reviewed-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>

Thanks.

-- 
Dmitry


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
