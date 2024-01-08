Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 32AEE8271FA
	for <lists+ibm-acpi-devel@lfdr.de>; Mon,  8 Jan 2024 15:57:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rMr3z-0006Fp-37;
	Mon, 08 Jan 2024 14:57:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1rMr3x-0006Fi-92
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 08 Jan 2024 14:57:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NZYr/5wbdSTN5KMNy+kx/4t5MRG0j7fZAQY8NjpcndI=; b=AWiZvljOJseFScuKXfK436FIlX
 e+Lp3AQtUPFCUSTmfEbMbxHTFHzp3s33cX55Hlv9ZyqEMgCagKgF9++b3s7/IevMHmv8c15rBo91q
 3Q34C2BIk4jZw8+fgbIf/2AvkD3W30gVi9S9nG96bGe9/UA3pCpgs5Kv8e1Jigw7xv9k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NZYr/5wbdSTN5KMNy+kx/4t5MRG0j7fZAQY8NjpcndI=; b=Br2AbECWT+OsfouEQW+qoSdiuu
 MADhwrxske72rNXj7etYOqC/c4Pc2iuUVtAC/OzbFOPob9jCuqWogZ1havw66JWZSL+8H89uwwNkx
 uQLfsEejeMnHssNITod9kRCCV352ih6elrfpOOUI2ZyelIu3SvxQzmTHf9gvkKuVhFSA=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rMr3q-000126-CL for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 08 Jan 2024 14:57:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1704725814;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=NZYr/5wbdSTN5KMNy+kx/4t5MRG0j7fZAQY8NjpcndI=;
 b=i4cAOCoyApRFS1nrefl8VRLCvsyPooik4TNkfp+EcfMHJwt7OVsQ+UKdV7esaPVTNUnnY8
 NuKWh56mfJh8BE39ybm6Es84MXjwzmExPAqTraMUtEPSO10ooJXsikufy2zl3DTr9ipzhh
 L/f7Po4mut4sphziwC5u8kho19Uz/lg=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-131-Pbae61dONkuIxWtUkKp0Pw-1; Mon, 08 Jan 2024 09:56:47 -0500
X-MC-Unique: Pbae61dONkuIxWtUkKp0Pw-1
Received: by mail-ej1-f69.google.com with SMTP id
 a640c23a62f3a-a28911570cfso84687766b.2
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 08 Jan 2024 06:56:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1704725805; x=1705330605;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=NZYr/5wbdSTN5KMNy+kx/4t5MRG0j7fZAQY8NjpcndI=;
 b=gE9BBxdBsETdbnpTkNUk2cQ2t4nyCVv7VQqsKRLMZ+wAQsgjiGQWkSMcumJBD4wkAi
 ZVozJGgiwz5/W3aot4dgpHejwp8ngz/RD2R6F55LJJh5B1xUiK8RM7oqJGR7cDlATA3J
 WeXEQGPxaldzD13iP9d9ai7H0xGlBJ7NTvDsXc70Xvp18kiaPT/34aYl7VBoBEttB5fS
 tVrHBYp6H7DQENMwe44Fop0ELIVQzlrw1NuxEEEvfSrkIhEpDAefHr2nZk+Ri8VDbc37
 A6eisrbeBEZIRa/9fB9W9lYfSMl4uER4wwiVhHXamvKqOmhVGnd4td/ffRyHFU90jaPc
 BB5Q==
X-Gm-Message-State: AOJu0YxiOwf0zOfZKYNsv8rfNRy0vBxPwS8uxGqr0m8jWWzrSl94T/1h
 uwVz+ytTU1CjPkYip0c6SOMLRc0bfD8Pr64X5HpEIpq+CGkWs/FZayg5O+xK86AH0OUPvGX/3/l
 +OlOLHqxJSEEXQcJKW92R01qrYbzctMteTo8f/vI2cig=
X-Received: by 2002:a17:906:74c1:b0:a28:cf39:bf68 with SMTP id
 z1-20020a17090674c100b00a28cf39bf68mr1467991ejl.115.1704725805349; 
 Mon, 08 Jan 2024 06:56:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IESoC/LElRzDXS+V1sKd0uJqNqNVKwSj/kxkoY2fKBTyVs7saX56ulstF6COrGNKnx/PRlTVw==
X-Received: by 2002:a17:906:74c1:b0:a28:cf39:bf68 with SMTP id
 z1-20020a17090674c100b00a28cf39bf68mr1467986ejl.115.1704725805097; 
 Mon, 08 Jan 2024 06:56:45 -0800 (PST)
Received: from [10.40.98.142] ([78.108.130.194])
 by smtp.gmail.com with ESMTPSA id
 oq3-20020a170906cc8300b00a293c6cc184sm3788783ejb.24.2024.01.08.06.56.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 08 Jan 2024 06:56:44 -0800 (PST)
Message-ID: <f7bf65b4-c562-4d40-b02a-56c165138dd3@redhat.com>
Date: Mon, 8 Jan 2024 15:56:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Colin Ian King <colin.i.king@gmail.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 ibm-acpi-devel@lists.sourceforge.net, platform-driver-x86@vger.kernel.org
References: <20240106154740.55202-1-colin.i.king@gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20240106154740.55202-1-colin.i.king@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 1/6/24 16:47, Colin Ian King wrote: > The variable
 i is being initialized with the value 0 that is never > read, it is being
 re-assigned 0 again in a for-loop statement later > on. The initializati [...]
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -2.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rMr3q-000126-CL
Subject: Re: [ibm-acpi-devel] [PATCH][next] platform/x86: thinkpad_acpi:
 remove redundant assignment to variable i
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 1/6/24 16:47, Colin Ian King wrote:
> The variable i is being initialized with the value 0 that is never
> read, it is being re-assigned 0 again in a for-loop statement later
> on. The initialization is redundant and can be removed.
> 
> The initialization of variable n can also be deferred after the
> sanity check on pointer n and the declaration of all the int variables
> can be combined as a final code clear-up.
> 
> Cleans up clang scan build warning:
> warning: Value stored to 'i' is never read [deadcode.DeadStores]
> 
> Signed-off-by: Colin Ian King <colin.i.king@gmail.com>

Thanks, patch looks good to me:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans



> ---
>  drivers/platform/x86/thinkpad_acpi.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index c4895e9bc714..7bf91cfd3e51 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -6208,17 +6208,15 @@ static int thermal_get_sensor(int idx, s32 *value)
>  
>  static int thermal_get_sensors(struct ibm_thermal_sensors_struct *s)
>  {
> -	int res, i;
> -	int n;
> -
> -	n = 8;
> -	i = 0;
> +	int res, i, n;
>  
>  	if (!s)
>  		return -EINVAL;
>  
>  	if (thermal_read_mode == TPACPI_THERMAL_TPEC_16)
>  		n = 16;
> +	else
> +		n = 8;
>  
>  	for (i = 0 ; i < n; i++) {
>  		res = thermal_get_sensor(i, &s->temp[i]);



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
