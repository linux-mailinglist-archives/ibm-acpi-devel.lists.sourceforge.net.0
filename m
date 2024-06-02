Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A7F218D75BC
	for <lists+ibm-acpi-devel@lfdr.de>; Sun,  2 Jun 2024 15:29:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1sDlGH-0007LN-DK;
	Sun, 02 Jun 2024 13:28:36 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1sDlGF-0007LG-GK
 for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 02 Jun 2024 13:28:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=J2ksBBz/iMsKyhAoghBunV+ULI0bAygLRPzhwkwvJZ0=; b=m7eZYBrkapTvM6KfvZS2PTBXKM
 yz+yJ1s1dgvk5VRbnJkYc+6xGWgyG0qHKcTZj3OzohMalU9KRleCYxFAqc37nHk/Azy0jFzCW2ikv
 uJzGR1d7TFZtJcgWpjV6lyFB24iyIrIxe+O8a7JHllGFdbmxfex04fsdVguopGSpdCdI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=J2ksBBz/iMsKyhAoghBunV+ULI0bAygLRPzhwkwvJZ0=; b=JU6CBu2O3KBBBH3SBDeWTXujw6
 CC9rDLepoHEPd4XfsjmH32ijUm+53ljRD67URbNX4pNFtaGMALkqo5Jc5lH66N25zyWb6J2YZZjl0
 QKZxbfPrtgBoLV45WchAbJOlzIl01Wekkulu9odUuM5nwgslBI7noRQg7d8SG2p1DM/4=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sDlGE-0000ws-WA for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 02 Jun 2024 13:28:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1717334902;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=J2ksBBz/iMsKyhAoghBunV+ULI0bAygLRPzhwkwvJZ0=;
 b=hUQbekQHNNcjFAvIuiQtmiBMbhkkLBOhdsn0iOf1OA5RRIzbDFsHybWZTQXJf417LWF2BS
 cG5JIBrltx0CoNJhpUsaUOfy4nOi/Jtm4HkEbmDbl9xK5czwhtED3UbS0QDp9o+xre/A7x
 XBd5sGe2KrqsvyNdzNtKfoURMw3DXtw=
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com
 [209.85.167.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-74-bJiY_ctJMhSdMwEtpA2u8A-1; Sun, 02 Jun 2024 09:28:21 -0400
X-MC-Unique: bJiY_ctJMhSdMwEtpA2u8A-1
Received: by mail-lf1-f71.google.com with SMTP id
 2adb3069b0e04-52b9ae5de61so13648e87.3
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Sun, 02 Jun 2024 06:28:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1717334900; x=1717939700;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=J2ksBBz/iMsKyhAoghBunV+ULI0bAygLRPzhwkwvJZ0=;
 b=TXILUFeiFP+Mke681sSgM8/zO6c2gkQ52cnZQgXWNNJYiyoRqSq0vtROWNCY3netIk
 2iQRt1DWy8KdQEUJT44TpNjUmfyKFGFOzKC5eUEBA6bFZo+sCwfflEp4rv2St3jfKvsN
 iifagKZqhE6VidiSs5jkA98UNCOyTlbcJi+nq11VrsK8HJdWuKABzcLHqsIHuJwrfjza
 tYhLPgvHmEb8/XtNTexdidCtkJX72/s0zl3/OWLI3kT1sz/PScyhw9gNDROaLu1KWKdD
 cKa77y2qGqJDGZ9f/7DraIj6PYjAF6UgmvBpCTL+TT/gwTHkAurOAA8jRr7LayBVxXzh
 7wGw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVKUm4A66KwlBFfbS0H9vUWblGlA0S1WrT+3au+DNFYV8ta3dOuZCWIqP4FvBkbClhsh+JPoXQPQxQ8zoMm1XV+yQDivKevKVD5gvmhoDCitjuNGzQ=
X-Gm-Message-State: AOJu0Yyv5baUCUu2TN9McWGBRYfJOyd+ZsZyywS75CamvKx8w9ALYEM2
 TeDSPc0zQy0YdObTut2lGn/VQQ2fNOe6bpW6qj85XPeswiWfqp/IqiK1SLLUpYsbBObk/G9KNGJ
 /yoWvhuK530Zy0EUuWzuOKe1rVduAoU35eSosQtlQa4Waa6jt36SEaSnYdcKWlWVQ0ar7nQGb
X-Received: by 2002:a05:6512:5d0:b0:52a:e529:16bd with SMTP id
 2adb3069b0e04-52b896cd4eamr4094240e87.58.1717334899843; 
 Sun, 02 Jun 2024 06:28:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF/zjsPxbm+iu1zYdjIxDs/ERNL/koIx09TmrudtPXqatg/1AluktejFl2+ZnRY/fYQWyDeMg==
X-Received: by 2002:a05:6512:5d0:b0:52a:e529:16bd with SMTP id
 2adb3069b0e04-52b896cd4eamr4094220e87.58.1717334899347; 
 Sun, 02 Jun 2024 06:28:19 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a68ba90e185sm193922566b.157.2024.06.02.06.28.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 02 Jun 2024 06:28:18 -0700 (PDT)
Message-ID: <ac97bbf6-0ead-4e0e-8c21-239e78a0cc98@redhat.com>
Date: Sun, 2 Jun 2024 15:28:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Andy Shevchenko <andy.shevchenko@gmail.com>,
 Jorge Lopez <jorge.lopez2@hp.com>, Li Zetao <lizetao1@huawei.com>,
 Simon Trimmer <simont@opensource.cirrus.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Mark Pearson <mpearson-lenovo@squebb.ca>,
 platform-driver-x86@vger.kernel.org, linux-kernel@vger.kernel.org,
 ibm-acpi-devel@lists.sourceforge.net, linux-input@vger.kernel.org
References: <20240602090244.1666360-1-andy.shevchenko@gmail.com>
 <20240602090244.1666360-2-andy.shevchenko@gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20240602090244.1666360-2-andy.shevchenko@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 6/2/24 10:57 AM,
 Andy Shevchenko wrote: > Use 2-argument
 strscpy(), which is not only shorter but also provides > an additional check
 that destination buffer is an array. > > Signed-off-by: Andy Sh [...] 
 Content analysis details:   (-0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [170.10.133.124 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [170.10.133.124 listed in sa-trusted.bondedsender.org]
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1sDlGE-0000ws-WA
Subject: Re: [ibm-acpi-devel] [PATCH v1 1/7] platform/x86: asus-tf103c-dock:
 Use 2-argument strscpy()
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
Cc: Mark Pearson <markpearson@lenovo.com>, "Luke D. Jones" <luke@ljones.dev>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Corentin Chary <corentin.chary@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 6/2/24 10:57 AM, Andy Shevchenko wrote:
> Use 2-argument strscpy(), which is not only shorter but also provides
> an additional check that destination buffer is an array.
> 
> Signed-off-by: Andy Shevchenko <andy.shevchenko@gmail.com>

Thanks, the entire series looks good to me:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

for the series.

Regards,

Hans




> ---
>  drivers/platform/x86/asus-tf103c-dock.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/platform/x86/asus-tf103c-dock.c b/drivers/platform/x86/asus-tf103c-dock.c
> index 8f0f87637c5f..b441d8ca72d3 100644
> --- a/drivers/platform/x86/asus-tf103c-dock.c
> +++ b/drivers/platform/x86/asus-tf103c-dock.c
> @@ -490,7 +490,7 @@ static void tf103c_dock_enable_touchpad(struct tf103c_dock_data *dock)
>  		return;
>  	}
>  
> -	strscpy(board_info.type, "elan_i2c", I2C_NAME_SIZE);
> +	strscpy(board_info.type, "elan_i2c");
>  	board_info.addr = TF103C_DOCK_TP_ADDR;
>  	board_info.dev_name = TF103C_DOCK_DEV_NAME "-tp";
>  	board_info.irq = dock->tp_irq;
> @@ -795,7 +795,7 @@ static int tf103c_dock_probe(struct i2c_client *client)
>  	 */
>  	dock->ec_client = client;
>  
> -	strscpy(board_info.type, "tf103c-dock-intr", I2C_NAME_SIZE);
> +	strscpy(board_info.type, "tf103c-dock-intr");
>  	board_info.addr = TF103C_DOCK_INTR_ADDR;
>  	board_info.dev_name = TF103C_DOCK_DEV_NAME "-intr";
>  
> @@ -803,7 +803,7 @@ static int tf103c_dock_probe(struct i2c_client *client)
>  	if (IS_ERR(dock->intr_client))
>  		return dev_err_probe(dev, PTR_ERR(dock->intr_client), "creating intr client\n");
>  
> -	strscpy(board_info.type, "tf103c-dock-kbd", I2C_NAME_SIZE);
> +	strscpy(board_info.type, "tf103c-dock-kbd");
>  	board_info.addr = TF103C_DOCK_KBD_ADDR;
>  	board_info.dev_name = TF103C_DOCK_DEV_NAME "-kbd";
>  
> @@ -846,8 +846,8 @@ static int tf103c_dock_probe(struct i2c_client *client)
>  	dock->hid->vendor = 0x0b05;  /* USB_VENDOR_ID_ASUSTEK */
>  	dock->hid->product = 0x0103; /* From TF-103-C */
>  	dock->hid->version = 0x0100; /* 1.0 */
> -	strscpy(dock->hid->name, "Asus TF103C Dock Keyboard", sizeof(dock->hid->name));
> -	strscpy(dock->hid->phys, dev_name(dev), sizeof(dock->hid->phys));
> +	strscpy(dock->hid->name, "Asus TF103C Dock Keyboard");
> +	strscpy(dock->hid->phys, dev_name(dev));
>  
>  	ret = hid_add_device(dock->hid);
>  	if (ret)



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
