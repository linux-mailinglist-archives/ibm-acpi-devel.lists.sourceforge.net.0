Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F091F4905B6
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 17 Jan 2022 11:09:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1n9OwQ-0001YB-5M; Mon, 17 Jan 2022 10:08:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hdegoede@redhat.com>) id 1n9OwO-0001Y5-RJ
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 17 Jan 2022 10:08:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NigNEBy9iY9q5B01WlMJ2ovobrWbqOLm5A4N7hXG/S4=; b=ioACxqWwP0KlfwkGWGr4qN+mic
 Ew0NWBQFPJqMWBUgExvyj4Uuh9hipn8G2sOqsEFLlO4fw8wxRBiZiOfuoTu9EYfWpl2OKCLWAt81F
 dg283weQyiBQpTB1v9m/VrmUQwn6q+im0/DOT46UJyeiA0eRjfZx7fmpALpAxGUZWvWs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NigNEBy9iY9q5B01WlMJ2ovobrWbqOLm5A4N7hXG/S4=; b=hx7QQ3gyAJ2lX1JSitngxXM2DJ
 49rA5gwfirP04CcUbXS5AtD9urm+782P4NyJiZHmIxsw82Z8io8OAPGmx8zUL4v2P7evPXyAszh96
 gf04Z3/OlS7sWTZ0NISQ/aKZ5Smfds1N2W2kEumbe5BbbMcai8zxxXJbWOkqp0lYqaLU=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n9OwM-000f8M-Op
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 17 Jan 2022 10:08:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1642414116;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=NigNEBy9iY9q5B01WlMJ2ovobrWbqOLm5A4N7hXG/S4=;
 b=TUFaJwgmsv9SqudpzQ7t0ZFmcT72+3uMrJUcaGs9sAdjc7304BDZMN0/vuSSEXWFOKHZ/v
 KhkuHYJ+l+w4EP35Ml9Gdy2v4osS2DeIclyBKXCn1FlIDvcoobT7cFZvnk7w+r49xYSLeg
 O/AWzqMb8kPuQfMVQRtFhJSAFsUI5qk=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-26-SOuaAMijNOaO7x86ceVgPA-1; Mon, 17 Jan 2022 05:08:35 -0500
X-MC-Unique: SOuaAMijNOaO7x86ceVgPA-1
Received: by mail-ed1-f69.google.com with SMTP id
 p14-20020aa7c88e000000b0040240401a02so2962955eds.14
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 17 Jan 2022 02:08:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:references:from:in-reply-to
 :content-transfer-encoding;
 bh=NigNEBy9iY9q5B01WlMJ2ovobrWbqOLm5A4N7hXG/S4=;
 b=06BsfAeXHVLnW0i29uzYIAmDPVvG+YKt6TuFdOCg6ix4RuZWj9xwFTlostehFahI2a
 t6rfOewnkIGS6g2T4YTK8/M72mtDkTlC2jl/E0zPNA2IfRP9gcnmpe36/ZsOHEyTvZQf
 iFcp4I4V02Dqvg7ib0yy6vE/6CmsNiBB33kxpqUEtOTj2vo1YRGVeLl9ouiRvAeviFsr
 MdcZn1UJz+LJPYq7+JGgNv7mZgDIz4wiZI36ezDxk5p/ocXpdWITKtT9PxFzsH7x9gOi
 ox9pSUMTM9vjQdh0wMmk0oRzio8pVuiHGWMpPnqz30KfqB2kRGtR88HIGDiGucmOC33W
 MsZg==
X-Gm-Message-State: AOAM533jSD9B1/4u9kKrYJBKTsHFi9iC7tKeH0HQ03QpaWs7RKEPHgqi
 yvRk4OXzjsUPNy/D9Z/DkJSBWkthbx8Ld3EjPT9Y29cB59aomuyGRUWodossngrbFDqDcM/62Vk
 uuJGHyA5YbF5Jd+qdms6eZC32nZDeVmTAyFk=
X-Received: by 2002:a17:907:720f:: with SMTP id
 dr15mr15838760ejc.729.1642414113847; 
 Mon, 17 Jan 2022 02:08:33 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxhww+1uTE5CXxnKlFKSY6oc9/jiSKUJ32I2FIY6C8REfBfTGhPWmpHWo3V1a0qC+ihYGLQJA==
X-Received: by 2002:a17:907:720f:: with SMTP id
 dr15mr15838744ejc.729.1642414113598; 
 Mon, 17 Jan 2022 02:08:33 -0800 (PST)
Received: from ?IPV6:2001:1c00:c1e:bf00:1db8:22d3:1bc9:8ca1?
 (2001-1c00-0c1e-bf00-1db8-22d3-1bc9-8ca1.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1db8:22d3:1bc9:8ca1])
 by smtp.gmail.com with ESMTPSA id z16sm5911424edm.49.2022.01.17.02.08.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 17 Jan 2022 02:08:33 -0800 (PST)
Message-ID: <25e931a1-a065-583d-8e3b-3b176492c266@redhat.com>
Date: Mon, 17 Jan 2022 11:08:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
To: Alexander Kobel <a-kobel@a-kobel.de>, ibm-acpi-devel@lists.sourceforge.net,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>,
 Mark Pearson <markpearson@lenovo.com>
References: <12d4b825-a2b9-8cb7-6ed3-db4d66f46a60@a-kobel.de>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <12d4b825-a2b9-8cb7-6ed3-db4d66f46a60@a-kobel.de>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -3.6 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 1/12/22 12:18, Alexander Kobel wrote: > Some ThinkPad
 models, like the X1 Tablet 1st and 2nd Gen, are passively > cooled without
 any fan. Currently, an entry in /proc/acpi/ibm/fan is > nevertheless [...]
 Content analysis details:   (-3.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1n9OwM-000f8M-Op
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: Add quirk
 for ThinkPads without a fan
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 1/12/22 12:18, Alexander Kobel wrote:
> Some ThinkPad models, like the X1 Tablet 1st and 2nd Gen, are passively
> cooled without any fan.  Currently, an entry in /proc/acpi/ibm/fan is
> nevertheless created, and misleadingly shows
> 	status:		enabled
> 	speed:		65535
> 	level:		auto
> 
> This patch adds a TPACPI_FAN_NOFAN quirk definition and corresponding
> handling to not initialize a fan interface at all.
> 
> For the time being, the quirk is only applied for X1 Tablet 2nd Gen
> (types 20JB, 20JC; EC N1O...); further models (such as Gen1, types 20GG
> and 20GH) can be added easily once tested.
> 
> Tested on a 20JCS00C00, BIOS N1OET58W (1.43), EC N1OHT34W.
> 
> Signed-off-by: Alexander Kobel <a-kobel@a-kobel.de>

Thanks, patch looks good to me:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

I expect Mark possibly coming-up with a better way to detect the number
of fans in a ThinkPad to take quite a while, so I've merged this for now
and then eventually we can replace it with a better fix if one shows up:

Thank you for your patch, I've applied this patch to my review-hans 
branch:
https://git.kernel.org/pub/scm/linux/kernel/git/pdx86/platform-drivers-x86.git/log/?h=review-hans

Note it will show up in my review-hans branch once I've pushed my
local branch there, which might take a while.

Once I've run some tests on this branch the patches there will be
added to the platform-drivers-x86/for-next branch and eventually
will be included in the pdx86 pull-request to Linus for the next
merge-window.

Regards,

Hans



> ---
>  drivers/platform/x86/thinkpad_acpi.c | 13 ++++++++++---
>  1 file changed, 10 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index e03df2881dc6..7dbe4061bc8a 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -8767,9 +8767,10 @@ static const struct attribute_group fan_attr_group = {
>  	.attrs = fan_attributes,
>  };
>  
> -#define TPACPI_FAN_Q1	0x0001		/* Unitialized HFSP */
> -#define TPACPI_FAN_2FAN	0x0002		/* EC 0x31 bit 0 selects fan2 */
> -#define TPACPI_FAN_2CTL	0x0004		/* selects fan2 control */
> +#define TPACPI_FAN_Q1		0x0001		/* Uninitialized HFSP */
> +#define TPACPI_FAN_2FAN		0x0002		/* EC 0x31 bit 0 selects fan2 */
> +#define TPACPI_FAN_2CTL		0x0004		/* selects fan2 control */
> +#define TPACPI_FAN_NOFAN	0x0008		/* no fan available */
>  
>  static const struct tpacpi_quirk fan_quirk_table[] __initconst = {
>  	TPACPI_QEC_IBM('1', 'Y', TPACPI_FAN_Q1),
> @@ -8787,6 +8788,7 @@ static const struct tpacpi_quirk fan_quirk_table[] __initconst = {
>  	TPACPI_Q_LNV3('N', '2', 'O', TPACPI_FAN_2CTL),	/* P1 / X1 Extreme (2nd gen) */
>  	TPACPI_Q_LNV3('N', '2', 'V', TPACPI_FAN_2CTL),	/* P1 / X1 Extreme (3nd gen) */
>  	TPACPI_Q_LNV3('N', '3', '0', TPACPI_FAN_2CTL),	/* P15 (1st gen) / P15v (1st gen) */
> +	TPACPI_Q_LNV3('N', '1', 'O', TPACPI_FAN_NOFAN),	/* X1 Tablet (2nd gen) */
>  };
>  
>  static int __init fan_init(struct ibm_init_struct *iibm)
> @@ -8816,6 +8818,11 @@ static int __init fan_init(struct ibm_init_struct *iibm)
>  	quirks = tpacpi_check_quirks(fan_quirk_table,
>  				     ARRAY_SIZE(fan_quirk_table));
>  
> +	if (quirks & TPACPI_FAN_NOFAN) {
> +		pr_info("No integrated ThinkPad fan available\n");
> +		return 1;
> +	}
> +
>  	if (gfan_handle) {
>  		/* 570, 600e/x, 770e, 770x */
>  		fan_status_access_mode = TPACPI_FAN_RD_ACPI_GFAN;
> 



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
