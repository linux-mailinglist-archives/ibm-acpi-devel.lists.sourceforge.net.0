Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B54A58B0DAA
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 24 Apr 2024 17:11:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rzeGk-0007Dk-EB;
	Wed, 24 Apr 2024 15:10:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1rzeGe-0007DU-RN
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Apr 2024 15:10:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VZAWpB6Ocdkpz4p+ylKN0qFjUruBbqLgESwFAjcrV/I=; b=Nu4/VqY2Tyrcygb85IoK90Y1Ix
 SdT+6om9T5kCgWG9ZlzzjcPv49MSfkECHju/3MsDI9rz42Af00d6U66eyaeKVzCHceamkCBkw+fWT
 LIcMxU7UbwCcHZm/zYWxwjRi76psQcR0jhvkT4EOcdp51hAZ+1UUhJ5zsJ1JboB8KE1s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VZAWpB6Ocdkpz4p+ylKN0qFjUruBbqLgESwFAjcrV/I=; b=KzIVEv26JA+g9l45vcnPckyFjz
 XRwaAF9sd0QupORq1enwRllYZhPK/KiND8zP7YVqrwnxKW6BNXT2FDWlishlaRX55OETo2N03XdVt
 BC+xEbyL7HvUdBnrkJbirVwexX8SBnzOJGEP165BZFnqLtiU44xEq+KdiwswgR569j/Y=;
Received: from wfout3-smtp.messagingengine.com ([64.147.123.146])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rzeGd-0007Pw-EZ for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Apr 2024 15:10:40 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailfout.west.internal (Postfix) with ESMTP id 8442E1C0018E;
 Wed, 24 Apr 2024 11:10:33 -0400 (EDT)
Received: from imap52 ([10.202.2.102])
 by compute3.internal (MEProxy); Wed, 24 Apr 2024 11:10:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to; s=fm1; t=1713971433; x=1714057833; bh=VZAWpB6Ocd
 kpz4p+ylKN0qFjUruBbqLgESwFAjcrV/I=; b=cepLRKMIXbRFPDqchg+Q/z+mEw
 OPZ7Cf/u9xKR81FMrTp/uE7//fMx/2Un/6UvzvvguEDnFKwmipVy1R7sA7qw3OdE
 QfrJyAHBs/UmEd+eC+0oLXHKWl1mbrUT3FuCDoy0yDO/omiPrN/bArB4eP6V3+en
 xbaw1DEeGxWiN0PcD38DMA/2rTjba7HKOHH2lf/OvmchX60juSy+ujfxFghMeA1T
 xtLikwRu91UxufRUdX/brSkgOGWVvQgjTLcb4gyiXRUia1fqcLvGSQReJrWNJC1S
 aH1bvCX0yqI0asCQz2H8PusofSAJ6tpZqvRLcgE6LYylb5l2fiAYRM3XYlxQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1713971433; x=1714057833; bh=VZAWpB6Ocdkpz4p+ylKN0qFjUruB
 bqLgESwFAjcrV/I=; b=JRgJpyoTHpjfa6WMB9CQNto5Gb7IaWKzUiYgkt+EvEBT
 ZRuR3gA3RrRvsc7VupQuM7z/ztEULkp8wvJgCC3NFKildioxpki9mr/K1gW3wb5I
 b+WrC8qYhnO1DQ+utGRS8HrtVoYqUiWgH7PKw5fcbnzginG84+hgpCb26rfPJvKO
 YjssxPaVtSCPcMTmC+U3vyQ8XYFeL8QVQ58DTpiBhBV1YFZY8HbMZgOimx4q59gN
 SkHp+0phb9cy0msR17r5cOv7gSY7VkVrEwFKkWgMM7+0rMBQ/QsDQ1Gq2Fg2/qPw
 BnTGU8i/6EM8Zgla6JxMXHWobKTeCwHAtHPx5vYDzg==
X-ME-Sender: <xms:5yApZnHQb9-z4DXR-5rHWU3ZX-cPSUC509Qlqdo2c_4l0x7svpuQUg>
 <xme:5yApZkViAwZ6uhC1_eNsX5E3Z1aHZRwbJXULul2Rt_EKrE0-jBnHN0hKAr0S_QoO6
 1EmGWWCmUbGuDpyV5Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudelhedgvdehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvfevufgtsehttdertderredtnecuhfhrohhmpedfofgr
 rhhkucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssg
 drtggrqeenucggtffrrghtthgvrhhnpeeiueefjeeiveetuddvkeetfeeltdevffevudeh
 ffefjedufedvieejgedugeekhfenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmh
 epmhgrihhlfhhrohhmpehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggr
X-ME-Proxy: <xmx:5yApZpItt_77mxhRq-hJ4zxxowBlAj99HHxvoMs4R4nwoxWLgj_D5g>
 <xmx:5yApZlH_aur8Rp7AzzckPff9LPk1nwZLvqhrUqzLznRqtwRyGqaLPw>
 <xmx:5yApZtU_4clf8mquSdg8qTNZe8IVTTq9Hh_aF-t2TD-_hu50T_uZyg>
 <xmx:5yApZgMohGO-d005XWyr28E2S8Pt5M02DBJT4_UlDM8OepksuThv4w>
 <xmx:6SApZsEHTufyiPyDo6WhU2ydSUECnV0HlPWR-_dTFu9b8o7EMY9VwXc_>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id B2AF0C60097; Wed, 24 Apr 2024 11:10:31 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.11.0-alpha0-386-g4cb8e397f9-fm-20240415.001-g4cb8e397
MIME-Version: 1.0
Message-Id: <30bc231b-4893-40d2-bfae-250a4ddb0c8f@app.fastmail.com>
In-Reply-To: <77524ca0-89bb-4223-bd42-532f34fdd055@redhat.com>
References: <20240424122834.19801-1-hdegoede@redhat.com>
 <20240424122834.19801-17-hdegoede@redhat.com>
 <5e0e0317-9e27-4a6b-8b7a-3828f4e3f7fb@app.fastmail.com>
 <77524ca0-89bb-4223-bd42-532f34fdd055@redhat.com>
Date: Wed, 24 Apr 2024 11:11:34 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Hans de Goede" <hdegoede@redhat.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 "Andy Shevchenko" <andy@kernel.org>,
 "Henrique de Moraes Holschuh" <hmh@hmh.eng.br>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Apr 24, 2024, at 10:47 AM, Hans de Goede wrote: >
 Hi Mark, > > On 4/24/24 4:17 PM, Mark Pearson wrote: >> Hi Hans, >> >> On
 Wed, Apr 24, 2024, at 8:28 AM, Hans de Goede wrote: >>> Change the h [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [64.147.123.146 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1rzeGd-0007Pw-EZ
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



On Wed, Apr 24, 2024, at 10:47 AM, Hans de Goede wrote:
> Hi Mark,
>
> On 4/24/24 4:17 PM, Mark Pearson wrote:
>> Hi Hans,
>> 
>> On Wed, Apr 24, 2024, at 8:28 AM, Hans de Goede wrote:
>>> Change the hotkey_reserved_mask initialization to hardcode the list
>>> of reserved keys. There are only a few reserved keys and the code to
>>> iterate over the keymap will be removed when moving to sparse-keymaps.
>>>
>>> Tested-by: Mark Pearson <mpearson-lenovo@squebb.ca>
>>> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
>>> ---
>>>  drivers/platform/x86/thinkpad_acpi.c | 21 +++++++++++++++------
>>>  1 file changed, 15 insertions(+), 6 deletions(-)
>>>
>>> diff --git a/drivers/platform/x86/thinkpad_acpi.c 
>>> b/drivers/platform/x86/thinkpad_acpi.c
>>> index 952bac635a18..cf5c741d1343 100644
>>> --- a/drivers/platform/x86/thinkpad_acpi.c
>>> +++ b/drivers/platform/x86/thinkpad_acpi.c
>>> @@ -3545,6 +3545,19 @@ static int __init hotkey_init(struct 
>>> ibm_init_struct *iibm)
>>>  	dbg_printk(TPACPI_DBG_INIT | TPACPI_DBG_HKEY,
>>>  		   "using keymap number %lu\n", keymap_id);
>>>
>>> +	/* Keys which should be reserved on both IBM and Lenovo models */
>>> +	hotkey_reserved_mask = TP_ACPI_HKEY_KBD_LIGHT_MASK |
>>> +			       TP_ACPI_HKEY_VOLUP_MASK |
>>> +			       TP_ACPI_HKEY_VOLDWN_MASK |
>>> +			       TP_ACPI_HKEY_MUTE_MASK;
>>> +	/*
>>> +	 * Reserve brightness up/down unconditionally on IBM models, on Lenovo
>>> +	 * models these are disabled based on acpi_video_get_backlight_type().
>>> +	 */
>>> +	if (keymap_id == TPACPI_KEYMAP_IBM_GENERIC)
>>> +		hotkey_reserved_mask |= TP_ACPI_HKEY_BRGHTUP_MASK |
>>> +					TP_ACPI_HKEY_BRGHTDWN_MASK;
>>> +
>>>  	hotkey_keycode_map = kmemdup(&tpacpi_keymaps[keymap_id],
>>>  			TPACPI_HOTKEY_MAP_SIZE,	GFP_KERNEL);
>>>  	if (!hotkey_keycode_map) {
>>> @@ -3560,9 +3573,6 @@ static int __init hotkey_init(struct 
>>> ibm_init_struct *iibm)
>>>  		if (hotkey_keycode_map[i] != KEY_RESERVED) {
>>>  			input_set_capability(tpacpi_inputdev, EV_KEY,
>>>  						hotkey_keycode_map[i]);
>>> -		} else {
>>> -			if (i < sizeof(hotkey_reserved_mask)*8)
>>> -				hotkey_reserved_mask |= 1 << i;
>> 
>> Just to check my understanding here - does this change mean that the keys marked as KEY_RESERVED in the lenovo map won't make it into the mask?
>> 
>> e.g the ones in this block:
>>                 KEY_RESERVED,        /* Mute held, 0x103 */
>>                 KEY_BRIGHTNESS_MIN,  /* Backlight off */
>>                 KEY_RESERVED,        /* Clipping tool */
>>                 KEY_RESERVED,        /* Cloud */
>>                 KEY_RESERVED,
>>                 KEY_VOICECOMMAND,    /* Voice */
>>                 KEY_RESERVED,
>>                 KEY_RESERVED,        /* Gestures */
>>                 KEY_RESERVED,
>>                 KEY_RESERVED,
>>                 KEY_RESERVED,
>>                 KEY_CONFIG,          /* Settings */
>>                 KEY_RESERVED,        /* New tab */
>>                 KEY_REFRESH,         /* Reload */
>>                 KEY_BACK,            /* Back */
>>                 KEY_RESERVED,        /* Microphone down */
>>                 KEY_RESERVED,        /* Microphone up */
>>                 KEY_RESERVED,        /* Microphone cancellation */
>>                 KEY_RESERVED,        /* Camera mode */
>>                 KEY_RESERVED,        /* Rotate display, 0x116 */
>> 
>> I'm not sure what the effect will be and I don't have the 2014 X1 Carbon (I assume it's the G1) available to test with unfortunately.
>
> Only the 32 original hotkeys are affected by any of the hotkey_*_mask
> values, note:
>
> 			if (i < sizeof(hotkey_reserved_mask)*8)
> 				hotkey_reserved_mask |= 1 << i;
>
> The (i < sizeof(hotkey_reserved_mask)*8) condition translates to
> (i < 32) so this code only ever set bits in hotkey_reserved_mask
> for the 32 original hotkeys.
>
Ah - excellent. I had missed that.
Thanks!

Reviewed-by Mark Pearson <mpearson-lenovo@squebb.ca>
(and that applies for all patches in the series up to this one...getting through them slowly)

Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
