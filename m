Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AEAA51D52B
	for <lists+ibm-acpi-devel@lfdr.de>; Fri,  6 May 2022 12:05:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1nmupH-00069d-Av; Fri, 06 May 2022 10:04:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hdegoede@redhat.com>) id 1nmupF-00069K-KH
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 06 May 2022 10:04:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bHY4VDg+ah70TicV7Rfgy/3c2lRATR8HIfCmkjcH/Oc=; b=Rge1vSvuSjNqmwXwtyDaLtOd1p
 RT4EdzqeG1nq/3gZqXazaUOQNZVeWlXoziszAXhR5e/7FlxVeE9UJIfG1HXKG+y+JTi1FfGQTUkkL
 I5/4KOvvBfe8h9soW7TBKR8eb9ZoFTmy6DfyIQhbzL+m4XMdHaQt9TWf3/d4n7vHK/cw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bHY4VDg+ah70TicV7Rfgy/3c2lRATR8HIfCmkjcH/Oc=; b=RPDN0hKFAmcdgoVPoQk+NKQnnx
 yhhN6MJOiXaYm3CKC+rptOO7kLcc8gzthQx4MKX/TbgZBaVx9GMEJlf99k6Mt39FgXRxVRWssI394
 2BHewGxs8mkwbCqp2gWGuS8BnC3BWScqlwXO2+1Z7Cib1mHjx0mxy8PQ+Lyx+TdJd21k=;
Received: from us-smtp-delivery-74.mimecast.com ([170.10.129.74])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nmupF-0005lG-1Q
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 06 May 2022 10:04:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1651831474;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bHY4VDg+ah70TicV7Rfgy/3c2lRATR8HIfCmkjcH/Oc=;
 b=EBBF1w/tsdjvq9gqaANcNuvF+dcxYCX8kGzpyOtj10w/7SvIkfwfDBdXvhGA/bWTbEdxJI
 65KY+iLnJwJzhns/l4G0P/rwIYzc3B65IUQady+K5xk5rN58CNOnqhZQUBxChoFntH7NTW
 hbE9AArJ4O6qxvp7i6T9km8bLB3b10k=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-231-lxRZlqcONiCL1FrirK1dVw-1; Fri, 06 May 2022 06:04:33 -0400
X-MC-Unique: lxRZlqcONiCL1FrirK1dVw-1
Received: by mail-ed1-f71.google.com with SMTP id
 k13-20020a50ce4d000000b00425e4447e64so3737282edj.22
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Fri, 06 May 2022 03:04:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=bHY4VDg+ah70TicV7Rfgy/3c2lRATR8HIfCmkjcH/Oc=;
 b=wRx2UpyKPMxBNTOGqTp7FW2PQQHbJjwSb5pyjJedlmtS91jzRqPqRubTel+VwDIgTj
 8jEou1MTh2E48psSEflqUofDJyjYvpV8aOSzK+mc6yz16vpe9fmOx1aqcqgsRgTh8KXT
 jTuMAGY9wN6eLWMp1XkASMsVg3L05i6MXdVAzF5Nhti+d8thZsW23XHKevag5JlE66wW
 0YgDdrLVVhKTH7cGsJonuX6bWDGbVr+sTLfX3XHsZfO5f80DLStcY/LlmfssD0/Bg1wx
 jXYOtBIMnFlNHRz6FVsFw7Sb2lxOOPLcay511b7CablYeJ3NfGByMMj4qC8HWvqnfKLr
 5ICw==
X-Gm-Message-State: AOAM532fcXnvi41BYczQ4s7SfhJvSbeUrJnu4Ob87sQhAd3yGLSXh+AE
 fXNwOJG4fo66ZLMq7mQBycGThASoOXRG4bmrKEq6Dso1mnI5F9UEbVsMXFqeV6nzDDe6D2hFUIX
 dJQfy4Y33Scd6eEqZOd1mkJBKxUO4B9OSbZM=
X-Received: by 2002:a17:906:2989:b0:6f3:a215:8426 with SMTP id
 x9-20020a170906298900b006f3a2158426mr2179954eje.725.1651831470961; 
 Fri, 06 May 2022 03:04:30 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw00aYNt3RKDL8C1p1bUN4+NsjLxXRo4/823/OnQVTFKXu+rcbvHVRjmFNcVwCoe0MclOGQNA==
X-Received: by 2002:a17:906:2989:b0:6f3:a215:8426 with SMTP id
 x9-20020a170906298900b006f3a2158426mr2179940eje.725.1651831470771; 
 Fri, 06 May 2022 03:04:30 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c1e:bf00:d69d:5353:dba5:ee81?
 (2001-1c00-0c1e-bf00-d69d-5353-dba5-ee81.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:d69d:5353:dba5:ee81])
 by smtp.gmail.com with ESMTPSA id
 zd9-20020a17090698c900b006f3ef214e28sm1814747ejb.142.2022.05.06.03.04.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 06 May 2022 03:04:30 -0700 (PDT)
Message-ID: <0d048b50-ee27-b5d6-11e2-f2f11ae17b79@redhat.com>
Date: Fri, 6 May 2022 12:04:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
To: Mario Limonciello <mario.limonciello@amd.com>,
 Mark Pearson <markpearson@lenovo.com>
References: <20220503012700.1273-1-mario.limonciello@amd.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20220503012700.1273-1-mario.limonciello@amd.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -4.6 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 5/3/22 03:27, Mario Limonciello wrote: > When compiled
 without `CONFIG_SUSPEND` the extra s2idle quirk handling > doesn't make any
 sense and causes a kernel build failure. > > Disable the new code [...] 
 Content analysis details:   (-4.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -3.1 NICE_REPLY_A           Looks like a legit reply (A)
 -0.6 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nmupF-0005lG-1Q
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: Fix
 compilation without CONFIG_SUSPEND
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
Cc: Mark Gross <mgross@linux.intel.com>, kernel test robot <lkp@intel.com>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:THINKPAD ACPI EXTRAS DRIVER" <platform-driver-x86@vger.kernel.org>,
 "open list:THINKPAD ACPI EXTRAS DRIVER" <ibm-acpi-devel@lists.sourceforge.net>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 5/3/22 03:27, Mario Limonciello wrote:
> When compiled without `CONFIG_SUSPEND` the extra s2idle quirk handling
> doesn't make any sense and causes a kernel build failure.
> 
> Disable the new code with `CONFIG_SUSPEND` not set.
> 
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Mario Limonciello <mario.limonciello@amd.com>

Thanks, since the original patch was still in my review-hans
branch (and not yet in for-next) I've squashed this fix into
the original patch.

Regards,

Hans




> ---
>  drivers/platform/x86/thinkpad_acpi.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index f385450af864..2833609fade7 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -4482,6 +4482,7 @@ static const struct dmi_system_id fwbug_list[] __initconst = {
>  	{}
>  };
>  
> +#ifdef CONFIG_SUSPEND
>  /*
>   * Lenovo laptops from a variety of generations run a SMI handler during the D3->D0
>   * transition that occurs specifically when exiting suspend to idle which can cause
> @@ -4517,6 +4518,7 @@ static void thinkpad_acpi_amd_s2idle_restore(void)
>  static struct acpi_s2idle_dev_ops thinkpad_acpi_s2idle_dev_ops = {
>  	.restore = thinkpad_acpi_amd_s2idle_restore,
>  };
> +#endif
>  
>  static const struct pci_device_id fwbug_cards_ids[] __initconst = {
>  	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, 0x24F3) },
> @@ -11569,8 +11571,10 @@ static void thinkpad_acpi_module_exit(void)
>  
>  	tpacpi_lifecycle = TPACPI_LIFE_EXITING;
>  
> +#ifdef CONFIG_SUSPEND
>  	if (tp_features.quirks && tp_features.quirks->s2idle_bug_mmio)
>  		acpi_unregister_lps0_dev(&thinkpad_acpi_s2idle_dev_ops);
> +#endif
>  	if (tpacpi_hwmon)
>  		hwmon_device_unregister(tpacpi_hwmon);
>  	if (tp_features.sensors_pdrv_registered)
> @@ -11743,11 +11747,13 @@ static int __init thinkpad_acpi_module_init(void)
>  	dmi_id = dmi_first_match(fwbug_list);
>  	if (dmi_id) {
>  		tp_features.quirks = dmi_id->driver_data;
> +#ifdef CONFIG_SUSPEND
>  		if (tp_features.quirks->s2idle_bug_mmio) {
>  			if (!acpi_register_lps0_dev(&thinkpad_acpi_s2idle_dev_ops))
>  				pr_info("Using s2idle quirk to avoid %s platform firmware bug\n",
>  					dmi_id->ident ? dmi_id->ident : "");
>  		}
> +#endif
>  	}
>  
>  	return 0;



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
