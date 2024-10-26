Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5879B16E4
	for <lists+ibm-acpi-devel@lfdr.de>; Sat, 26 Oct 2024 12:07:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1t4dhl-00014O-5o;
	Sat, 26 Oct 2024 10:07:33 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1t4dhk-00014I-C1
 for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 26 Oct 2024 10:07:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hJlGYIZ2ZF/J/o37/9Owky4ZqndhKDqZ37hsXKaaOtI=; b=aqzstVPJiHKXgWIqt8/YRLzt7H
 amdgzz9+B2kfWMMJis2uiGdTNqZnHCWaK+droheeqtrdNmL0UR35steIBC3o0KxKT7Bewo3MlJ+pF
 D2SLclpOKH9zHvNlbZQN7TyAqSkt6y+KDUyf6MdHspoLTVP3SJGd0T2H8n4Kfabg7BDo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hJlGYIZ2ZF/J/o37/9Owky4ZqndhKDqZ37hsXKaaOtI=; b=QupHmYdMA6xYdR5/F/SZfh2Caf
 a/1873wtj90ozbnOSdtPVw6ncfHN4/s6VqRRWqZ53fKvP3Tixx+MzM4PWrsYzCi7rxuvBk+jtyBI8
 EQhSz8IoonYN5lUYguCKMgsJdlidJtkd9gtz/8DKsbovnjJIM4JK/Hj2sIInn2jpqgjc=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t4dhj-0001AI-M6 for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 26 Oct 2024 10:07:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1729937245;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hJlGYIZ2ZF/J/o37/9Owky4ZqndhKDqZ37hsXKaaOtI=;
 b=AqfRCOQ1OOdyl8L0iNNjh4hcGsPNbRaSX1u1AY4fTyirPHIhp2juf35MbZYWrjGirRprEm
 nuQZ7lFgmWF2OaxvssQ8QKsOTEqVRnW58Xa5CXwIHBpp+5buaL58G1R7vhbB6Uqei41JgC
 G5Ss4jbIEvdEa75nSaZlIt4+FuGp3Iw=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-495-jPKMBYC5MjWxCVBJuF6TBg-1; Sat, 26 Oct 2024 06:07:22 -0400
X-MC-Unique: jPKMBYC5MjWxCVBJuF6TBg-1
Received: by mail-wm1-f72.google.com with SMTP id
 5b1f17b1804b1-43159c07193so25567615e9.0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Sat, 26 Oct 2024 03:07:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729937241; x=1730542041;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=hJlGYIZ2ZF/J/o37/9Owky4ZqndhKDqZ37hsXKaaOtI=;
 b=vG9nmxMt4XQEqt6r6koFQzOl/65dAeFefeUM6vnjzZ2vsUM6dQTiLh4DUOOat4tV5K
 hxe/Ur8tW491nigUJCefbhQTOtc5K05kkY70+p4h0eMLxXFG5lJ/OD66ct+NalHNJ07u
 dxWePbwbCKqVGjXB/woNCLrVDNm4vGxAR8s6ZqwpYpd7Oh7o3fKoFAetYCrT50/eA2pP
 9VHvBGIuxP+pogudpMtskrEEQy5rhTzr0ATDbh8bmwUT2aZlLOqlEuo7HWk5b5KNQDrw
 kQFfLMVaNfyQVmmcHj/TJTf5D8n/r0IpXDZOH78Lvbi6tzWzAgGrJSExYaxkWbbaLaE/
 p9hw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUv7SZO4BItZHg2EAt8WwdGle2qlfHfTS+q1Rc17dC8F0iSojQqKTsyRHPPl3BXdwKIlmu6OxVh9TT2qmBbGQ==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyVCGwWKzcZA4MIoj447NeiiI5/j2GsoY9sm3dotPiiZ0Ta93+I
 8w9ehC4o0bfMG8p7HWuCKkQ2KUBCkX9KStmD4UQoOLl9D5MGg2uTuqjPLYqgwfwBQJgeoPTFEO+
 H3SiCs8GV4VNJ+1MNFeyUko2h4Qz4qfs54EK7FkI5hznFr1AxyAlJVQYA9O80h3WBT2jYK+oX
X-Received: by 2002:adf:ff86:0:b0:37c:d2e3:1298 with SMTP id
 ffacd0b85a97d-380612475d5mr2002233f8f.55.1729937241348; 
 Sat, 26 Oct 2024 03:07:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEWz8jQCbczQY1pIa/BTZuS+AN8DQuG9MqmGw6yTkV5fY3mqJbhjU3xrUt8/z0htouCksMjtQ==
X-Received: by 2002:adf:ff86:0:b0:37c:d2e3:1298 with SMTP id
 ffacd0b85a97d-380612475d5mr2002195f8f.55.1729937240932; 
 Sat, 26 Oct 2024 03:07:20 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a9b1f0277b7sm160237066b.50.2024.10.26.03.07.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 26 Oct 2024 03:07:19 -0700 (PDT)
Message-ID: <dc490fa5-c02b-46d9-a9ef-271181756407@redhat.com>
Date: Sat, 26 Oct 2024 12:07:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Mario Limonciello <mario.limonciello@amd.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
References: <20241025193055.2235-1-mario.limonciello@amd.com>
 <20241025193055.2235-5-mario.limonciello@amd.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20241025193055.2235-5-mario.limonciello@amd.com>
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
 Content preview:  Hi, On 25-Oct-24 9:30 PM, Mario Limonciello wrote: > In order
 to prepare for having support for multiple platform handlers > a list will
 be needed to iterate over them for various platform > profile handl [...]
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
X-Headers-End: 1t4dhj-0001AI-M6
Subject: Re: [ibm-acpi-devel] [PATCH 4/8] ACPI: platform_profile: Add a list
 to platform profile handler
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
> In order to prepare for having support for multiple platform handlers
> a list will be needed to iterate over them for various platform
> profile handler calls.
> 
> Tested-by: Matthew Schwartz <matthew.schwartz@linux.dev>
> Signed-off-by: Mario Limonciello <mario.limonciello@amd.com>

Thanks, patch looks good to me:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans



> ---
>  drivers/acpi/platform_profile.c  | 5 ++++-
>  include/linux/platform_profile.h | 1 +
>  2 files changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/acpi/platform_profile.c b/drivers/acpi/platform_profile.c
> index c24744da20916..0c60fc970b6e8 100644
> --- a/drivers/acpi/platform_profile.c
> +++ b/drivers/acpi/platform_profile.c
> @@ -10,6 +10,7 @@
>  #include <linux/sysfs.h>
>  
>  static struct platform_profile_handler *cur_profile;
> +static LIST_HEAD(platform_profile_handler_list);
>  static DEFINE_MUTEX(profile_lock);
>  
>  static const char * const profile_names[] = {
> @@ -198,6 +199,7 @@ int platform_profile_register(struct platform_profile_handler *pprof)
>  		mutex_unlock(&profile_lock);
>  		return err;
>  	}
> +	list_add_tail(&pprof->list, &platform_profile_handler_list);
>  
>  	cur_profile = pprof;
>  	mutex_unlock(&profile_lock);
> @@ -207,8 +209,9 @@ EXPORT_SYMBOL_GPL(platform_profile_register);
>  
>  int platform_profile_remove(struct platform_profile_handler *pprof)
>  {
> -	sysfs_remove_group(acpi_kobj, &platform_profile_group);
> +	list_del(&pprof->list);
>  
> +	sysfs_remove_group(acpi_kobj, &platform_profile_group);
>  	mutex_lock(&profile_lock);
>  	cur_profile = NULL;
>  	mutex_unlock(&profile_lock);
> diff --git a/include/linux/platform_profile.h b/include/linux/platform_profile.h
> index 58279b76d740e..9ded63a9ae6f1 100644
> --- a/include/linux/platform_profile.h
> +++ b/include/linux/platform_profile.h
> @@ -29,6 +29,7 @@ enum platform_profile_option {
>  struct platform_profile_handler {
>  	const char *name;
>  	unsigned long choices[BITS_TO_LONGS(PLATFORM_PROFILE_LAST)];
> +	struct list_head list;
>  	int (*profile_get)(struct platform_profile_handler *pprof,
>  				enum platform_profile_option *profile);
>  	int (*profile_set)(struct platform_profile_handler *pprof,



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
