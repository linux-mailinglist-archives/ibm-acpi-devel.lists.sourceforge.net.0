Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3358A9DEB
	for <lists+ibm-acpi-devel@lfdr.de>; Thu, 18 Apr 2024 17:04:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rxTHl-0000kN-8M;
	Thu, 18 Apr 2024 15:02:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1rxTHj-0000kE-K8
 for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 18 Apr 2024 15:02:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aQQoH7LflTciH7e0F4vI+WfwHuxvK3k1tVEGjHwcmHA=; b=QgmEj7tRdAYoO8RFVG9b/QlwvD
 nxJypnLbiuzT8+ujHKQiYsrxh1bsJ+rvQwftb9Zvwkq867BDdcD/eiAL4LjYmIIj6dzzAdc8zfqGL
 eTPQXW41CA2A0N8O1RTJYibgi+fW3nY3ojduV1GdfieUy1hM9E5Eckt2wr4quDDaGj7I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aQQoH7LflTciH7e0F4vI+WfwHuxvK3k1tVEGjHwcmHA=; b=e4TVwC/JI7ct5WGfqlmd154lQR
 8ImIiiUzAUWL9J7ZL2hfjtGsY6pwh4nDeZc8GNAp709q51MTWx8MJAVG3h+6ptEr6dEJxyXn9RGUK
 LVGh6NsUa07tqNyVOlSx8um/zWqOTFajoT2Falfi3bV0vu2fQWG7MhqOKupVIqlqcIOU=;
Received: from wfhigh3-smtp.messagingengine.com ([64.147.123.154])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rxTHf-0003Ys-Sg for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 18 Apr 2024 15:02:47 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailfhigh.west.internal (Postfix) with ESMTP id 2C5B71800131;
 Thu, 18 Apr 2024 11:02:31 -0400 (EDT)
Received: from imap52 ([10.202.2.102])
 by compute3.internal (MEProxy); Thu, 18 Apr 2024 11:02:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to; s=fm1; t=1713452550; x=1713538950; bh=aQQoH7LflT
 ciH7e0F4vI+WfwHuxvK3k1tVEGjHwcmHA=; b=ikX82FKUzj3yfYC5Mih8AcVMWF
 2Q+zJh+PrhjPoJQZLSk4Wl6g87u6Y5uTPVwfKeD935HCH1XZIk86gMsIPMolhg+R
 eaOnupPlOu93fGbuPftHe5WX8nXrBQRXlnEhkI7dcaOMyeSU3uyvJq0EkXRBFLSi
 i37hkr+HYSCPiZRytvfB8OEreWiKt5m5FnpIcVfrzpmQ2TjOo686Ga8xkyP6D+g9
 F762t8ImLbYriBmNdupRNW4zdort15fPC8J2yb/XV9WuS4d78yubKDNlOPaRy2dH
 UpK1EcxyZ9Lb7/Z/uYd5ZqBwMmwcucaz3MdKv3zW/S0/kQCFpi8EWwx4IXsA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1713452550; x=1713538950; bh=aQQoH7LflTciH7e0F4vI+WfwHuxv
 K3k1tVEGjHwcmHA=; b=Ho7fNReu8u8dlrYykQ40ToyURRxKOErMZp2l5zJ2J2OU
 V7SQFAn+G82dx4sBiWyzPRDO9pi+Dod5M4we80Li60z6dwOMKw3Iw2r+4+OmLCS/
 mcKVh83jOOgOZPZSaaFxhQvGlNojgmCrO+L3Y8m2azlhZ3R84K5MDdagEZoBNWSx
 kpXzImiVGCmsI1Hc4cKRdPVrI2jI0jBwgKTYcxAZf+sZSYEsINx5F0Hg7bG1sWf+
 2m4lZHt68LP9vtzpKQpk0lVeh3lE+7S4GOwVFzxmOklHuE5MSw3FTjsnGPcbaWRR
 pt31jJLa+m0ao4dQu2MNve/MBVdtr89KTpMLyNTqew==
X-ME-Sender: <xms:BTYhZvhuqOwua9qaF0_LteHmJKuNYVwgr-omf986Tn0MTrv1Lol1rg>
 <xme:BTYhZsArALzdPEXXNNKdrIjY8XNRszMCIAenl2wZDqw06wVAFK3IjMmL7UDoevGir
 9V6N7Po8SS-uSU9AYc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudektddgkeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvfevufgtsehttdertderredtnecuhfhrohhmpedfofgr
 rhhkucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssg
 drtggrqeenucggtffrrghtthgvrhhnpeffteeljeeugfekveffvddvuddvleehhfdtveff
 teefudejfeetveeukeektedtleenucffohhmrghinhepthhhihhnkhifihhkihdrohhrgh
 enucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmphgv
 rghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggr
X-ME-Proxy: <xmx:BTYhZvF4wf8kO_gvw8m8vDrCJ1bnWBgAc2O8RKubmuOKn22WB_R1bQ>
 <xmx:BTYhZsRwGHkf0JMjHbqC79x6HA7tw-3x9h_77uOVEII6rAL8N22l5Q>
 <xmx:BTYhZszfq62pgyK5AElIv7VjeVMKiAvfuWd1L8TaOBNii63vp5_k0w>
 <xmx:BTYhZi4uNhYVCz2toEhUSlaYD3FI9IbN0yxXsVuhYCm9rCO3PFiIUA>
 <xmx:BjYhZodK-6VVNI1vwvCzGdqOBy3xUW3R9yVC1n2r9MxB0lkjwQ148x2B>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 64C3EC60097; Thu, 18 Apr 2024 11:02:29 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.11.0-alpha0-379-gabd37849b7-fm-20240408.001-gabd37849
MIME-Version: 1.0
Message-Id: <3494e664-ecfe-4eab-ac7f-32dee4a01ecb@app.fastmail.com>
In-Reply-To: <472cf6b8-dbc2-4446-9c6e-aa3a257013c3@redhat.com>
References: <mpearson-lenovo@squebb.ca>
 <20240417173124.9953-1-mpearson-lenovo@squebb.ca>
 <20240417173124.9953-2-mpearson-lenovo@squebb.ca>
 <98082080-0fcf-470f-afa5-76ec2bbffee7@redhat.com>
 <55ded7c3-fbc5-4fa5-8b63-da4d7aa4966c@redhat.com>
 <a7f7d94a-f1c8-4d6a-9c65-b5de59b9f7c0@app.fastmail.com>
 <76d92fdc-ad0a-40a2-9e1b-d550f8e07267@redhat.com>
 <0917e5bc-a198-4aa8-812e-31434408e78d@app.fastmail.com>
 <472cf6b8-dbc2-4446-9c6e-aa3a257013c3@redhat.com>
Date: Thu, 18 Apr 2024 11:03:22 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Hans de Goede" <hdegoede@redhat.com>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Hans On Thu, Apr 18, 2024, at 10:42 AM,
 Hans de Goede wrote:
 > Hi, > > On 4/18/24 2:24 PM, Mark Pearson wrote: >> Hi Hans, >> >> On Thu,
 Apr 18, 2024, at 7:34 AM, Hans de Goede wrote: >>> Hi Mark, >>> >>> [...]
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [64.147.123.154 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1rxTHf-0003Ys-Sg
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

Hi Hans

On Thu, Apr 18, 2024, at 10:42 AM, Hans de Goede wrote:
> Hi,
>
> On 4/18/24 2:24 PM, Mark Pearson wrote:
>> Hi Hans,
>> 
>> On Thu, Apr 18, 2024, at 7:34 AM, Hans de Goede wrote:
>>> Hi Mark,
>>>
>>> On 4/18/24 1:57 AM, Mark Pearson wrote:
>>>> Hi Hans,
>>>>
>>>> On Wed, Apr 17, 2024, at 4:06 PM, Hans de Goede wrote:
>>>>> Hi Mark,
>>>>>
>>>>> On 4/17/24 9:39 PM, Hans de Goede wrote:
>>>>>> Hi Mark,
>>>>>>
>>>>>> Thank you for the new version of this series, overall this looks good,
>>>>>> one small remark below.
>>>>>>
>>>>>> On 4/17/24 7:31 PM, Mark Pearson wrote:
>>>>>>> Lenovo trackpoints are adding the ability to generate a doubletap event.
>>>>>>> This handles the doubletap event and sends the KEY_PROG1 event to
>>>>>>> userspace.
>>>>>>>
>>>>>>> Signed-off-by: Mark Pearson <mpearson-lenovo@squebb.ca>
>>>>>>> Signed-off-by: Vishnu Sankar <vishnuocv@gmail.com>
>>>>>>> ---
>>>>>>> Changes in v2:
>>>>>>>  - Use KEY_PROG1 instead of KEY_DOUBLETAP as input maintainer doesn't
>>>>>>>    want new un-specific key codes added.
>>>>>>>  - Add doubletap to hotkey scan code table and use existing hotkey
>>>>>>>    functionality.
>>>>>>>  - Tested using evtest, and then gnome settings to configure a custom shortcut
>>>>>>>    to launch an application.
>>>>>>>
>>>>>>>  drivers/platform/x86/thinkpad_acpi.c | 18 ++++++++++++++++++
>>>>>>>  1 file changed, 18 insertions(+)
>>>>>>>
>>>>>>> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
>>>>>>> index 3b48d893280f..6d04d45e8d45 100644
>>>>>>> --- a/drivers/platform/x86/thinkpad_acpi.c
>>>>>>> +++ b/drivers/platform/x86/thinkpad_acpi.c
>>>>>>> @@ -232,6 +232,9 @@ enum tpacpi_hkey_event_t {
>>>>>>>  
>>>>>>>  	/* Misc */
>>>>>>>  	TP_HKEY_EV_RFKILL_CHANGED	= 0x7000, /* rfkill switch changed */
>>>>>>> +
>>>>>>> +	/* Misc2 */
>>>>>>> +	TP_HKEY_EV_TRACK_DOUBLETAP      = 0x8036, /* trackpoint doubletap */
>>>>>>>  };
>>>>>>>  
>>>>>>>  /****************************************************************************
>>>>>>> @@ -1786,6 +1789,7 @@ enum {	/* hot key scan codes (derived from ACPI DSDT) */
>>>>>>>  	TP_ACPI_HOTKEYSCAN_NOTIFICATION_CENTER,
>>>>>>>  	TP_ACPI_HOTKEYSCAN_PICKUP_PHONE,
>>>>>>>  	TP_ACPI_HOTKEYSCAN_HANGUP_PHONE,
>>>>>>
>>>>>> I understand why you've done this but I think this needs a comment,
>>>>>> something like:
>>>>>>
>>>>>>         /*
>>>>>>          * For TP_HKEY_EV_TRACK_DOUBLETAP, unlike the codes above which map to:
>>>>>>          * (hkey_event - 0x1300) + TP_ACPI_HOTKEYSCAN_EXTENDED_START, this is
>>>>>>          * hardcoded for TP_HKEY_EV_TRACK_DOUBLETAP handling. Therefor this must
>>>>>>          * always be the last entry (after any 0x1300-0x13ff entries).
>>>>>>          */
>>>>>> +	TP_ACPI_HOTKEYSCAN_DOUBLETAP,
>>>>>
>>>>> Ugh, actually this will not work becuuse we want hotkeyscancodes to be stable
>>>>> because these are userspace API since they can be remapped using hwdb so we
>>>>> cannot have the hotkeyscancode changing when new 0x1300-0x13ff range entries
>>>>> get added.
>>>>>
>>>>> So we need to either grow the table a lot and reserve a whole bunch of space
>>>>> for future 0x13xx - 0x13ff codes or maybe something like this:
>>>>>
>>>>> diff --git a/drivers/platform/x86/thinkpad_acpi.c 
>>>>> b/drivers/platform/x86/thinkpad_acpi.c
>>>>> index 771aaa7ae4cf..af3279889ecc 100644
>>>>> --- a/drivers/platform/x86/thinkpad_acpi.c
>>>>> +++ b/drivers/platform/x86/thinkpad_acpi.c
>>>>> @@ -1742,7 +1742,12 @@ enum {	/* hot key scan codes (derived from ACPI 
>>>>> DSDT) */
>>>>>  	TP_ACPI_HOTKEYSCAN_VOLUMEDOWN,
>>>>>  	TP_ACPI_HOTKEYSCAN_MUTE,
>>>>>  	TP_ACPI_HOTKEYSCAN_THINKPAD,
>>>>> -	TP_ACPI_HOTKEYSCAN_UNK1,
>>>>> +	/*
>>>>> +	 * Note this gets send both on 0x1019 and on 
>>>>> TP_HKEY_EV_TRACK_DOUBLETAP
>>>>> +	 * hotkey-events. 0x1019 events have never been seen on any actual hw
>>>>> +	 * and a scancode is needed for the special 0x8036 doubletap 
>>>>> hotkey-event.
>>>>> +	 */
>>>>> +	TP_ACPI_HOTKEYSCAN_DOUBLETAP,
>>>>>  	TP_ACPI_HOTKEYSCAN_UNK2,
>>>>>  	TP_ACPI_HOTKEYSCAN_UNK3,
>>>>>  	TP_ACPI_HOTKEYSCAN_UNK4,
>>>>>
>>>>> or just hardcode KEY_PROG1 like your previous patch does, but I'm not
>>>>> a fan of that because of loosing hwdb remapping functionality for this
>>>>> "key" then.
>>>>>
>>>>> Note I'm open to other suggestions.
>>>>>
>>>> Oh...I hadn't thought of that impact. That's not great :(
>>>>
>>>> I have an idea, but want to prototype it to see if it works out or not. Will update once I've had a chance to play with it.
>>>
>>> Thinking more about this I just realized that the input subsystem
>>> already has a mechanism for dealing with scancode ranges with
>>> (big) holes in them in the form of linux/input/sparse-keymap.h .
>>>
>>> I think that what needs to be done is convert the existing code
>>> to use sparse-keymap, keeping the mapping of the "MHKP"
>>> returned hkey codes to internal TP_ACPI_HOTKEYSCAN_* values
>>> for currently supported "MHKP" hkey codes for compatibility
>>> and then for new codes just directly map them in the sparse map
>>> aka the struct key_entry table. After converting the existing code
>>> to use sparse-keymap, then for the new events we would simply add:
>>>
>>>
>>> 	{ KE_KEY, 0x131d, { KEY_VENDOR} }, /* Fn + N, system debug info */
>>> 	{ KE_KEY, 0x8036, { KEY_PROG1 } }, /* Trackpoint doubletap */
>>>
>>> entries to the table without needing to define intermediate
>>> TP_ACPI_HOTKEYSCAN_* values for these.
>>>
>> 
>> Ah! I didn't know about sparse-keymap but it looks similar to what I was thinking and played with a bit last night. Agreed using existing infrastructure is better.
>> 
>> Only things I'd flag is that:
>>  - It did look like it would be useful to identify keys that the driver handles (there aren't many but a few). Maybe one of the other key types can help handle that?
>>  - There are also some keys that use the tpacpi_input_send_key_masked that might need some special consideration.
>> 
>>> I already have somewhat of a design for this in my head and I really
>>> believe this is the way forward as it uses existing kernel infra
>>> and it will avoid hitting this problem again when some other new
>>> "MHKP" hkey codes show up.
>>>
>>> I plan to start working on implementing conversion of the existing
>>> code to use sparse-keymap, which should result in a nice cleanup
>>> after lunch and I hope to have something for you to test no later
>>> then next Tuesday.
>>>
>> 
>> That would be amazing - do let me know if there is anything I can help with. Agreed this will help clean up a bunch of the keycode handling :)
>
> I noticed a small problem while working on this. The hwdb shipped with
> systemd has:
>
> # thinkpad_acpi driver
> evdev:name:ThinkPad Extra Buttons:dmi:bvn*:bvr*:bd*:svnIBM*:pn*:*
>  KEYBOARD_KEY_01=battery                                # Fn+F2
>  KEYBOARD_KEY_02=screenlock                             # Fn+F3
>  KEYBOARD_KEY_03=sleep                                  # Fn+F4
>  KEYBOARD_KEY_04=wlan                                   # Fn+F5
>  KEYBOARD_KEY_06=switchvideomode                        # Fn+F7
>  KEYBOARD_KEY_07=zoom                                   # Fn+F8 screen 
> expand
>  KEYBOARD_KEY_08=f24                                    # Fn+F9 undock
>  KEYBOARD_KEY_0b=suspend                                # Fn+F12
>  KEYBOARD_KEY_0f=brightnessup                           # Fn+Home
>  KEYBOARD_KEY_10=brightnessdown                         # Fn+End
>  KEYBOARD_KEY_11=kbdillumtoggle                         # Fn+PgUp - 
> ThinkLight
>  KEYBOARD_KEY_13=zoom                                   # Fn+Space
>  KEYBOARD_KEY_14=volumeup
>  KEYBOARD_KEY_15=volumedown
>  KEYBOARD_KEY_16=mute
>  KEYBOARD_KEY_17=prog1                                  # 
> ThinkPad/ThinkVantage button (high k
>
> Notice the last line, this last line maps the old thinkpad /
> thinkvantage key: https://www.thinkwiki.org/wiki/ThinkPad_Button
> which is define by the kernel as KEY_VENDOR to KEY_PROG1 to
> use a keycode below 240 for X11 compatiblity which does not
> handle higher keycodes.
>
> This means that in practice at least on older models
> KEY_PROG1 is already taken and the thinkpad / thinkvantage key
> does the same (open lenovo help center / sysinfo) as
> what the new Fn + N key combo does. So it does makes sense
> to map Fn + N to KEY_VENDOR so those align but given the existing
> remapping of the thinkpad / thinkvantage key to PROG1 I think
> it would be better to not use PROG1 for the doubletap.
>
> I guess we can just use PROG2 instead to avoid the overlap
> with the remapped old ThinkPad / ThinkVantage buttons
> (which are more like Fn + N then doubletap).
>
Interesting as there has never been a Linux version of Vantage (we've looked into it and want to take pieces of it, but most of what is in Vantage doesn't make a lot of sense for Linux).

Using Prog2 sounds simple to me - no problems with that.

Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
