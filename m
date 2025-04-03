Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B5DEEA7A11C
	for <lists+ibm-acpi-devel@lfdr.de>; Thu,  3 Apr 2025 12:36:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1u0Hun-00061a-Ps;
	Thu, 03 Apr 2025 10:35:17 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1u0Hum-00061U-HN
 for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 03 Apr 2025 10:35:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jvjWEQ8sEQQuYaIo555XN8rmhMxRr1kV4nr4IOqNXrI=; b=bPmgXvK7EhbSP88H2Gt0DR8B1p
 X5nTu/dUH3LIJsBOfPJb3FogTHYoJvCuxs/I+imnxXDKUbmHc3HxLhMVsVgjwt67ovJl5CRk0ULeL
 0J5tCFRwyem6F0bh/GSBG+wejcVo+kU/yLPuDQguEMbLj/ja3FU+j8sau4FDfGObxVRU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jvjWEQ8sEQQuYaIo555XN8rmhMxRr1kV4nr4IOqNXrI=; b=cBPfl51aFFfvU4uyb2msAwC03W
 8BZXkNhjMalsFT/X2kPZ54gCbnReVNaS96OcXEaFg+xhyCz+bB4PCdy+aPNFXYlQXJIpAiBeP6/9S
 vB9uNBFqpnLDifk5wCn/+KIuBH4Gm66xkIzL8S0KOwMpUg+/dl5ZLaVJy7tIxJ7q7wWw=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1u0HuW-000089-5j for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 03 Apr 2025 10:35:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1743676493;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=jvjWEQ8sEQQuYaIo555XN8rmhMxRr1kV4nr4IOqNXrI=;
 b=VwwK/6X0AjdGrHdZnLCF3fshZRXcDh+xDHm2V882bWgUDAu/A0NIxbPyfMKhTi4n7VanOX
 QDvnWgSMpotE7xRVJLzpCxKJIy87T+GoNU/bTULzbnMxHLQjIYczJeF9LR7/+5JRIPrWts
 p9g6HVapcPTTJ3ko2ua3gfvWNJZHtoQ=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-670-yDW0FOJHMZC2tAsZucf97w-1; Thu, 03 Apr 2025 06:34:52 -0400
X-MC-Unique: yDW0FOJHMZC2tAsZucf97w-1
X-Mimecast-MFC-AGG-ID: yDW0FOJHMZC2tAsZucf97w_1743676492
Received: by mail-ej1-f71.google.com with SMTP id
 a640c23a62f3a-ac37ed2b99fso58477066b.3
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Thu, 03 Apr 2025 03:34:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1743676491; x=1744281291;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=jvjWEQ8sEQQuYaIo555XN8rmhMxRr1kV4nr4IOqNXrI=;
 b=NLYBTJe2UFaFp6peBb0XGGAnqLmAchJvFK7A+xMzuieTDX0HFiAIoPBSpZrRzi9K4a
 QudAtZB130H6Ljapl8bQrRGTSqabTuhxmp1lNj4vPDLgRmFDQN2UckKQ/7mD79gPE7mh
 5QSHUeszUckFvNBRXLknQ9cgTdSY1OMkFmqB/6jQaUTlY6i3sCJPu3mQwrvjCfp/AHRI
 m7LIjnl6BXNXOas4bj7aKzm5Z09VHl3iVE2gQAF+A2akpF4HmeQ0K8iWevQmhZ1WRdSI
 TyRaez655YadlfbPh0DpDgRx65BYLUZJWEbHPM5/qABLocE2OC8oJEMACK9DJbWeWZ/T
 /2Tw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUETCHB1CLKMQCBaE8+gai7bjDOBC/wceWE/2EQMNq+Q8PagzfqmcYTdqZ3p0oEi3KnvHKm6LtmBNhVvdt2LA==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxWbbrRNoCe7rFjOwfsEK/Zr9mNyu+FdT7A+M8+HozEnRUPGLRb
 rr9a69o0AnR8zw9cSdymLxIWrl9qFCPlIGcTc35cr9rHg/eRcn2tGRbO4DWZi6s2EpqrbUQIZlI
 Ed0qQTFT2mbAPV8nwijmtQTwPC+JGhe18DgqS4wy2/6AkUdcmy3GNC0qii5329xFEFYBaZrsF
X-Gm-Gg: ASbGncu4TbfNPEX32HvAIDTjHRQ8okH+e8D9VI/GnojNYLk9KZMLhTv90/BeQLOvHsG
 PYkVz78/OpVDRD07Oku7AnL8laWxy1Y5nRXqW5tOtxz0LKXAds0QkaNRhcd9QSUrmnaTQc71XRH
 nBqyD3e3Awtc+majs4vvIjotDyZBLm0jPIKswUNFDTYBTja7iqiZP52DqqbrlhKVeOdgU5be/2Y
 gg43zzgYLQPvG+qp6huEgaFpWHfZoeCjatJkd6rgnxmgKH/GI47dJ6KO/798073FHo1RJzeTWXO
 Eo5sL6L840Wug1roGIaSn4LvpEhO09/Hf+1Zy0S0P9LccpvTIacD/eXx6IlUAWuVp2fWIIuhnA4
 +TMYOGlImDvaLS5+TdwbCOIw6A1mJPj2KC7X1wzDzeY75cjKbEYWu8ajRo5qcSqChBA==
X-Received: by 2002:a17:907:2ce4:b0:ac1:db49:99a3 with SMTP id
 a640c23a62f3a-ac738bad2ddmr1776293766b.40.1743676491574; 
 Thu, 03 Apr 2025 03:34:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF9kqM2fvr3dgrzxDAcnZomUginkKGwga5ewxQTlULhVie4CjOX1vVbwHtHl//Gj5hWaxmNDA==
X-Received: by 2002:a17:907:2ce4:b0:ac1:db49:99a3 with SMTP id
 a640c23a62f3a-ac738bad2ddmr1776292366b.40.1743676491234; 
 Thu, 03 Apr 2025 03:34:51 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ac7c013dfd6sm72418266b.90.2025.04.03.03.34.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 03 Apr 2025 03:34:50 -0700 (PDT)
Message-ID: <dbb95bde-8163-4799-8414-c60ba1c69aa5@redhat.com>
Date: Thu, 3 Apr 2025 12:34:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Nitin Joshi <nitjoshi@gmail.com>, ilpo.jarvinen@linux.intel.com
References: <20250403053127.4777-1-nitjoshi@gmail.com>
In-Reply-To: <20250403053127.4777-1-nitjoshi@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 475b59iGJdqwzrv54Ni91bGqrIoVhEPNqSHuMzOpK7k_1743676492
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Nitin, On 3-Apr-25 7:31 AM,
 Nitin Joshi wrote: > New Lenovo
 Thinkpad models, e.g. the 'X9-14 Gen 1' and 'X9-15 Gen 1' > has new shortcut
 on F9 key i.e to switch camera shutter and it > send a new 0x131b hkey [...]
 Content analysis details:   (-0.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [170.10.133.124 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [170.10.133.124 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.6 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1u0HuW-000089-5j
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad-acpi: Add
 support for new hotkey for camera shutter switch
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
From: Hans de Goede via ibm-acpi-devel <ibm-acpi-devel@lists.sourceforge.net>
Reply-To: Hans de Goede <hdegoede@redhat.com>
Cc: mpearson-lenovo@squebb.ca, ibm-acpi-devel@lists.sourceforge.net,
 njoshi1@lenovo.com, platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Nitin,

On 3-Apr-25 7:31 AM, Nitin Joshi wrote:
> New Lenovo Thinkpad models, e.g. the 'X9-14 Gen 1' and 'X9-15 Gen 1'
> has new shortcut on F9 key i.e to switch camera shutter and it
> send a new 0x131b hkey event when F9 key is pressed.
> 
> This commit adds support for new hkey 0x131b.
> Signed-off-by: Nitin Joshi <nitjoshi@gmail.com>

Does the EC also actually enable/disable the camera in response to
this new hotkey, or is this purely a request to userspace / the OS
to enable/disable the camera?

And if this is purely a request is there some other thinkpad ACPI
calls we can make to actually disable the camera or should this
be fully handled in software in the OS / desktop-environment /
camera stack ?

Regards,

Hans



> ---
>  drivers/platform/x86/thinkpad_acpi.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index 0384cf311878..80f77f9c7a58 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -182,6 +182,7 @@ enum tpacpi_hkey_event_t {
>  						   * directly in the sparse-keymap.
>  						   */
>  	TP_HKEY_EV_AMT_TOGGLE		= 0x131a, /* Toggle AMT on/off */
> +	TP_HKEY_EV_CAMERASHUTTER_TOGGLE = 0x131b, /* Toggle Camera Shutter */
>  	TP_HKEY_EV_DOUBLETAP_TOGGLE	= 0x131c, /* Toggle trackpoint doubletap on/off */
>  	TP_HKEY_EV_PROFILE_TOGGLE	= 0x131f, /* Toggle platform profile in 2024 systems */
>  	TP_HKEY_EV_PROFILE_TOGGLE2	= 0x1401, /* Toggle platform profile in 2025 + systems */
> @@ -3271,6 +3272,7 @@ static const struct key_entry keymap_lenovo[] __initconst = {
>  	 * after switching to sparse keymap support. The mappings above use translated
>  	 * scancodes to preserve uAPI compatibility, see tpacpi_input_send_key().
>  	 */
> +	{ KE_KEY, TP_HKEY_EV_CAMERASHUTTER_TOGGLE, { KEY_CAMERA_ACCESS_TOGGLE } },
>  	{ KE_KEY, 0x131d, { KEY_VENDOR } }, /* System debug info, similar to old ThinkPad key */
>  	{ KE_KEY, 0x1320, { KEY_LINK_PHONE } },
>  	{ KE_KEY, TP_HKEY_EV_TRACK_DOUBLETAP /* 0x8036 */, { KEY_PROG4 } },



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
