Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF4A8A98A3
	for <lists+ibm-acpi-devel@lfdr.de>; Thu, 18 Apr 2024 13:35:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rxQ2c-0006UJ-Dr;
	Thu, 18 Apr 2024 11:34:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1rxQ2b-0006UD-3s
 for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 18 Apr 2024 11:34:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sxee1bwLiGmeojh/o1lDYTW0rtf42vjkZkESyKbCvc4=; b=M5i1wauTRDxB8WeQ4r4ETGX3y9
 BsWTDAhaqzUtadGElSRJBwmUfKTEMyzHpDmv0hmaENXW0R+jBdWQ2sGSkENcl9sFUIJR2JaiIvIgj
 IdC+wGzqyD5+6xpAn5Adpxg6XBya900A6wkrVdL863u+fzhE34RUvI15pGLO0AkkCxL4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sxee1bwLiGmeojh/o1lDYTW0rtf42vjkZkESyKbCvc4=; b=TzecAdfo1vdHzcKexHUcmgtduk
 /+TxA0bCpreFH0CpVBftNtk2FObBqXiM+4DJc3phYkWIsMMogSju23Ra41bC+vyIeC6tTSSR5Zwfk
 ffjW4m2EFJ7C3B4J5mqlZRsnXEEG+skrummuJAt+ij9r6gVBl1h0iRSBIagkzIyrraq4=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rxQ2a-00014L-9s for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 18 Apr 2024 11:34:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1713440085;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=sxee1bwLiGmeojh/o1lDYTW0rtf42vjkZkESyKbCvc4=;
 b=cGRHoOyslFngPu5GWbIt5HZPxU1ymZKv694K+Y7rtopKUnRlkH/OywDtqAX1Pclx8+Q+63
 bbaMT9Rggj9I5OmQmcY+F6GEG7/lD/MjPvw3+42p5OFutPCkerPLfzQeEmKJimBjmxUhBZ
 Zheb+KE4MI38UgRPwgEXtS7hQcAhAJI=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-299-bOrEioLhNF-UpgjtYD1OYw-1; Thu, 18 Apr 2024 07:34:43 -0400
X-MC-Unique: bOrEioLhNF-UpgjtYD1OYw-1
Received: by mail-ej1-f72.google.com with SMTP id
 a640c23a62f3a-a5190b1453fso49558366b.2
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Thu, 18 Apr 2024 04:34:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713440082; x=1714044882;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=sxee1bwLiGmeojh/o1lDYTW0rtf42vjkZkESyKbCvc4=;
 b=ga3tIs/ZlAatbuper/UmupWEpWwSZdobtPM0lJZqz6EX1bY/zKAIzvlb8guOJn1cTU
 YxUMbTi48gQabGlILcAlvw7OFue6ctg3Oxo9fWt0aNfunnc7tcmKkNFed2MPkCY8IKVr
 FzV20cEpV0+7x5C8eF5tf7NHGQSJHPGk6EnyUnZ06GpvmEU44HGCmWLdeVOw4fgzrJIq
 yN8SOCybccm7AAnXZTIbC6oMOrMIGxByQ4x++9Yh0bdWf5dxSNpiqotSrxEExTH+1v7n
 XWO1s42ger9dyrnohCm8OCpOjKek3vhBVJeuJoRv3TTrOyFrAjsngTBg7hMWYsTCNiDh
 2S9A==
X-Forwarded-Encrypted: i=1;
 AJvYcCWFM1EGCRBfnT4fW9wfvTOgE51xqLmy3LViwspvolwNaHiR7nd9zRL8iRVZwKtPXHVdR3jIiAevtlm8xkoe5KuSBvZKQQ2s445qRbsQN2sNxB/niLo=
X-Gm-Message-State: AOJu0Yx+JwgJlwIWtv8+AkYdy9uylGlcVGOlwci7nvPEaJFIHp33Vu1T
 pU/VnGZKXYusv+DYyyyK1VpIFelHOJvDxb2PCpg6onrj7smdxLp5BptAkY/iCg87GjkOyk1NUVr
 Q2s+EhQuDAubHvUDKwX3/ZJx+x3zl0AX3L+Lqj137IxclrDRWll93fHIt3skqQIZIhi76CO/j
X-Received: by 2002:a17:906:1e07:b0:a55:67b9:dadc with SMTP id
 g7-20020a1709061e0700b00a5567b9dadcmr1474931ejj.73.1713440082443; 
 Thu, 18 Apr 2024 04:34:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG7rx4TILRxr4Gn9I0O7SjoE9LCwDvo3Xt0PfzcannkK2g3ls6y2EAszGA/8YJzhO3HTPqwZA==
X-Received: by 2002:a17:906:1e07:b0:a55:67b9:dadc with SMTP id
 g7-20020a1709061e0700b00a5567b9dadcmr1474922ejj.73.1713440082069; 
 Thu, 18 Apr 2024 04:34:42 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 a24-20020a1709065f9800b00a526fcac8aesm763366eju.208.2024.04.18.04.34.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 18 Apr 2024 04:34:41 -0700 (PDT)
Message-ID: <76d92fdc-ad0a-40a2-9e1b-d550f8e07267@redhat.com>
Date: Thu, 18 Apr 2024 13:34:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Mark Pearson <mpearson-lenovo@squebb.ca>
References: <mpearson-lenovo@squebb.ca>
 <20240417173124.9953-1-mpearson-lenovo@squebb.ca>
 <20240417173124.9953-2-mpearson-lenovo@squebb.ca>
 <98082080-0fcf-470f-afa5-76ec2bbffee7@redhat.com>
 <55ded7c3-fbc5-4fa5-8b63-da4d7aa4966c@redhat.com>
 <a7f7d94a-f1c8-4d6a-9c65-b5de59b9f7c0@app.fastmail.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <a7f7d94a-f1c8-4d6a-9c65-b5de59b9f7c0@app.fastmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Mark, On 4/18/24 1:57 AM, Mark Pearson wrote: > Hi Hans, 
 > > On Wed, Apr 17, 2024, at 4:06 PM, Hans de Goede wrote: >> Hi Mark, >>
 >> On 4/17/24 9:39 PM, Hans de Goede wrote: >>> Hi Mark, >>> >>> Thank you
 [...] Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [170.10.129.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -2.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rxQ2a-00014L-9s
Subject: Re: [ibm-acpi-devel] [PATCH v2 2/4] platform/x86: thinkpad_acpi:
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
Cc: linux-kernel@vger.kernel.org, "platform-driver-x86@vger.kernel.org"
 <platform-driver-x86@vger.kernel.org>, Vishnu Sankar <vsankar@lenovo.com>,
 ibm-acpi-devel@lists.sourceforge.net,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Vishnu Sankar <vishnuocv@gmail.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Peter Hutterer <peter.hutterer@redhat.com>, Nitin Joshi1 <njoshi1@lenovo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Mark,

On 4/18/24 1:57 AM, Mark Pearson wrote:
> Hi Hans,
> 
> On Wed, Apr 17, 2024, at 4:06 PM, Hans de Goede wrote:
>> Hi Mark,
>>
>> On 4/17/24 9:39 PM, Hans de Goede wrote:
>>> Hi Mark,
>>>
>>> Thank you for the new version of this series, overall this looks good,
>>> one small remark below.
>>>
>>> On 4/17/24 7:31 PM, Mark Pearson wrote:
>>>> Lenovo trackpoints are adding the ability to generate a doubletap event.
>>>> This handles the doubletap event and sends the KEY_PROG1 event to
>>>> userspace.
>>>>
>>>> Signed-off-by: Mark Pearson <mpearson-lenovo@squebb.ca>
>>>> Signed-off-by: Vishnu Sankar <vishnuocv@gmail.com>
>>>> ---
>>>> Changes in v2:
>>>>  - Use KEY_PROG1 instead of KEY_DOUBLETAP as input maintainer doesn't
>>>>    want new un-specific key codes added.
>>>>  - Add doubletap to hotkey scan code table and use existing hotkey
>>>>    functionality.
>>>>  - Tested using evtest, and then gnome settings to configure a custom shortcut
>>>>    to launch an application.
>>>>
>>>>  drivers/platform/x86/thinkpad_acpi.c | 18 ++++++++++++++++++
>>>>  1 file changed, 18 insertions(+)
>>>>
>>>> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
>>>> index 3b48d893280f..6d04d45e8d45 100644
>>>> --- a/drivers/platform/x86/thinkpad_acpi.c
>>>> +++ b/drivers/platform/x86/thinkpad_acpi.c
>>>> @@ -232,6 +232,9 @@ enum tpacpi_hkey_event_t {
>>>>  
>>>>  	/* Misc */
>>>>  	TP_HKEY_EV_RFKILL_CHANGED	= 0x7000, /* rfkill switch changed */
>>>> +
>>>> +	/* Misc2 */
>>>> +	TP_HKEY_EV_TRACK_DOUBLETAP      = 0x8036, /* trackpoint doubletap */
>>>>  };
>>>>  
>>>>  /****************************************************************************
>>>> @@ -1786,6 +1789,7 @@ enum {	/* hot key scan codes (derived from ACPI DSDT) */
>>>>  	TP_ACPI_HOTKEYSCAN_NOTIFICATION_CENTER,
>>>>  	TP_ACPI_HOTKEYSCAN_PICKUP_PHONE,
>>>>  	TP_ACPI_HOTKEYSCAN_HANGUP_PHONE,
>>>
>>> I understand why you've done this but I think this needs a comment,
>>> something like:
>>>
>>>         /*
>>>          * For TP_HKEY_EV_TRACK_DOUBLETAP, unlike the codes above which map to:
>>>          * (hkey_event - 0x1300) + TP_ACPI_HOTKEYSCAN_EXTENDED_START, this is
>>>          * hardcoded for TP_HKEY_EV_TRACK_DOUBLETAP handling. Therefor this must
>>>          * always be the last entry (after any 0x1300-0x13ff entries).
>>>          */
>>> +	TP_ACPI_HOTKEYSCAN_DOUBLETAP,
>>
>> Ugh, actually this will not work becuuse we want hotkeyscancodes to be stable
>> because these are userspace API since they can be remapped using hwdb so we
>> cannot have the hotkeyscancode changing when new 0x1300-0x13ff range entries
>> get added.
>>
>> So we need to either grow the table a lot and reserve a whole bunch of space
>> for future 0x13xx - 0x13ff codes or maybe something like this:
>>
>> diff --git a/drivers/platform/x86/thinkpad_acpi.c 
>> b/drivers/platform/x86/thinkpad_acpi.c
>> index 771aaa7ae4cf..af3279889ecc 100644
>> --- a/drivers/platform/x86/thinkpad_acpi.c
>> +++ b/drivers/platform/x86/thinkpad_acpi.c
>> @@ -1742,7 +1742,12 @@ enum {	/* hot key scan codes (derived from ACPI 
>> DSDT) */
>>  	TP_ACPI_HOTKEYSCAN_VOLUMEDOWN,
>>  	TP_ACPI_HOTKEYSCAN_MUTE,
>>  	TP_ACPI_HOTKEYSCAN_THINKPAD,
>> -	TP_ACPI_HOTKEYSCAN_UNK1,
>> +	/*
>> +	 * Note this gets send both on 0x1019 and on 
>> TP_HKEY_EV_TRACK_DOUBLETAP
>> +	 * hotkey-events. 0x1019 events have never been seen on any actual hw
>> +	 * and a scancode is needed for the special 0x8036 doubletap 
>> hotkey-event.
>> +	 */
>> +	TP_ACPI_HOTKEYSCAN_DOUBLETAP,
>>  	TP_ACPI_HOTKEYSCAN_UNK2,
>>  	TP_ACPI_HOTKEYSCAN_UNK3,
>>  	TP_ACPI_HOTKEYSCAN_UNK4,
>>
>> or just hardcode KEY_PROG1 like your previous patch does, but I'm not
>> a fan of that because of loosing hwdb remapping functionality for this
>> "key" then.
>>
>> Note I'm open to other suggestions.
>>
> Oh...I hadn't thought of that impact. That's not great :(
> 
> I have an idea, but want to prototype it to see if it works out or not. Will update once I've had a chance to play with it.

Thinking more about this I just realized that the input subsystem
already has a mechanism for dealing with scancode ranges with
(big) holes in them in the form of linux/input/sparse-keymap.h .

I think that what needs to be done is convert the existing code
to use sparse-keymap, keeping the mapping of the "MHKP"
returned hkey codes to internal TP_ACPI_HOTKEYSCAN_* values
for currently supported "MHKP" hkey codes for compatibility
and then for new codes just directly map them in the sparse map
aka the struct key_entry table. After converting the existing code
to use sparse-keymap, then for the new events we would simply add:


	{ KE_KEY, 0x131d, { KEY_VENDOR} }, /* Fn + N, system debug info */
	{ KE_KEY, 0x8036, { KEY_PROG1 } }, /* Trackpoint doubletap */

entries to the table without needing to define intermediate
TP_ACPI_HOTKEYSCAN_* values for these.

I already have somewhat of a design for this in my head and I really
believe this is the way forward as it uses existing kernel infra
and it will avoid hitting this problem again when some other new
"MHKP" hkey codes show up.

I plan to start working on implementing conversion of the existing
code to use sparse-keymap, which should result in a nice cleanup
after lunch and I hope to have something for you to test no later
then next Tuesday.

Regards,

Hans




_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
