Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 203CD8A99B6
	for <lists+ibm-acpi-devel@lfdr.de>; Thu, 18 Apr 2024 14:24:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rxQo1-0004xH-UB;
	Thu, 18 Apr 2024 12:23:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1rxQnz-0004x3-KP
 for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 18 Apr 2024 12:23:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ku9n4CtW+a96ju08gyViB+v8W7/g00oO3k3aplYVJ0E=; b=LI+PbtBX/kEllgg7VwcIsWwry1
 Wkf0wNmMVtM1VwzxQ5A3mCsf7a2yyCH33KV3zVzStg+iVFGSnDT/BuYd81eMTDua6q1rPnIb84oDb
 qfzwNJK1qlmk/f+mcwulTSP5RFR+8yFmzjzMka8MtZBGYbgixrBY6Q2gGBhdPWfViqEI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ku9n4CtW+a96ju08gyViB+v8W7/g00oO3k3aplYVJ0E=; b=et8tWriKJoIPnYYBjWgm4dIUow
 6BKBfPfDRqgWWS/KoZtkJpTI37x4rQfvN2xTfy7n7+MjzXBTAzyJFrKu9O/LCYQXAJuyyrhFm6zqT
 KKHbbpoEOUeQQC5/ySwbOuXW3O/2Y6UJBUpRtg18OAMCKhlUCsOs41uDCNC2Q6XvOq34=;
Received: from wfhigh1-smtp.messagingengine.com ([64.147.123.152])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rxQny-0003Tg-EU for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 18 Apr 2024 12:23:55 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailfhigh.west.internal (Postfix) with ESMTP id BB1E318001A3;
 Thu, 18 Apr 2024 08:23:47 -0400 (EDT)
Received: from imap52 ([10.202.2.102])
 by compute3.internal (MEProxy); Thu, 18 Apr 2024 08:23:48 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to; s=fm1; t=1713443027; x=1713529427; bh=Ku9n4CtW+a
 96ju08gyViB+v8W7/g00oO3k3aplYVJ0E=; b=ldN9XJZi8g5C7BvQTJ2ERKhwqt
 ZkZUAHQgaWyxHDMCfD20MYO7I3md2CZyEW4t4x0BkBiyvngHia5qKIMhbCzK2qql
 O1k5MjzaDJImQCITAtUGd534740UcPiI7jVN36X/irtGijjUlLaysTRJuPvTRCjc
 nHlf0hhQECIuLkNAfCpzUlTDbxS0MBeJSsQym6hEhopVNpn1WvEF0Xdu4VsnFX+k
 Vfmjwn0yJlUT0Vp1JKxrW+nzx2vQFZpa+6u6tJjkPsKRrjpwFkrT6axZOuIfV8F/
 MKRgkVkoXeUcR9obRQ1U1kPRoUcOuiRbCciIkcrHpF3lQEw/Px7rHPFjd6QQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1713443027; x=1713529427; bh=Ku9n4CtW+a96ju08gyViB+v8W7/g
 00oO3k3aplYVJ0E=; b=Vh4wuokyMg9jrF/4RxLHf/QfW94Pz10TAsrHwP6cnTBn
 wic9F2Mic+GtLTNkpXY34xQfKOev8x5HXjQcYKzdhj27urzqzemlR+CivQSIioDh
 1m9AbjcRfvdIkNi1E6s9Nmis+Hoth+a5IO0y8I68d+1iw042DysGCFVrUo9oeYjn
 6/LjIohpIEcq04YKrMkrza3Dwue8iF8nMtwgPELAbbJb3+/EE4qdMhyQXw6O2VGo
 ejlOtBSlrzW3jSh879pirw+ze3fPsjq+l6dsYo+TercxC6VLnLJsDV14/JkTu6NE
 LnSZ0JgDvL9MDdE4MIanLETZJW0PK6WEH2p/kO17xg==
X-ME-Sender: <xms:0hAhZr15_2WWwS4UaEjGdYycNHw4hyLevagG1RII9cBz0xTG7bm7JQ>
 <xme:0hAhZqG_WF1K63Sbk9dF9R5kaA30o84dWidAeIq5Erw_iaNXNVxG6eo6BZX_gUs6t
 AtvHl38VzLrqTzIyBI>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudektddghedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvfevufgtsehttdertderredtnecuhfhrohhmpedfofgr
 rhhkucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssg
 drtggrqeenucggtffrrghtthgvrhhnpeeiueefjeeiveetuddvkeetfeeltdevffevudeh
 ffefjedufedvieejgedugeekhfenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmh
 epmhgrihhlfhhrohhmpehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggr
X-ME-Proxy: <xmx:0hAhZr6VwLi-cJHYY508U-ABMdYz8x2XdotuhxjokEYbGp-9u2nzbA>
 <xmx:0hAhZg3ik8QeEoUAZHlwc0CYpahtJK6v9E9XHQiT43IjTj8nhUWZ4A>
 <xmx:0hAhZuGxTnY1Rw-NVP9SMMAULkxDlkN-Qf78vy1-001oxveALjTtZQ>
 <xmx:0hAhZh9_pK2fai9sW6wthgXItVxHRU45KyyLfE6CegQpQg1a2cyAFQ>
 <xmx:0xAhZhCgSXx1qVWsezvEvDn0hwp3sZmcyTwj0TAmAAv-_uRwXHl3DBOF>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 85BA8C60098; Thu, 18 Apr 2024 08:23:46 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.11.0-alpha0-379-gabd37849b7-fm-20240408.001-gabd37849
MIME-Version: 1.0
Message-Id: <0917e5bc-a198-4aa8-812e-31434408e78d@app.fastmail.com>
In-Reply-To: <76d92fdc-ad0a-40a2-9e1b-d550f8e07267@redhat.com>
References: <mpearson-lenovo@squebb.ca>
 <20240417173124.9953-1-mpearson-lenovo@squebb.ca>
 <20240417173124.9953-2-mpearson-lenovo@squebb.ca>
 <98082080-0fcf-470f-afa5-76ec2bbffee7@redhat.com>
 <55ded7c3-fbc5-4fa5-8b63-da4d7aa4966c@redhat.com>
 <a7f7d94a-f1c8-4d6a-9c65-b5de59b9f7c0@app.fastmail.com>
 <76d92fdc-ad0a-40a2-9e1b-d550f8e07267@redhat.com>
Date: Thu, 18 Apr 2024 08:24:40 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Hans de Goede" <hdegoede@redhat.com>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Hans, On Thu, Apr 18, 2024, at 7:34 AM,
 Hans de Goede wrote:
 > Hi Mark, > > On 4/18/24 1:57 AM, Mark Pearson wrote: >> Hi Hans, >> >>
 On Wed, Apr 17, 2024, at 4:06 PM, Hans de Goede wrote: >>> Hi Mark, >>> [...]
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [64.147.123.152 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1rxQny-0003Tg-EU
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

Hi Hans,

On Thu, Apr 18, 2024, at 7:34 AM, Hans de Goede wrote:
> Hi Mark,
>
> On 4/18/24 1:57 AM, Mark Pearson wrote:
>> Hi Hans,
>> 
>> On Wed, Apr 17, 2024, at 4:06 PM, Hans de Goede wrote:
>>> Hi Mark,
>>>
>>> On 4/17/24 9:39 PM, Hans de Goede wrote:
>>>> Hi Mark,
>>>>
>>>> Thank you for the new version of this series, overall this looks good,
>>>> one small remark below.
>>>>
>>>> On 4/17/24 7:31 PM, Mark Pearson wrote:
>>>>> Lenovo trackpoints are adding the ability to generate a doubletap event.
>>>>> This handles the doubletap event and sends the KEY_PROG1 event to
>>>>> userspace.
>>>>>
>>>>> Signed-off-by: Mark Pearson <mpearson-lenovo@squebb.ca>
>>>>> Signed-off-by: Vishnu Sankar <vishnuocv@gmail.com>
>>>>> ---
>>>>> Changes in v2:
>>>>>  - Use KEY_PROG1 instead of KEY_DOUBLETAP as input maintainer doesn't
>>>>>    want new un-specific key codes added.
>>>>>  - Add doubletap to hotkey scan code table and use existing hotkey
>>>>>    functionality.
>>>>>  - Tested using evtest, and then gnome settings to configure a custom shortcut
>>>>>    to launch an application.
>>>>>
>>>>>  drivers/platform/x86/thinkpad_acpi.c | 18 ++++++++++++++++++
>>>>>  1 file changed, 18 insertions(+)
>>>>>
>>>>> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
>>>>> index 3b48d893280f..6d04d45e8d45 100644
>>>>> --- a/drivers/platform/x86/thinkpad_acpi.c
>>>>> +++ b/drivers/platform/x86/thinkpad_acpi.c
>>>>> @@ -232,6 +232,9 @@ enum tpacpi_hkey_event_t {
>>>>>  
>>>>>  	/* Misc */
>>>>>  	TP_HKEY_EV_RFKILL_CHANGED	= 0x7000, /* rfkill switch changed */
>>>>> +
>>>>> +	/* Misc2 */
>>>>> +	TP_HKEY_EV_TRACK_DOUBLETAP      = 0x8036, /* trackpoint doubletap */
>>>>>  };
>>>>>  
>>>>>  /****************************************************************************
>>>>> @@ -1786,6 +1789,7 @@ enum {	/* hot key scan codes (derived from ACPI DSDT) */
>>>>>  	TP_ACPI_HOTKEYSCAN_NOTIFICATION_CENTER,
>>>>>  	TP_ACPI_HOTKEYSCAN_PICKUP_PHONE,
>>>>>  	TP_ACPI_HOTKEYSCAN_HANGUP_PHONE,
>>>>
>>>> I understand why you've done this but I think this needs a comment,
>>>> something like:
>>>>
>>>>         /*
>>>>          * For TP_HKEY_EV_TRACK_DOUBLETAP, unlike the codes above which map to:
>>>>          * (hkey_event - 0x1300) + TP_ACPI_HOTKEYSCAN_EXTENDED_START, this is
>>>>          * hardcoded for TP_HKEY_EV_TRACK_DOUBLETAP handling. Therefor this must
>>>>          * always be the last entry (after any 0x1300-0x13ff entries).
>>>>          */
>>>> +	TP_ACPI_HOTKEYSCAN_DOUBLETAP,
>>>
>>> Ugh, actually this will not work becuuse we want hotkeyscancodes to be stable
>>> because these are userspace API since they can be remapped using hwdb so we
>>> cannot have the hotkeyscancode changing when new 0x1300-0x13ff range entries
>>> get added.
>>>
>>> So we need to either grow the table a lot and reserve a whole bunch of space
>>> for future 0x13xx - 0x13ff codes or maybe something like this:
>>>
>>> diff --git a/drivers/platform/x86/thinkpad_acpi.c 
>>> b/drivers/platform/x86/thinkpad_acpi.c
>>> index 771aaa7ae4cf..af3279889ecc 100644
>>> --- a/drivers/platform/x86/thinkpad_acpi.c
>>> +++ b/drivers/platform/x86/thinkpad_acpi.c
>>> @@ -1742,7 +1742,12 @@ enum {	/* hot key scan codes (derived from ACPI 
>>> DSDT) */
>>>  	TP_ACPI_HOTKEYSCAN_VOLUMEDOWN,
>>>  	TP_ACPI_HOTKEYSCAN_MUTE,
>>>  	TP_ACPI_HOTKEYSCAN_THINKPAD,
>>> -	TP_ACPI_HOTKEYSCAN_UNK1,
>>> +	/*
>>> +	 * Note this gets send both on 0x1019 and on 
>>> TP_HKEY_EV_TRACK_DOUBLETAP
>>> +	 * hotkey-events. 0x1019 events have never been seen on any actual hw
>>> +	 * and a scancode is needed for the special 0x8036 doubletap 
>>> hotkey-event.
>>> +	 */
>>> +	TP_ACPI_HOTKEYSCAN_DOUBLETAP,
>>>  	TP_ACPI_HOTKEYSCAN_UNK2,
>>>  	TP_ACPI_HOTKEYSCAN_UNK3,
>>>  	TP_ACPI_HOTKEYSCAN_UNK4,
>>>
>>> or just hardcode KEY_PROG1 like your previous patch does, but I'm not
>>> a fan of that because of loosing hwdb remapping functionality for this
>>> "key" then.
>>>
>>> Note I'm open to other suggestions.
>>>
>> Oh...I hadn't thought of that impact. That's not great :(
>> 
>> I have an idea, but want to prototype it to see if it works out or not. Will update once I've had a chance to play with it.
>
> Thinking more about this I just realized that the input subsystem
> already has a mechanism for dealing with scancode ranges with
> (big) holes in them in the form of linux/input/sparse-keymap.h .
>
> I think that what needs to be done is convert the existing code
> to use sparse-keymap, keeping the mapping of the "MHKP"
> returned hkey codes to internal TP_ACPI_HOTKEYSCAN_* values
> for currently supported "MHKP" hkey codes for compatibility
> and then for new codes just directly map them in the sparse map
> aka the struct key_entry table. After converting the existing code
> to use sparse-keymap, then for the new events we would simply add:
>
>
> 	{ KE_KEY, 0x131d, { KEY_VENDOR} }, /* Fn + N, system debug info */
> 	{ KE_KEY, 0x8036, { KEY_PROG1 } }, /* Trackpoint doubletap */
>
> entries to the table without needing to define intermediate
> TP_ACPI_HOTKEYSCAN_* values for these.
>

Ah! I didn't know about sparse-keymap but it looks similar to what I was thinking and played with a bit last night. Agreed using existing infrastructure is better.

Only things I'd flag is that:
 - It did look like it would be useful to identify keys that the driver handles (there aren't many but a few). Maybe one of the other key types can help handle that?
 - There are also some keys that use the tpacpi_input_send_key_masked that might need some special consideration.

> I already have somewhat of a design for this in my head and I really
> believe this is the way forward as it uses existing kernel infra
> and it will avoid hitting this problem again when some other new
> "MHKP" hkey codes show up.
>
> I plan to start working on implementing conversion of the existing
> code to use sparse-keymap, which should result in a nice cleanup
> after lunch and I hope to have something for you to test no later
> then next Tuesday.
>

That would be amazing - do let me know if there is anything I can help with. Agreed this will help clean up a bunch of the keycode handling :)

Mark



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
