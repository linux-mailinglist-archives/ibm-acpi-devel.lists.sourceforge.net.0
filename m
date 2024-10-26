Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D7749B16EC
	for <lists+ibm-acpi-devel@lfdr.de>; Sat, 26 Oct 2024 12:08:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1t4diS-0001uP-0B;
	Sat, 26 Oct 2024 10:08:16 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1t4diQ-0001u9-KH
 for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 26 Oct 2024 10:08:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=o8CuTmz6iHM4b1Xovver+IewcVa6XPw+HHrC5CvOxZ8=; b=IsD6c5i7V5iTXktefZcgkTfYT7
 ircIxIHysxmL4bSNs/9o/uksuPzfgebTChW3DQnxo4HMYBTmhOBzcF8r4TwJhVgIyKCbcAFaFslA2
 GfV2cu1eCzKN+mY/ZueKTKMKOrEhKhXVx/s4S6o9ppn0nd6/i3lM7+/hSQVh7hd54y+4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=o8CuTmz6iHM4b1Xovver+IewcVa6XPw+HHrC5CvOxZ8=; b=GyRxWBVYKzUonPh0oRguFt/anZ
 ky374+kRaG27QXhFcwxLbvgKAOPjeHWs2IJCzk/eJCNjrg/GLcjVseHPDDyAguT/8CU6oqGGMfXZA
 VNSGsQhakWO9Ak8ulIWqFwYFLNcbyCYYUbc7+d159SvCfBRR9/qeBqO1BV+UFw4Ec6pE=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t4diP-0001CY-HE for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 26 Oct 2024 10:08:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1729937282;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=o8CuTmz6iHM4b1Xovver+IewcVa6XPw+HHrC5CvOxZ8=;
 b=OsDH0LXBx4zVgZxJjpwfBfWLWNWkg61yNp6CLnxMvgzjHNV6XK832MUoic2VHnKBmB1B+6
 HiiWD+8M4yx3jeVonOVkMMw1NKHtELPt4y6lGZfBwp+SWTtgGjPfJLrLjROVuK9LWI9mRx
 7Gl8X/RuRd5hOA9uO1Hgi3VCWU+OUFo=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-453-eDUAZhQPPBebjUs8_JMEAQ-1; Sat, 26 Oct 2024 06:08:01 -0400
X-MC-Unique: eDUAZhQPPBebjUs8_JMEAQ-1
Received: by mail-ej1-f70.google.com with SMTP id
 a640c23a62f3a-a99cb787d2cso209825366b.2
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Sat, 26 Oct 2024 03:08:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729937280; x=1730542080;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=o8CuTmz6iHM4b1Xovver+IewcVa6XPw+HHrC5CvOxZ8=;
 b=gaTsDEvj9Ui2rQ3HCeKJ5luvBknVLbZSZp8vQTDzDYWdqiZrJZh/iSMUCx/FX9TN7T
 pQA5ejC+mU2rk4vF32u3X675EGwYrcBEjCM5hf5714ZAhigm3WLONrEJ0QQ+I+kuaLnK
 WeVwUofqgdhulgu5PoLNoFXyyMxauw+fFga1HkDlL6NBQVG+aQWZz8n2t+Q+huAaceYf
 dZ4iQwNW/RPLgm9IHTw40Mrkd/5uy+WAq2txv2xJrEuxNZKOPsLSjH3F5oIpvBsl1DvY
 UKikA5EPmEGSX5n24G7+TBm6S6hG/Lygo7iemABifDKL/D+tl1EkWoT/2j9d/hD/UTi0
 tKMw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUG6ilfn32Oj7U4b3H++cjXkpybwPIs8lt4XCqSk/M4NJSP00DCAMiRDNWSFHotBgOLu4MWUERQa8y18tYABA==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzYqdGfVZfGsej82oKDtQJ13f4/4GEyBJRkL+iu5ggcjPFfODy5
 ULU/WigkNbhNbACmJJ+xtDqDSan81iHvTMhrndGgNJydxICPdTUZzojMQDb4opkyxVyzDopRfTd
 qHgvAW+aEsMeh72PQbea4LV6Rd5A1NsrEKyU43A70o5BEXE6mrxPoiBWr0LG5h9FAM7U/oMKa
X-Received: by 2002:a17:907:3f99:b0:a9a:222f:45d1 with SMTP id
 a640c23a62f3a-a9de5ce1d86mr152760066b.20.1729937279782; 
 Sat, 26 Oct 2024 03:07:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFyVbPOLF9L610dafH2YTf7Fbi2HCJ+cVQCxg+j2BUi0oNI0UU57ulAhkGPndhJ495oTGCV7g==
X-Received: by 2002:a17:907:3f99:b0:a9a:222f:45d1 with SMTP id
 a640c23a62f3a-a9de5ce1d86mr152757366b.20.1729937279283; 
 Sat, 26 Oct 2024 03:07:59 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a9b3a08a70fsm158793966b.224.2024.10.26.03.07.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 26 Oct 2024 03:07:58 -0700 (PDT)
Message-ID: <157637ca-beaa-4b02-9938-d23b8af3c9d8@redhat.com>
Date: Sat, 26 Oct 2024 12:07:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Mario Limonciello <mario.limonciello@amd.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
References: <20241025193055.2235-1-mario.limonciello@amd.com>
 <20241025193055.2235-7-mario.limonciello@amd.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20241025193055.2235-7-mario.limonciello@amd.com>
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
 Mario Limonciello wrote: > As multiple
 handlers may register for ACPI platform profile handler, > only remove the
 sysfs group when the last one unregisters. > > Tested-by: Matthe [...] 
 Content analysis details:   (-2.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 -1.7 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.129.124 listed in wl.mailspike.net]
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
X-Headers-End: 1t4diP-0001CY-HE
Subject: Re: [ibm-acpi-devel] [PATCH 6/8] ACPI: platform_profile: Only
 remove group when no more handler registered
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
> As multiple handlers may register for ACPI platform profile handler,
> only remove the sysfs group when the last one unregisters.
> 
> Tested-by: Matthew Schwartz <matthew.schwartz@linux.dev>
> Signed-off-by: Mario Limonciello <mario.limonciello@amd.com>

Thanks, patch looks good to me:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans


> ---
>  drivers/acpi/platform_profile.c | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/acpi/platform_profile.c b/drivers/acpi/platform_profile.c
> index 81928adccfade..091ca6941a925 100644
> --- a/drivers/acpi/platform_profile.c
> +++ b/drivers/acpi/platform_profile.c
> @@ -23,6 +23,15 @@ static const char * const profile_names[] = {
>  };
>  static_assert(ARRAY_SIZE(profile_names) == PLATFORM_PROFILE_LAST);
>  
> +static bool platform_profile_is_registered(void)
> +{
> +	struct list_head *pos;
> +	int count = 0;
> +	list_for_each(pos, &platform_profile_handler_list)
> +		count++;
> +	return count > 0;
> +}
> +
>  static ssize_t platform_profile_choices_show(struct device *dev,
>  					struct device_attribute *attr,
>  					char *buf)
> @@ -206,8 +215,10 @@ int platform_profile_remove(struct platform_profile_handler *pprof)
>  
>  	list_del(&pprof->list);
>  
> -	sysfs_remove_group(acpi_kobj, &platform_profile_group);
>  	cur_profile = NULL;
> +	if (!platform_profile_is_registered())
> +		sysfs_remove_group(acpi_kobj, &platform_profile_group);
> +
>  	return 0;
>  }
>  EXPORT_SYMBOL_GPL(platform_profile_remove);



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
