Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2EA488465
	for <lists+ibm-acpi-devel@lfdr.de>; Sat,  8 Jan 2022 17:11:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1n6EIZ-0000lm-Sg; Sat, 08 Jan 2022 16:10:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hdegoede@redhat.com>) id 1n6EIY-0000lc-GX
 for ibm-acpi-devel@lists.sourceforge.net; Sat, 08 Jan 2022 16:10:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZfgabDSS/gH6CDQ8l3rvCMIxMgihojIJUexXgrRTlE0=; b=flTORFZMbWqQze9HdaO7cDb3US
 zsq+G9EZ/5O9KKoYVn5Ncr6X81CCl1xUvrO1BA+1JeU9ixRSlKd6zBhVXFr/Aykmv9j/RHebvrVQW
 +Qi88hFgNHdnthgoEP44ZPDx6ULyrbgXrjwKgZ7YA4VpFjrXDnTjb0haqlrVJ3i0hnnU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZfgabDSS/gH6CDQ8l3rvCMIxMgihojIJUexXgrRTlE0=; b=M4lGH3iaJ8TdFRUZfh71KmhhMG
 BYLX64XTxz/stwFrdCtw0DPUzRshNzQx2FTWfzPP7Qsipot2XhYeNLBI8uj4edOAAFrTA7Zienl4N
 0NieW7BWftC5O5HI3gwg9leEiXLXNXzsECpx81FCvVnlmvsVDl1wlj8YUSvJs14v6lyw=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n6EIO-008VsO-94
 for ibm-acpi-devel@lists.sourceforge.net; Sat, 08 Jan 2022 16:10:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1641658212;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZfgabDSS/gH6CDQ8l3rvCMIxMgihojIJUexXgrRTlE0=;
 b=N/+AlIDzKro2i40JRlfz0Cso6lYzMF0CopSByJ0vChCtnJ65fRGh0EW+1reEeHfnGLrMWQ
 hSct3F7Jk/Rg3eqpoLLthkQsEr+m8U+9k76GXkk8wX7/JvMdEznj8PcAGAsndaoV6nzBfi
 frCLvl4uFpyTSTTYFPIfHHDouyp6HrI=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-19-0dTr-bY4OiWabIrUi2Lc5w-1; Sat, 08 Jan 2022 11:10:10 -0500
X-MC-Unique: 0dTr-bY4OiWabIrUi2Lc5w-1
Received: by mail-ed1-f72.google.com with SMTP id
 m8-20020a056402510800b003f9d22c4d48so6943156edd.21
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Sat, 08 Jan 2022 08:10:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=ZfgabDSS/gH6CDQ8l3rvCMIxMgihojIJUexXgrRTlE0=;
 b=6JQxrP1HdXVPsLS5T34r4+M4eeh0SZSJYREHpr+OUeiUlOw4OHxq1anNZrgUpVZcno
 IvCTUjq49zOpjdfO5gDtC1kH/pKR724CSDyQMIhou2Ovwu1ppkutINgqLmu2eN2ihLxU
 NPqMDZsJJKc3eqk0M4F6JxRK0eJpQFnJMe0yEAUQ8dUBvOOj3hyRYjlpWhES0r3U+HMg
 Obfcg5P6FpkDnSZBR3EcXYhKkmm6Kpudjb9yXQB+FxpgJda8hbfpy3FMs4kyzJEnBDgh
 PjPftBw4Ak177C1Xx77qK2P2+JcI5eh+yEjmY2xkT3RyWo2dTAqWshZ+Y0zvGKFnJ/dP
 zPGA==
X-Gm-Message-State: AOAM530Y/aV3G7x8Yy92K4Ll7Cb8ZYatbRLEQoWt4DD0T3D6Mx4VXFB6
 vnuyYQhRJ3I07PrWHzAbyNS2YA/LRpf9Y7nAZ223Z6qKCBkWldwRDxzB/MG2+7Q4lcADWSgAATZ
 DcejnRwkYtp2X62oayE7DGsaBSZe/tsDcu+c=
X-Received: by 2002:a17:906:86cb:: with SMTP id
 j11mr10313293ejy.40.1641658209791; 
 Sat, 08 Jan 2022 08:10:09 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzafHPA1hS1YxU4MAlmNDyZjL5mOgs//ZNBjd0fJXg2UApooAeaTTngtJ64hglQALtpKMzMrA==
X-Received: by 2002:a17:906:86cb:: with SMTP id
 j11mr10313276ejy.40.1641658209573; 
 Sat, 08 Jan 2022 08:10:09 -0800 (PST)
Received: from ?IPV6:2001:1c00:c1e:bf00:1db8:22d3:1bc9:8ca1?
 (2001-1c00-0c1e-bf00-1db8-22d3-1bc9-8ca1.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1db8:22d3:1bc9:8ca1])
 by smtp.gmail.com with ESMTPSA id r3sm619371ejr.79.2022.01.08.08.10.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 08 Jan 2022 08:10:09 -0800 (PST)
Message-ID: <d38ec2f9-a21f-d431-235a-9edb59fc40e9@redhat.com>
Date: Sat, 8 Jan 2022 17:10:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
To: Benson Leung <bleung@google.com>, Rajat Jain <rajatja@google.com>
References: <20220107190208.95479-1-rajatja@google.com>
 <20220107190208.95479-3-rajatja@google.com> <YdiPOoU1JrqR7N6S@google.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <YdiPOoU1JrqR7N6S@google.com>
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
 Content preview:  Hi All, On 1/7/22 20:06, Benson Leung wrote: > Hi Rajat, >
 > Thanks for your changes here. > > On Fri, Jan 07, 2022 at 11:02:08AM -0800, 
 Rajat Jain wrote: >> Add a static entry in the x86 table, to detect and [...]
 Content analysis details:   (-3.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
X-Headers-End: 1n6EIO-008VsO-94
Subject: Re: [ibm-acpi-devel] [PATCH v5 3/3] drm/privacy_screen_x86: Add
 entry for ChromeOS privacy-screen
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
 David Airlie <airlied@linux.ie>, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 platform-driver-x86@vger.kernel.org, Mark Gross <markgross@kernel.org>,
 ibm-acpi-devel@lists.sourceforge.net, dtor@google.com,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 Benson Leung <bleung@chromium.org>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>, rajatxjain@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi All,

On 1/7/22 20:06, Benson Leung wrote:
> Hi Rajat, 
> 
> Thanks for your changes here.
> 
> On Fri, Jan 07, 2022 at 11:02:08AM -0800, Rajat Jain wrote:
>> Add a static entry in the x86 table, to detect and wait for
>> privacy-screen on some ChromeOS platforms.
>>
>> Please note that this means that if CONFIG_CHROMEOS_PRIVACY_SCREEN is
>> enabled, and if "GOOG0010" device is found in ACPI, then the i915 probe
>> shall return EPROBE_DEFER until a platform driver actually registers the
>> privacy-screen: https://hansdegoede.livejournal.com/25948.html
>>
>> Signed-off-by: Rajat Jain <rajatja@google.com>
>> Reviewed-by: Hans de Goede <hdegoede@redhat.com>
> 
> Hi Hans,
> 
> Since this change depends on the privacy screen changes staged for v5.17,
> I'm OK as platform/chrome maintainer to have this go through the drm tree.
> 
> Acked-By: Benson Leung <bleung@chromium.org>

Ok, I will merge this into drm-misc-next coming Monday.

Note I'm afraid that it is too late for 5.17, the drm-misc maintainers
have already created the final drm-misc tag for the 5.17 pull-req.

Regards,

Hans


> 
> 
>> ---
>> v5: * Add Hans' "Reviewed by"
>> v4: * Simplify the detect_chromeos_privacy_screen() function
>>     * Don't change the existing print statement
>> v3: * Remove the pr_info() from detect_chromeos_privacy_screen(), instead
>>       enhance the one already present in drm_privacy_screen_lookup_init()
>> v2: * Use #if instead of #elif
>>     * Reorder the patches in the series.
>>     * Rebased on drm-tip
>>
>>  drivers/gpu/drm/drm_privacy_screen_x86.c | 17 +++++++++++++++++
>>  1 file changed, 17 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/drm_privacy_screen_x86.c b/drivers/gpu/drm/drm_privacy_screen_x86.c
>> index a2cafb294ca6..88802cd7a1ee 100644
>> --- a/drivers/gpu/drm/drm_privacy_screen_x86.c
>> +++ b/drivers/gpu/drm/drm_privacy_screen_x86.c
>> @@ -47,6 +47,13 @@ static bool __init detect_thinkpad_privacy_screen(void)
>>  }
>>  #endif
>>  
>> +#if IS_ENABLED(CONFIG_CHROMEOS_PRIVACY_SCREEN)
>> +static bool __init detect_chromeos_privacy_screen(void)
>> +{
>> +	return acpi_dev_present("GOOG0010", NULL, -1);
>> +}
>> +#endif
>> +
>>  static const struct arch_init_data arch_init_data[] __initconst = {
>>  #if IS_ENABLED(CONFIG_THINKPAD_ACPI)
>>  	{
>> @@ -58,6 +65,16 @@ static const struct arch_init_data arch_init_data[] __initconst = {
>>  		.detect = detect_thinkpad_privacy_screen,
>>  	},
>>  #endif
>> +#if IS_ENABLED(CONFIG_CHROMEOS_PRIVACY_SCREEN)
>> +	{
>> +		.lookup = {
>> +			.dev_id = NULL,
>> +			.con_id = NULL,
>> +			.provider = "privacy_screen-GOOG0010:00",
>> +		},
>> +		.detect = detect_chromeos_privacy_screen,
>> +	},
>> +#endif
>>  };
>>  
>>  void __init drm_privacy_screen_lookup_init(void)
>> -- 
>> 2.34.1.575.g55b058a8bb-goog
>>
> 



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
