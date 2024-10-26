Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E5C9B16E8
	for <lists+ibm-acpi-devel@lfdr.de>; Sat, 26 Oct 2024 12:08:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1t4di0-00043Z-Rj;
	Sat, 26 Oct 2024 10:07:48 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1t4dhz-00043S-MV
 for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 26 Oct 2024 10:07:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=86pihVpFCTMFYss1/Iltby9/esixmfhGJjvS5+uk3X8=; b=MDsgBEXXHVkkn89KKTh8sucAix
 HEpRw3+a/Qs2BysdE7OAziPlh14FKFxUz4ARCMSS7iYi7TpkHcxZx0fe5K+2QkamDd+S2g3g+6t1K
 UGMI4bnTHjFjIUvYSFpgAqY26TYfhzBWQFBvOfazSvBNhXvJzL58grQGuUyR88E5KQbE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=86pihVpFCTMFYss1/Iltby9/esixmfhGJjvS5+uk3X8=; b=fvfpnXu6j7AeDH3sMYrqkdXcy1
 X5mUulyplUoxqq4sulwxFRCWtz1K939RRN3uwQaFFyW6M9INrPGCfO9LSCU+yUiuzG9oe9EX0vd5B
 DCmIq2SoGULUsz5+kppZwlIrF/e9N/zjYREdcAi7qLafL6UkD2NT6VbA/X+xGA6HuoMY=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t4dhy-0001B2-Dh for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 26 Oct 2024 10:07:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1729937260;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=86pihVpFCTMFYss1/Iltby9/esixmfhGJjvS5+uk3X8=;
 b=boS7LHsvyh/7fkENtVkCXnrA10Qit4x/q35gs/E7eFIirNh7hx739SDxJTDFS3nhkpN8RU
 vm0dLrAqyQbvcpryZe2kWODtfG0wGBybQch4CH0Tk8Zm1OxJjdq+xrtLMJFqQkmq/oTN+Z
 nvYDM7zwLfI0o6WRAsNjwvj+TUmapS4=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-145-RTwHzl4LPq2dc69qmuKPWw-1; Sat, 26 Oct 2024 06:07:37 -0400
X-MC-Unique: RTwHzl4LPq2dc69qmuKPWw-1
Received: by mail-ej1-f72.google.com with SMTP id
 a640c23a62f3a-a9a2c3e75f0so183948866b.1
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Sat, 26 Oct 2024 03:07:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729937256; x=1730542056;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=86pihVpFCTMFYss1/Iltby9/esixmfhGJjvS5+uk3X8=;
 b=svceQerpSYz/NwSxz1peotuNVLg9d9LN5IAfI6vBASSecZaamKlI8iMoxAH7OoBveH
 M46L/+1DfOvM3iI2erbE8qdW4Iv/bVhSHnTB7PmQpLtmN2RODKXYm4GtqwU0/I43oPYd
 biawT2Pt2HRFWP2SXet6Eu3UlVsEJZF11IAlZDUwZ3dX2b6J2b0vZVMPx+PDJAnPLJIA
 eBLyzMtGcJldXJ+owIecqswhU/OwX1YWDzt5pzHuQpQuE9YGsUBNz/przts7amNo4OMM
 HSCDtYZ+no+4yHEsL9u1vkIJiSXzBYAeA3SK68vS3IgMXepsM+O4GmGoUeEr3K7CS+Ht
 x1uA==
X-Forwarded-Encrypted: i=1;
 AJvYcCV3rM8xTWcLLiNqaOHqTXy4zY5hRNOX0rQdyxeYG28Dc+KUTGvuqWBQxXJbmwCi+Ysf0ygLd69+pNzIz9ftmA==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YywDC0x4vIa4S6aV59VRmQJHqMH+kRVjSFdzlKK6Rm1QQOeT6v9
 HkbykM+VBrwavQqsK0rUd1P20DAXfXhmRzXDGPlZGY7o6bO1E7NiWYzt+9QSrFr0Uuz4CEc49qj
 mToUxVqrxCrld5XAbDz7vGqn3FmpOJp7a2OwR8Sha8QvpfriNCUQs1wkwTWcaGk+C9RyO3hxZ
X-Received: by 2002:a17:907:9727:b0:a9a:230b:ff2c with SMTP id
 a640c23a62f3a-a9de5f2226dmr168739066b.30.1729937256127; 
 Sat, 26 Oct 2024 03:07:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGugRUzTiO3bQ3RT5C4neQOCWw/sRdC3diGmPwKsQoYtVGLDDEjNj2gnVCayaCXt7maanra6g==
X-Received: by 2002:a17:907:9727:b0:a9a:230b:ff2c with SMTP id
 a640c23a62f3a-a9de5f2226dmr168735166b.30.1729937255762; 
 Sat, 26 Oct 2024 03:07:35 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a9b1f0298cfsm159302066b.74.2024.10.26.03.07.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 26 Oct 2024 03:07:35 -0700 (PDT)
Message-ID: <e302a05d-cea1-4004-8727-8beee52dc112@redhat.com>
Date: Sat, 26 Oct 2024 12:07:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Mario Limonciello <mario.limonciello@amd.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
References: <20241025193055.2235-1-mario.limonciello@amd.com>
 <20241025193055.2235-6-mario.limonciello@amd.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20241025193055.2235-6-mario.limonciello@amd.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -2.4 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 25-Oct-24 9:30 PM,
 Mario Limonciello wrote: > guard(mutex)
 can be used to automatically release mutexes when going > out of scope. >
 > Tested-by: Matthew Schwartz <matthew.schwartz@linux.dev> > Sig [...] 
 Content analysis details:   (-2.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.7 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1t4dhy-0001B2-Dh
Subject: Re: [ibm-acpi-devel] [PATCH 5/8] ACPI: platform_profile: Use
 guard(mutex) for register/unregister
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
Cc: Alexis Belmonte <alexbelm48@gmail.com>,
 Shyam Sundar S K <Shyam-sundar.S-k@amd.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 "Rafael J . Wysocki" <rafael@kernel.org>, Gergo Koteles <soyer@irl.hu>,
 "Luke D . Jones" <luke@ljones.dev>, Ai Chao <aichao@kylinos.cn>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:MICROSOFT SURFACE PLATFORM PROFILE DRIVER"
 <platform-driver-x86@vger.kernel.org>, Lee Chun-Yi <jlee@suse.com>,
 "open list:ACPI" <linux-acpi@vger.kernel.org>,
 Corentin Chary <corentin.chary@gmail.com>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Mark Pearson <mpearson-lenovo@squebb.ca>, Ike Panhc <ike.pan@canonical.com>,
 Matthew Schwartz <matthew.schwartz@linux.dev>,
 Maximilian Luz <luzmaximilian@gmail.com>,
 "open list:THINKPAD ACPI EXTRAS DRIVER" <ibm-acpi-devel@lists.sourceforge.net>,
 Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 25-Oct-24 9:30 PM, Mario Limonciello wrote:
> guard(mutex) can be used to automatically release mutexes when going
> out of scope.
> 
> Tested-by: Matthew Schwartz <matthew.schwartz@linux.dev>
> Signed-off-by: Mario Limonciello <mario.limonciello@amd.com>

Thanks, patch looks good to me:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans



> ---
>  drivers/acpi/platform_profile.c | 19 ++++++-------------
>  1 file changed, 6 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/acpi/platform_profile.c b/drivers/acpi/platform_profile.c
> index 0c60fc970b6e8..81928adccfade 100644
> --- a/drivers/acpi/platform_profile.c
> +++ b/drivers/acpi/platform_profile.c
> @@ -180,41 +180,34 @@ int platform_profile_register(struct platform_profile_handler *pprof)
>  {
>  	int err;
>  
> -	mutex_lock(&profile_lock);
> +	guard(mutex)(&profile_lock);
>  	/* We can only have one active profile */
> -	if (cur_profile) {
> -		mutex_unlock(&profile_lock);
> +	if (cur_profile)
>  		return -EEXIST;
> -	}
>  
>  	/* Sanity check the profile handler field are set */
>  	if (!pprof || bitmap_empty(pprof->choices, PLATFORM_PROFILE_LAST) ||
> -		!pprof->profile_set || !pprof->profile_get) {
> -		mutex_unlock(&profile_lock);
> +		!pprof->profile_set || !pprof->profile_get)
>  		return -EINVAL;
> -	}
>  
>  	err = sysfs_create_group(acpi_kobj, &platform_profile_group);
> -	if (err) {
> -		mutex_unlock(&profile_lock);
> +	if (err)
>  		return err;
> -	}
>  	list_add_tail(&pprof->list, &platform_profile_handler_list);
>  
>  	cur_profile = pprof;
> -	mutex_unlock(&profile_lock);
>  	return 0;
>  }
>  EXPORT_SYMBOL_GPL(platform_profile_register);
>  
>  int platform_profile_remove(struct platform_profile_handler *pprof)
>  {
> +	guard(mutex)(&profile_lock);
> +
>  	list_del(&pprof->list);
>  
>  	sysfs_remove_group(acpi_kobj, &platform_profile_group);
> -	mutex_lock(&profile_lock);
>  	cur_profile = NULL;
> -	mutex_unlock(&profile_lock);
>  	return 0;
>  }
>  EXPORT_SYMBOL_GPL(platform_profile_remove);



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
