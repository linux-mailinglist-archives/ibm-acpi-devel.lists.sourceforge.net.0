Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E86098A9D5B
	for <lists+ibm-acpi-devel@lfdr.de>; Thu, 18 Apr 2024 16:44:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rxSyh-0006ew-RW;
	Thu, 18 Apr 2024 14:43:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1rxSyf-0006ek-U7
 for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 18 Apr 2024 14:43:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DEulY1IMYG1CkL7+y8mcNYU6ll3ZaZWsDvpO/gddOTE=; b=T5dGfzPjTjDShahmTwaKczNTkM
 ecAoKFxWooZHWEhFF5REBG1O/VunwxmPWf4IeLb/2q3zPDCemORVSRCknHMM0aLMVyxiN2b5rlLmm
 U+Whu7vNJ+BEo8kNbxwSScwvD5ZZC7sPahURcgccDpl8YsZKQBqSBFC3S1OKarbeuxHo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DEulY1IMYG1CkL7+y8mcNYU6ll3ZaZWsDvpO/gddOTE=; b=JOekBN08Ujb9sbUhAHn1Vi5KQk
 McCHpnZ6eXRzJyocLVo0GJKvk7/AeBnwkHjyyejU3ctWrpiHRmDb8tZ/5z/Nwk+Zd26c7+jy/f9WX
 eDNUFNmNZg+uZXtkClOKkuq5Xmr2vLSwvpwna0+ZjjH05cKOncqmoXuLNpv95sxKKsP4=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rxSyf-0002Vw-Ju for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 18 Apr 2024 14:43:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1713451379;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=DEulY1IMYG1CkL7+y8mcNYU6ll3ZaZWsDvpO/gddOTE=;
 b=f3+mCh8SW5XZJ4dTM5RuTdf0fXcJfBaKZw/NSOoQQEX3DM1S/NeU2ZQg3cy1JcO5pPvTg1
 k5F13Bw6VCkZ57eN9RE/OZMuPl3dnhuk5AeuK/erjfBhNH4BST4V1qqhjpnS9CM04QaqP4
 j1+GIEjdZhe2SzxunUIfZV6Dh7k6xRY=
Received: from mail-lf1-f70.google.com (mail-lf1-f70.google.com
 [209.85.167.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-686-Y6l-DBVUP7eFfkoz3R2Q6A-1; Thu, 18 Apr 2024 10:42:57 -0400
X-MC-Unique: Y6l-DBVUP7eFfkoz3R2Q6A-1
Received: by mail-lf1-f70.google.com with SMTP id
 2adb3069b0e04-516fe9d0c4dso674918e87.3
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Thu, 18 Apr 2024 07:42:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713451376; x=1714056176;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=DEulY1IMYG1CkL7+y8mcNYU6ll3ZaZWsDvpO/gddOTE=;
 b=vYOQhBcyXe3b9+1ybbEM103T/lBOONtmx9mcvYznCZKOycW+DUdeIo1MjymdUBSUXv
 XTVoLC478l/3+WPRRJK6ce+v+Y0xsqfRWIzAC5pIJb8YAHH0Ih3NS8pzdHJ6byOWDdRp
 vBWVnRuTw+F5tLPB3hvHGYdf47NuWeIhi62k5gIaMG2QNZ2539XQSZjFqc6BVelP6myJ
 tzihW0TdeapDCgvjP61yvaVmK4xipXQQZdZLTUdhbIuIrJHN19MwgI+jUc9rMXFiDo2m
 JOTyIeAnDBUwYX2IM8kDwSUv17K/ULkQicrs1dJ+wW4Cdcs4C4tL06XPhXffo0T+gI4/
 GJ2Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCX/lFP3I2ER3nUnINYjI28OJT05hdTA8giw3XtceqQuQvGYXU3FO0mgg3covgnSrS5oobOtZVNSeXYkZ7eb38G4T9zgzgeVPHold3s63Ap3GBldkao=
X-Gm-Message-State: AOJu0YwwinKt3x6kx6oWK4Dpez5ZONggEcTD6tRcd7MxUKkvyAUj8kYX
 89XlRq6UJZsg+fImjDNH4szgZ88H+gfIklF3oMTSMRmy6nYiRmD63tlOYeAwN7c4AuKG0Kvwwy/
 X7Oe5+nbyWRvLQoESKsTwJ9d2khGtIYv/oxMQ1Mqiv/4GfEnzTiKAsVpEF1NZgwcdv0q+ZpAx
X-Received: by 2002:a19:5e55:0:b0:519:5df9:d945 with SMTP id
 z21-20020a195e55000000b005195df9d945mr1745984lfi.4.1713451376352; 
 Thu, 18 Apr 2024 07:42:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IELpXwRPctoeGKFEBAu2CYwaNSavV4jtl33oD/gar4gd/CLiWonOSCOeeOnpK7gTrukHkmE5w==
X-Received: by 2002:a19:5e55:0:b0:519:5df9:d945 with SMTP id
 z21-20020a195e55000000b005195df9d945mr1745961lfi.4.1713451375758; 
 Thu, 18 Apr 2024 07:42:55 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 k13-20020a508acd000000b0056ff510c327sm985991edk.94.2024.04.18.07.42.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 18 Apr 2024 07:42:55 -0700 (PDT)
Message-ID: <472cf6b8-dbc2-4446-9c6e-aa3a257013c3@redhat.com>
Date: Thu, 18 Apr 2024 16:42:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Mark Pearson <mpearson-lenovo@squebb.ca>
References: <mpearson-lenovo@squebb.ca>
 <20240417173124.9953-1-mpearson-lenovo@squebb.ca>
 <20240417173124.9953-2-mpearson-lenovo@squebb.ca>
 <98082080-0fcf-470f-afa5-76ec2bbffee7@redhat.com>
 <55ded7c3-fbc5-4fa5-8b63-da4d7aa4966c@redhat.com>
 <a7f7d94a-f1c8-4d6a-9c65-b5de59b9f7c0@app.fastmail.com>
 <76d92fdc-ad0a-40a2-9e1b-d550f8e07267@redhat.com>
 <0917e5bc-a198-4aa8-812e-31434408e78d@app.fastmail.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <0917e5bc-a198-4aa8-812e-31434408e78d@app.fastmail.com>
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
 Content preview:  Hi, On 4/18/24 2:24 PM, Mark Pearson wrote: > Hi Hans, > >
 On Thu, Apr 18, 2024, at 7:34 AM, Hans de Goede wrote: >> Hi Mark, >> >>
 On 4/18/24 1:57 AM, Mark Pearson wrote: >>> Hi Hans, >>> >>> On Wed, Apr [...]
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: thinkwiki.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
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
X-Headers-End: 1rxSyf-0002Vw-Ju
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

Hi,

On 4/18/24 2:24 PM, Mark Pearson wrote:
> Hi Hans,
> 
> On Thu, Apr 18, 2024, at 7:34 AM, Hans de Goede wrote:
>> Hi Mark,
>>
>> On 4/18/24 1:57 AM, Mark Pearson wrote:
>>> Hi Hans,
>>>
>>> On Wed, Apr 17, 2024, at 4:06 PM, Hans de Goede wrote:
>>>> Hi Mark,
>>>>
>>>> On 4/17/24 9:39 PM, Hans de Goede wrote:
>>>>> Hi Mark,
>>>>>
>>>>> Thank you for the new version of this series, overall this looks good,
>>>>> one small remark below.
>>>>>
>>>>> On 4/17/24 7:31 PM, Mark Pearson wrote:
>>>>>> Lenovo trackpoints are adding the ability to generate a doubletap event.
>>>>>> This handles the doubletap event and sends the KEY_PROG1 event to
>>>>>> userspace.
>>>>>>
>>>>>> Signed-off-by: Mark Pearson <mpearson-lenovo@squebb.ca>
>>>>>> Signed-off-by: Vishnu Sankar <vishnuocv@gmail.com>
>>>>>> ---
>>>>>> Changes in v2:
>>>>>>  - Use KEY_PROG1 instead of KEY_DOUBLETAP as input maintainer doesn't
>>>>>>    want new un-specific key codes added.
>>>>>>  - Add doubletap to hotkey scan code table and use existing hotkey
>>>>>>    functionality.
>>>>>>  - Tested using evtest, and then gnome settings to configure a custom shortcut
>>>>>>    to launch an application.
>>>>>>
>>>>>>  drivers/platform/x86/thinkpad_acpi.c | 18 ++++++++++++++++++
>>>>>>  1 file changed, 18 insertions(+)
>>>>>>
>>>>>> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
>>>>>> index 3b48d893280f..6d04d45e8d45 100644
>>>>>> --- a/drivers/platform/x86/thinkpad_acpi.c
>>>>>> +++ b/drivers/platform/x86/thinkpad_acpi.c
>>>>>> @@ -232,6 +232,9 @@ enum tpacpi_hkey_event_t {
>>>>>>  
>>>>>>  	/* Misc */
>>>>>>  	TP_HKEY_EV_RFKILL_CHANGED	= 0x7000, /* rfkill switch changed */
>>>>>> +
>>>>>> +	/* Misc2 */
>>>>>> +	TP_HKEY_EV_TRACK_DOUBLETAP      = 0x8036, /* trackpoint doubletap */
>>>>>>  };
>>>>>>  
>>>>>>  /****************************************************************************
>>>>>> @@ -1786,6 +1789,7 @@ enum {	/* hot key scan codes (derived from ACPI DSDT) */
>>>>>>  	TP_ACPI_HOTKEYSCAN_NOTIFICATION_CENTER,
>>>>>>  	TP_ACPI_HOTKEYSCAN_PICKUP_PHONE,
>>>>>>  	TP_ACPI_HOTKEYSCAN_HANGUP_PHONE,
>>>>>
>>>>> I understand why you've done this but I think this needs a comment,
>>>>> something like:
>>>>>
>>>>>         /*
>>>>>          * For TP_HKEY_EV_TRACK_DOUBLETAP, unlike the codes above which map to:
>>>>>          * (hkey_event - 0x1300) + TP_ACPI_HOTKEYSCAN_EXTENDED_START, this is
>>>>>          * hardcoded for TP_HKEY_EV_TRACK_DOUBLETAP handling. Therefor this must
>>>>>          * always be the last entry (after any 0x1300-0x13ff entries).
>>>>>          */
>>>>> +	TP_ACPI_HOTKEYSCAN_DOUBLETAP,
>>>>
>>>> Ugh, actually this will not work becuuse we want hotkeyscancodes to be stable
>>>> because these are userspace API since they can be remapped using hwdb so we
>>>> cannot have the hotkeyscancode changing when new 0x1300-0x13ff range entries
>>>> get added.
>>>>
>>>> So we need to either grow the table a lot and reserve a whole bunch of space
>>>> for future 0x13xx - 0x13ff codes or maybe something like this:
>>>>
>>>> diff --git a/drivers/platform/x86/thinkpad_acpi.c 
>>>> b/drivers/platform/x86/thinkpad_acpi.c
>>>> index 771aaa7ae4cf..af3279889ecc 100644
>>>> --- a/drivers/platform/x86/thinkpad_acpi.c
>>>> +++ b/drivers/platform/x86/thinkpad_acpi.c
>>>> @@ -1742,7 +1742,12 @@ enum {	/* hot key scan codes (derived from ACPI 
>>>> DSDT) */
>>>>  	TP_ACPI_HOTKEYSCAN_VOLUMEDOWN,
>>>>  	TP_ACPI_HOTKEYSCAN_MUTE,
>>>>  	TP_ACPI_HOTKEYSCAN_THINKPAD,
>>>> -	TP_ACPI_HOTKEYSCAN_UNK1,
>>>> +	/*
>>>> +	 * Note this gets send both on 0x1019 and on 
>>>> TP_HKEY_EV_TRACK_DOUBLETAP
>>>> +	 * hotkey-events. 0x1019 events have never been seen on any actual hw
>>>> +	 * and a scancode is needed for the special 0x8036 doubletap 
>>>> hotkey-event.
>>>> +	 */
>>>> +	TP_ACPI_HOTKEYSCAN_DOUBLETAP,
>>>>  	TP_ACPI_HOTKEYSCAN_UNK2,
>>>>  	TP_ACPI_HOTKEYSCAN_UNK3,
>>>>  	TP_ACPI_HOTKEYSCAN_UNK4,
>>>>
>>>> or just hardcode KEY_PROG1 like your previous patch does, but I'm not
>>>> a fan of that because of loosing hwdb remapping functionality for this
>>>> "key" then.
>>>>
>>>> Note I'm open to other suggestions.
>>>>
>>> Oh...I hadn't thought of that impact. That's not great :(
>>>
>>> I have an idea, but want to prototype it to see if it works out or not. Will update once I've had a chance to play with it.
>>
>> Thinking more about this I just realized that the input subsystem
>> already has a mechanism for dealing with scancode ranges with
>> (big) holes in them in the form of linux/input/sparse-keymap.h .
>>
>> I think that what needs to be done is convert the existing code
>> to use sparse-keymap, keeping the mapping of the "MHKP"
>> returned hkey codes to internal TP_ACPI_HOTKEYSCAN_* values
>> for currently supported "MHKP" hkey codes for compatibility
>> and then for new codes just directly map them in the sparse map
>> aka the struct key_entry table. After converting the existing code
>> to use sparse-keymap, then for the new events we would simply add:
>>
>>
>> 	{ KE_KEY, 0x131d, { KEY_VENDOR} }, /* Fn + N, system debug info */
>> 	{ KE_KEY, 0x8036, { KEY_PROG1 } }, /* Trackpoint doubletap */
>>
>> entries to the table without needing to define intermediate
>> TP_ACPI_HOTKEYSCAN_* values for these.
>>
> 
> Ah! I didn't know about sparse-keymap but it looks similar to what I was thinking and played with a bit last night. Agreed using existing infrastructure is better.
> 
> Only things I'd flag is that:
>  - It did look like it would be useful to identify keys that the driver handles (there aren't many but a few). Maybe one of the other key types can help handle that?
>  - There are also some keys that use the tpacpi_input_send_key_masked that might need some special consideration.
> 
>> I already have somewhat of a design for this in my head and I really
>> believe this is the way forward as it uses existing kernel infra
>> and it will avoid hitting this problem again when some other new
>> "MHKP" hkey codes show up.
>>
>> I plan to start working on implementing conversion of the existing
>> code to use sparse-keymap, which should result in a nice cleanup
>> after lunch and I hope to have something for you to test no later
>> then next Tuesday.
>>
> 
> That would be amazing - do let me know if there is anything I can help with. Agreed this will help clean up a bunch of the keycode handling :)

I noticed a small problem while working on this. The hwdb shipped with
systemd has:

# thinkpad_acpi driver
evdev:name:ThinkPad Extra Buttons:dmi:bvn*:bvr*:bd*:svnIBM*:pn*:*
 KEYBOARD_KEY_01=battery                                # Fn+F2
 KEYBOARD_KEY_02=screenlock                             # Fn+F3
 KEYBOARD_KEY_03=sleep                                  # Fn+F4
 KEYBOARD_KEY_04=wlan                                   # Fn+F5
 KEYBOARD_KEY_06=switchvideomode                        # Fn+F7
 KEYBOARD_KEY_07=zoom                                   # Fn+F8 screen expand
 KEYBOARD_KEY_08=f24                                    # Fn+F9 undock
 KEYBOARD_KEY_0b=suspend                                # Fn+F12
 KEYBOARD_KEY_0f=brightnessup                           # Fn+Home
 KEYBOARD_KEY_10=brightnessdown                         # Fn+End
 KEYBOARD_KEY_11=kbdillumtoggle                         # Fn+PgUp - ThinkLight
 KEYBOARD_KEY_13=zoom                                   # Fn+Space
 KEYBOARD_KEY_14=volumeup
 KEYBOARD_KEY_15=volumedown
 KEYBOARD_KEY_16=mute
 KEYBOARD_KEY_17=prog1                                  # ThinkPad/ThinkVantage button (high k

Notice the last line, this last line maps the old thinkpad /
thinkvantage key: https://www.thinkwiki.org/wiki/ThinkPad_Button
which is define by the kernel as KEY_VENDOR to KEY_PROG1 to
use a keycode below 240 for X11 compatiblity which does not
handle higher keycodes.

This means that in practice at least on older models
KEY_PROG1 is already taken and the thinkpad / thinkvantage key
does the same (open lenovo help center / sysinfo) as
what the new Fn + N key combo does. So it does makes sense
to map Fn + N to KEY_VENDOR so those align but given the existing
remapping of the thinkpad / thinkvantage key to PROG1 I think
it would be better to not use PROG1 for the doubletap.

I guess we can just use PROG2 instead to avoid the overlap
with the remapped old ThinkPad / ThinkVantage buttons
(which are more like Fn + N then doubletap).

Regards,

Hans









_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
