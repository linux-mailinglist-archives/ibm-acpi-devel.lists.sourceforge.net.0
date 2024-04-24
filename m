Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CEC278B0D13
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 24 Apr 2024 16:48:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rzduQ-0006Kx-WD;
	Wed, 24 Apr 2024 14:47:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1rzduP-0006Ko-4r
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Apr 2024 14:47:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=W7cBnmFr5IS+PwCda9FEghAT/JWy8Ybw7oLyBIcNh6c=; b=mUJD2gcXOA7gOQiLxwfgVGlObP
 Fny5wON1ADL0ghtTBdLoeVi2rBbkoRD+Oft/oXQ3fK8GomEr23T9VxkpvaPLnQsfwg3Xb2DlK0Zs6
 yvQUC+Wzd0qlFxTz37Ck5CcCfRZIRRtxo/Wx1IeHXlPNozve3O4fGhiOaVFAOIbX5HiE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=W7cBnmFr5IS+PwCda9FEghAT/JWy8Ybw7oLyBIcNh6c=; b=hewqY/v6zL0efnZtIVj7mlhlO+
 DrKdKYji1FMxDnmmu4Bv7t6AJI599x2yVd1INObQCfEbTqd4/V8j/LWAu1EXZUW3s+pIARWWrcycj
 bTJgueADXshUN9FQ6fFjUMtaJilB71kTERa6Mwj3jPoA7bXFA+mVmW7ejZ9V0hnxvVZs=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rzduM-0005Ss-KV for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Apr 2024 14:47:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1713970048;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=W7cBnmFr5IS+PwCda9FEghAT/JWy8Ybw7oLyBIcNh6c=;
 b=MIEHRxmaJzLJ7kjn7kbMM1MBquxuf4US45L25SoIT/02az5Ve/x3V38Y7GAm4/WTok9JY3
 5GTyOvbr1CqsftLXNHL4FMkWONiEjiC+PVXDAM3grztPzmdw8LVUKdYyVBQdXRBwunUKSP
 vRDJhFHUlzI7EPsUlBlACkWmUYILuxY=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-663-eLOC0OZcOcKHjF5m38VmRA-1; Wed, 24 Apr 2024 10:47:27 -0400
X-MC-Unique: eLOC0OZcOcKHjF5m38VmRA-1
Received: by mail-ej1-f72.google.com with SMTP id
 a640c23a62f3a-a559bc02601so277331766b.0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Wed, 24 Apr 2024 07:47:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713970046; x=1714574846;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=W7cBnmFr5IS+PwCda9FEghAT/JWy8Ybw7oLyBIcNh6c=;
 b=a5d4AOIZUEMGAhjLDjxWElDi3HTaROB+39vcWsHfyKHQr0mrKPG2xTCCFzh8Z9EuqR
 bKkHb2xmP8bxeru4DcwVxjhz3L96EEK8lVzH8meapoeGPU775YKp3bGI+DKn8A4TDQkP
 vuQWZbQg8oJpBw+nOq0o05oXQZJcwpLhXHezIyTF6AE6ndwtYCu0WoNInmok13Ua/TJ6
 o3B/T1HR57VVVf/wNIOGQ9wVwlfgXTLUJC4yFL19S8IWfJsGncJ18BpgMPgyhzdfJOgv
 x3ZrvNiS1cTk/69fqW2mEfecM+HrBHvvQsmPhUqspnwQVaQMALR9NNjfFzLMhtI4nG3h
 ziiQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCX1bMRHWuT3OIEAKKpZRzbHLnGetCbgvDf79+pjV+GEh/DWqoXR7CwMcoap6ec6VDkEE9baXXQV8PknoL+gRnSbIE94o3bCx8TrwhQ43IyOkAG4JBQ=
X-Gm-Message-State: AOJu0Ywg7MVofE7WHLZju++8deQw/7VIDJWu962kBMJFIjJNUMh0Y8p8
 2kej1P5isyqGL9bPZ2tDHkxqcgjxPzMcfRvRChGqfw6CY8NhLlMUG1UZmzdwq0HDH3DRlOnES5w
 2MErXxRvKjZNxDxGtqDZSYHGpHig7X1V9ZplidN3Wge6KPawn8N6rsTP+qQeW/1a+VGF/Iu1E
X-Received: by 2002:a17:906:3c45:b0:a58:9fb5:8768 with SMTP id
 i5-20020a1709063c4500b00a589fb58768mr942965ejg.56.1713970045637; 
 Wed, 24 Apr 2024 07:47:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGoq70Zb4L5GIgQMvrCCqW0wDN1xXQmNpIZbqJeirLJXZxAX+n8XCS/6hrktarTI4iyelb9xg==
X-Received: by 2002:a17:906:3c45:b0:a58:9fb5:8768 with SMTP id
 i5-20020a1709063c4500b00a589fb58768mr942948ejg.56.1713970045273; 
 Wed, 24 Apr 2024 07:47:25 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 i8-20020a170906264800b00a52433f0907sm8416793ejc.37.2024.04.24.07.47.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 24 Apr 2024 07:47:24 -0700 (PDT)
Message-ID: <77524ca0-89bb-4223-bd42-532f34fdd055@redhat.com>
Date: Wed, 24 Apr 2024 16:47:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Mark Pearson <mpearson-lenovo@squebb.ca>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Andy Shevchenko <andy@kernel.org>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
References: <20240424122834.19801-1-hdegoede@redhat.com>
 <20240424122834.19801-17-hdegoede@redhat.com>
 <5e0e0317-9e27-4a6b-8b7a-3828f4e3f7fb@app.fastmail.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <5e0e0317-9e27-4a6b-8b7a-3828f4e3f7fb@app.fastmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Mark, On 4/24/24 4:17 PM, Mark Pearson wrote: > Hi Hans, 
 > > On Wed, Apr 24, 2024, at 8:28 AM, Hans de Goede wrote: >> Change the
 hotkey_reserved_mask initialization to hardcode the list >> of reserved keys
 [...] Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rzduM-0005Ss-KV
Subject: Re: [ibm-acpi-devel] [PATCH v2 16/24] platform/x86: thinkpad_acpi:
 Change hotkey_reserved_mask initialization
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
Cc: ibm-acpi-devel@lists.sourceforge.net, "platform-driver-x86@vger.kernel.org"
 <platform-driver-x86@vger.kernel.org>, Nitin Joshi1 <njoshi1@lenovo.com>,
 Vishnu Sankar <vishnuocv@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Mark,

On 4/24/24 4:17 PM, Mark Pearson wrote:
> Hi Hans,
> 
> On Wed, Apr 24, 2024, at 8:28 AM, Hans de Goede wrote:
>> Change the hotkey_reserved_mask initialization to hardcode the list
>> of reserved keys. There are only a few reserved keys and the code to
>> iterate over the keymap will be removed when moving to sparse-keymaps.
>>
>> Tested-by: Mark Pearson <mpearson-lenovo@squebb.ca>
>> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
>> ---
>>  drivers/platform/x86/thinkpad_acpi.c | 21 +++++++++++++++------
>>  1 file changed, 15 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/platform/x86/thinkpad_acpi.c 
>> b/drivers/platform/x86/thinkpad_acpi.c
>> index 952bac635a18..cf5c741d1343 100644
>> --- a/drivers/platform/x86/thinkpad_acpi.c
>> +++ b/drivers/platform/x86/thinkpad_acpi.c
>> @@ -3545,6 +3545,19 @@ static int __init hotkey_init(struct 
>> ibm_init_struct *iibm)
>>  	dbg_printk(TPACPI_DBG_INIT | TPACPI_DBG_HKEY,
>>  		   "using keymap number %lu\n", keymap_id);
>>
>> +	/* Keys which should be reserved on both IBM and Lenovo models */
>> +	hotkey_reserved_mask = TP_ACPI_HKEY_KBD_LIGHT_MASK |
>> +			       TP_ACPI_HKEY_VOLUP_MASK |
>> +			       TP_ACPI_HKEY_VOLDWN_MASK |
>> +			       TP_ACPI_HKEY_MUTE_MASK;
>> +	/*
>> +	 * Reserve brightness up/down unconditionally on IBM models, on Lenovo
>> +	 * models these are disabled based on acpi_video_get_backlight_type().
>> +	 */
>> +	if (keymap_id == TPACPI_KEYMAP_IBM_GENERIC)
>> +		hotkey_reserved_mask |= TP_ACPI_HKEY_BRGHTUP_MASK |
>> +					TP_ACPI_HKEY_BRGHTDWN_MASK;
>> +
>>  	hotkey_keycode_map = kmemdup(&tpacpi_keymaps[keymap_id],
>>  			TPACPI_HOTKEY_MAP_SIZE,	GFP_KERNEL);
>>  	if (!hotkey_keycode_map) {
>> @@ -3560,9 +3573,6 @@ static int __init hotkey_init(struct 
>> ibm_init_struct *iibm)
>>  		if (hotkey_keycode_map[i] != KEY_RESERVED) {
>>  			input_set_capability(tpacpi_inputdev, EV_KEY,
>>  						hotkey_keycode_map[i]);
>> -		} else {
>> -			if (i < sizeof(hotkey_reserved_mask)*8)
>> -				hotkey_reserved_mask |= 1 << i;
> 
> Just to check my understanding here - does this change mean that the keys marked as KEY_RESERVED in the lenovo map won't make it into the mask?
> 
> e.g the ones in this block:
>                 KEY_RESERVED,        /* Mute held, 0x103 */
>                 KEY_BRIGHTNESS_MIN,  /* Backlight off */
>                 KEY_RESERVED,        /* Clipping tool */
>                 KEY_RESERVED,        /* Cloud */
>                 KEY_RESERVED,
>                 KEY_VOICECOMMAND,    /* Voice */
>                 KEY_RESERVED,
>                 KEY_RESERVED,        /* Gestures */
>                 KEY_RESERVED,
>                 KEY_RESERVED,
>                 KEY_RESERVED,
>                 KEY_CONFIG,          /* Settings */
>                 KEY_RESERVED,        /* New tab */
>                 KEY_REFRESH,         /* Reload */
>                 KEY_BACK,            /* Back */
>                 KEY_RESERVED,        /* Microphone down */
>                 KEY_RESERVED,        /* Microphone up */
>                 KEY_RESERVED,        /* Microphone cancellation */
>                 KEY_RESERVED,        /* Camera mode */
>                 KEY_RESERVED,        /* Rotate display, 0x116 */
> 
> I'm not sure what the effect will be and I don't have the 2014 X1 Carbon (I assume it's the G1) available to test with unfortunately.

Only the 32 original hotkeys are affected by any of the hotkey_*_mask
values, note:

			if (i < sizeof(hotkey_reserved_mask)*8)
				hotkey_reserved_mask |= 1 << i;

The (i < sizeof(hotkey_reserved_mask)*8) condition translates to
(i < 32) so this code only ever set bits in hotkey_reserved_mask
for the 32 original hotkeys.

> Just wanted to be sure we weren't breaking something on older platforms.

That is appreciated. As I mentioned in the cover letter I have been
careful to try and not break older platforms, but double checking my
work is appreciated.

Regards,

Hans




> 
>>  		}
>>  	}
>>
>> @@ -3587,9 +3597,8 @@ static int __init hotkey_init(struct 
>> ibm_init_struct *iibm)
>>  		/* Disable brightness up/down on Lenovo thinkpads when
>>  		 * ACPI is handling them, otherwise it is plain impossible
>>  		 * for userspace to do something even remotely sane */
>> -		hotkey_reserved_mask |=
>> -			(1 << TP_ACPI_HOTKEYSCAN_FNHOME)
>> -			| (1 << TP_ACPI_HOTKEYSCAN_FNEND);
>> +		hotkey_reserved_mask |= TP_ACPI_HKEY_BRGHTUP_MASK |
>> +					TP_ACPI_HKEY_BRGHTDWN_MASK;
>>  		hotkey_unmap(TP_ACPI_HOTKEYSCAN_FNHOME);
>>  		hotkey_unmap(TP_ACPI_HOTKEYSCAN_FNEND);
>>  	}
>> -- 
>> 2.44.0
> 



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
