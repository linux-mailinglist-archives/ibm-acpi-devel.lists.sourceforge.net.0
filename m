Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 102838B549E
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 29 Apr 2024 11:57:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1s1NlJ-0000yM-T3;
	Mon, 29 Apr 2024 09:57:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1s1NlI-0000yD-21
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 29 Apr 2024 09:57:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=U8tSfhPIULlB9WuUsfgoUdLsvBAqT4frWKzQa+PDeg4=; b=fg8FFVeP67pLZuqzeCcqXDQFCv
 E6FudHc0Pn0NG2RS0HIdOKMlUD5N011vhQTAFoiVtuftGR5WcZiPNKpX6ofY/+EAVfE1qlj4J4Z39
 zxNUIF6KsosjG38hJBf4OeH9a+8SQ0QngodukLD9QgXlVaCwMQeBmeIduPLc43ln3HE0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=U8tSfhPIULlB9WuUsfgoUdLsvBAqT4frWKzQa+PDeg4=; b=fHlT+LAv+r4eZBOgHL0+pCy68D
 RtMTptKBbQYIC5Nc9236ePn+0E0yve7ZMHwS/Dl2ayTzVu4o6a8WYRw+/jmc67yliUzfzVRCNaz4y
 WtNDETlckzHup4pINyqWyAEE3Y7H6Pg8D+bjKiQyI/yiaRV3bDKb4Y32//5tdBX39OTo=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s1NlH-0001GO-0W for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 29 Apr 2024 09:57:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1714384636;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=U8tSfhPIULlB9WuUsfgoUdLsvBAqT4frWKzQa+PDeg4=;
 b=WaCs9JuhGzvWP0wt5VhKemA/XVs4PYZ6mTaI0nu0F/kfE7y8VX3SCWQMCaLVWYQmWFJ1cD
 W+NkVMNtLEg0ZnXwvJ366J5OJZORyfxsR+W5zo4txrso3uOAKiUhILcNmMyj+4xBkMg3nW
 Jok2AY/NQrzU5qtD3cFHOkSZsq/BoN0=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-230-t5kzzB1pMCaPJWeEsGJdhw-1; Mon, 29 Apr 2024 05:57:14 -0400
X-MC-Unique: t5kzzB1pMCaPJWeEsGJdhw-1
Received: by mail-ej1-f71.google.com with SMTP id
 a640c23a62f3a-a51fdbd06c8so263780066b.3
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 29 Apr 2024 02:57:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1714384633; x=1714989433;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=U8tSfhPIULlB9WuUsfgoUdLsvBAqT4frWKzQa+PDeg4=;
 b=MD+VYLWBlpG+b7OmhdOUHI8Vj0A0Hlmy+XIKDQVcw7fWK/E0Tbprl261kWjEmIYn2g
 VLfjPXN55mmwgZoB/co3X85y2i4VWH5bItnZc3XdLNI3HGupbgZ352e2A1YCMqN+/r2S
 wbLJujLhN+iYl8srpyNZhmH7RHH3oiiU5Pa7ghF+4+bTgaob2X5InRhdDrdHHQlk0fNI
 ZV9EFPtZjDozAiOeaTBnAj3WUDW+8DWH/NUj3j5JSb42XKOm84lvJadgeon2Pwli8NDG
 qFuOpIymuiP7G5+5/lQmQ/7scqWyqA0GfiVsOfwjw7IvdLnJF57Rb4hFm2QhJl2dVCKP
 oaqw==
X-Forwarded-Encrypted: i=1;
 AJvYcCV4mG2Emdlr1kkClyfaz9xID5+yCB8H4HgPD1OgOZaMdJCUjtkTi2qErQj48zZd9kUyJMzuQDHgiULQZX2azo3mr0bFrurWBlCM+QXMwJQFAXf0xd0=
X-Gm-Message-State: AOJu0Yy5Qq1ve3TOEU2HbC6CddDUX1xLG8+d2jrRYYF2eV2fhf7MNBE9
 /y4k+W/HdfdYi805ENANaaZS8K5VgQxpLcWmCQ1TJ19P8IXb39cJqwgr1wbY8TLiFJgMBw0+5S/
 zFWbPjqpF2D2C1oH5VHFx1dUJcgCxTQfV147Xajw6EjJyeX8tqzifAGozcXzoi8tMulc4OfpL
X-Received: by 2002:a50:d7d5:0:b0:56f:ebcf:bd94 with SMTP id
 m21-20020a50d7d5000000b0056febcfbd94mr6167080edj.12.1714384633017; 
 Mon, 29 Apr 2024 02:57:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEbEPmGIHY5QDkhbLJptp6ibsxdN8/VzZvatEgJ32r2lnK7g7rMvKqK/d++rks8NdMDmGFFhA==
X-Received: by 2002:a50:d7d5:0:b0:56f:ebcf:bd94 with SMTP id
 m21-20020a50d7d5000000b0056febcfbd94mr6167062edj.12.1714384632502; 
 Mon, 29 Apr 2024 02:57:12 -0700 (PDT)
Received: from [10.40.98.157] ([78.108.130.194])
 by smtp.gmail.com with ESMTPSA id
 o12-20020aa7dd4c000000b005704419f56csm12899966edw.86.2024.04.29.02.57.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 29 Apr 2024 02:57:12 -0700 (PDT)
Message-ID: <5ea90914-16f7-4904-b7a6-e1997880e5f0@redhat.com>
Date: Mon, 29 Apr 2024 11:57:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Mark Pearson <mpearson-lenovo@squebb.ca>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Andy Shevchenko <andy@kernel.org>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
References: <20240424122834.19801-1-hdegoede@redhat.com>
 <20240424122834.19801-23-hdegoede@redhat.com>
 <8f150aef-0d56-4c5b-af17-9c66084a3ae7@app.fastmail.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <8f150aef-0d56-4c5b-af17-9c66084a3ae7@app.fastmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -1.2 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Mark, On 4/24/24 8:19 PM, Mark Pearson wrote: > Hi Hans, 
 > > On Wed, Apr 24, 2024, at 8:28 AM, Hans de Goede wrote: >> From: Mark
 Pearson <mpearson-lenovo@squebb.ca> >> >> Lenovo trackpoints are adding the
 [...] Content analysis details:   (-1.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -1.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1s1NlH-0001GO-0W
Subject: Re: [ibm-acpi-devel] [PATCH v2 22/24] platform/x86: thinkpad_acpi:
 Support for trackpoint doubletap
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

On 4/24/24 8:19 PM, Mark Pearson wrote:
> Hi Hans,
> 
> On Wed, Apr 24, 2024, at 8:28 AM, Hans de Goede wrote:
>> From: Mark Pearson <mpearson-lenovo@squebb.ca>
>>
>> Lenovo trackpoints are adding the ability to generate a doubletap event.
>> This handles the doubletap event and sends the KEY_PROG4 event to
>> userspace. Despite the driver itself not using KEY_PROG1 - KEY_PROG3 this
>> still uses KEY_PROG4 because of some keys being remapped to KEY_PROG1 -
>> KEY_PROG3 by default by the upstream udev hwdb containing:
>>
>> evdev:name:ThinkPad Extra Buttons:dmi:bvn*:bvr*:bd*:svnLENOVO*:pn*:*
>>  ...
>>  KEYBOARD_KEY_17=prog1
>>  KEYBOARD_KEY_1a=f20       # Microphone mute button
>>  KEYBOARD_KEY_45=bookmarks
>>  KEYBOARD_KEY_46=prog2     # Fn + PrtSc, on Windows: Snipping tool
>>  KEYBOARD_KEY_4a=prog3     # Fn + Right shift, on Windows: No idea
>>
>> Signed-off-by: Mark Pearson <mpearson-lenovo@squebb.ca>
>> Signed-off-by: Vishnu Sankar <vishnuocv@gmail.com>
>> Link: https://lore.kernel.org/r/20240417173124.9953-2-mpearson-lenovo@squebb.ca
>> [hdegoede@redhat.com: Adjust for switch to sparse-keymap keymaps]
>> Tested-by: Mark Pearson <mpearson-lenovo@squebb.ca>
>> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
>> ---
>>  drivers/platform/x86/thinkpad_acpi.c | 19 +++++++++++++++++++
>>  1 file changed, 19 insertions(+)
>>
>> diff --git a/drivers/platform/x86/thinkpad_acpi.c 
>> b/drivers/platform/x86/thinkpad_acpi.c
>> index a53b00fecf1a..b6d6466215e1 100644
>> --- a/drivers/platform/x86/thinkpad_acpi.c
>> +++ b/drivers/platform/x86/thinkpad_acpi.c
>> @@ -248,6 +248,9 @@ enum tpacpi_hkey_event_t {
>>
>>  	/* Misc */
>>  	TP_HKEY_EV_RFKILL_CHANGED	= 0x7000, /* rfkill switch changed */
>> +
>> +	/* Misc2 */
>> +	TP_HKEY_EV_TRACK_DOUBLETAP      = 0x8036, /* trackpoint doubletap */
>>  };
>>
>>  
>> /****************************************************************************
>> @@ -3268,6 +3271,7 @@ static const struct key_entry keymap_lenovo[] 
>> __initconst = {
>>  	 * after switching to sparse keymap support. The mappings above use 
>> translated
>>  	 * scancodes to preserve uAPI compatibility, see 
>> tpacpi_input_send_key().
>>  	 */
>> +	{ KE_KEY, TP_HKEY_EV_TRACK_DOUBLETAP /* 0x8036 */, { KEY_PROG4 } },
>>  	{ KE_END }
>>  };
>>
>> @@ -3817,6 +3821,17 @@ static bool hotkey_notify_6xxx(const u32 hkey, 
>> bool *send_acpi_ev)
>>  	return true;
>>  }
>>
>> +static bool hotkey_notify_8xxx(const u32 hkey, bool *send_acpi_ev)
>> +{
>> +	switch (hkey) {
>> +	case TP_HKEY_EV_TRACK_DOUBLETAP:
>> +		tpacpi_input_send_key(hkey, send_acpi_ev);
>> +		return true;
>> +	default:
>> +		return false;
>> +	}
>> +}
>> +
>>  static void hotkey_notify(struct ibm_struct *ibm, u32 event)
>>  {
>>  	u32 hkey;
>> @@ -3893,6 +3908,10 @@ static void hotkey_notify(struct ibm_struct 
>> *ibm, u32 event)
>>  				known_ev = true;
>>  			}
>>  			break;
>> +		case 8:
>> +			/* 0x8000-0x8FFF: misc2 */
>> +			known_ev = hotkey_notify_8xxx(hkey, &send_acpi_ev);
>> +			break;
>>  		}
>>  		if (!known_ev) {
>>  			pr_notice("unhandled HKEY event 0x%04x\n", hkey);
>> -- 
>> 2.44.0
> 
> Instead of needing hotkey_notify_8xxx, now we are using the sparse_keymap can we just use hotkey_notify_hotkey for case 8? No need to check what the hkey is either.

I prefer to keep things consistent and have each case #: path call a separate
helper for those #xxx codes.

ATM some of the simpler cases handle things directly, but as more handling for
different events get added that becomes a bit messy IMHO. I would actually
like to see those other cases converted to use a small helper function too
(with a switch-case in the helper for future proofing) to make things consistent.

Patches to do this small cleanup are welcome.

Regards,

Hans



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
