Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 886A58A8FBF
	for <lists+ibm-acpi-devel@lfdr.de>; Thu, 18 Apr 2024 01:58:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rxFA0-0004kx-Ki;
	Wed, 17 Apr 2024 23:57:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1rxF9y-0004kq-SM
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 17 Apr 2024 23:57:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vQ0R2zuCuJDMnV0woeSURJz1wHKlUMP5n9tccB0GAqE=; b=PLh8rAG7vGV935iogRibAwFaso
 DqPCzZpCCYBgGZ4wtf6qjgJ77Fn6gv5UwePl8FNvK+cYkvxTM9FYNlBCHoFB1suc0OxHZiW0sTuIw
 GYa3pHbCbjx0FQX9+7Wcqsaji92EBs6d7xL1YotP/pFko7C9+CJhuWx6S6J1vK4KOUYA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vQ0R2zuCuJDMnV0woeSURJz1wHKlUMP5n9tccB0GAqE=; b=S+nkQiGXzS3iuDuJH/Q4tnNMk7
 UxqIdeHAFLMwkOysMri9Zdl2xbaG2WbXgZ9tWBV8QBklldOt0gGjeXAZv+IK36fEBDQhMgM2f1Thg
 BGg5cgYiwZnpojCYlfrI9BKUUWbxjitMAfs/2AiiuY0mEjIpJFfLuNDghoBTpug3FAx0=;
Received: from fout8-smtp.messagingengine.com ([103.168.172.151])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rxF9y-00041z-3L for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 17 Apr 2024 23:57:51 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailfout.nyi.internal (Postfix) with ESMTP id EEAC9138023B;
 Wed, 17 Apr 2024 19:57:38 -0400 (EDT)
Received: from imap52 ([10.202.2.102])
 by compute3.internal (MEProxy); Wed, 17 Apr 2024 19:57:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to; s=fm3; t=1713398258; x=1713484658; bh=vQ0R2zuCuJ
 DMnV0woeSURJz1wHKlUMP5n9tccB0GAqE=; b=g58usF9qjD5/9mxDGYihGDD8C0
 EFD0lSQ9Y4nx7KF5IIMrOZUEhkNsgqQQmEJj9CS2KrGkeFHYiyZzyOwMyoLMw84H
 EmJ9vomn+yvTsvTAzm4V5Oa3muFTzHjm8x56DSoPW3hdMkXYhR07cMmoDBiCXz7I
 v1gn2ThZwkNH8qUAzyqR8/58SaOjT0N8OPPBJNBRrwvH+vaXKjGTTQbEM5btMMl6
 lXaG9BskY2vGOwfTr7S5XX1cF08JZfowXdorsulcbNc5YWWDTfv2889foaxxc1L2
 HgP/i59tixEdu/jn5MJnVVFxJWgpmQbtUzAtvX3Q2idCZ3E5F79fCe4DGBuw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1713398258; x=1713484658; bh=vQ0R2zuCuJDMnV0woeSURJz1wHKl
 UMP5n9tccB0GAqE=; b=ift4++zVPKLbCGv/gs1YuiHbWyma/GoqViwYN8oSM2aM
 Hb66JtlQdxq44okEePrjpSoqMaNlftFd1gvzA2/sMFKk64ZcuG/cjdbLXDD9Eam5
 v/IUCCPz6/2DyBDGMHfS8oDl/BTgzvvXxEYLohWUN4+VayEklPT5EbgLLsCnRSAu
 4lM8SOsCtAch0hiO7f9jVzmdT9YbLdg0Bm+I5ssrD0onifYgkPk/eGRodxaqCg+W
 VGp7mgaE4u6yH0WYEnd+xM7Q0xl+3ZJKLVgQp9wEovViwMAtounGhwDiCYYzHpYn
 YmR4q9adfA2cFHHIVG7GRw0iI7eYgJsEYrFt8hK93Q==
X-ME-Sender: <xms:8mEgZqhwfmWaavYh2257UGmgKTIHdfEKaYwGCPuPOR_yH9IbT2YIyw>
 <xme:8mEgZrAD46L0zSB-EVE_057womXerHTiBTXjdeVHMMo_yWgO-tWv_wWkLxzfiW3_0
 HROSfGcVDOM5WcjXK8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudejledgvdekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvfevufgtsehttdertderredtnecuhfhrohhmpedfofgr
 rhhkucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssg
 drtggrqeenucggtffrrghtthgvrhhnpeeiueefjeeiveetuddvkeetfeeltdevffevudeh
 ffefjedufedvieejgedugeekhfenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmh
 epmhgrihhlfhhrohhmpehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggr
X-ME-Proxy: <xmx:8mEgZiEKmU0NtN0WpITXmRQ3sgqak2QOjinkWY2S_AWfnp5vD8nUnw>
 <xmx:8mEgZjRiksJsUwbCWoiNRRI4Wnrqp4fWeOA64wR2PKoB3Vycqd0MpA>
 <xmx:8mEgZnxMwjht6WKNFTqU20VtP8Ir7_VOFaXARjAFpAAr8vgwivi2Vw>
 <xmx:8mEgZh6VqEa-Tq29gniNsSpS3tq8xrJ_KhqdGOaLzMJQgpuzpWl4tw>
 <xmx:8mEgZvd3lKjGTCM0K4D4bQYru0nwRecxQMbXjZrz-qfBD_P2s-S22FCl>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 3F71CC60097; Wed, 17 Apr 2024 19:57:38 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.11.0-alpha0-379-gabd37849b7-fm-20240408.001-gabd37849
MIME-Version: 1.0
Message-Id: <a7f7d94a-f1c8-4d6a-9c65-b5de59b9f7c0@app.fastmail.com>
In-Reply-To: <55ded7c3-fbc5-4fa5-8b63-da4d7aa4966c@redhat.com>
References: <mpearson-lenovo@squebb.ca>
 <20240417173124.9953-1-mpearson-lenovo@squebb.ca>
 <20240417173124.9953-2-mpearson-lenovo@squebb.ca>
 <98082080-0fcf-470f-afa5-76ec2bbffee7@redhat.com>
 <55ded7c3-fbc5-4fa5-8b63-da4d7aa4966c@redhat.com>
Date: Wed, 17 Apr 2024 19:57:17 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Hans de Goede" <hdegoede@redhat.com>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Hans, On Wed, Apr 17, 2024, at 4:06 PM,
 Hans de Goede wrote:
 > Hi Mark, > > On 4/17/24 9:39 PM, Hans de Goede wrote: >> Hi Mark, >> >>
 Thank you for the new version of this series, overall this looks good, [...]
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: squebb.ca]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [103.168.172.151 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1rxF9y-00041z-3L
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

On Wed, Apr 17, 2024, at 4:06 PM, Hans de Goede wrote:
> Hi Mark,
>
> On 4/17/24 9:39 PM, Hans de Goede wrote:
>> Hi Mark,
>> 
>> Thank you for the new version of this series, overall this looks good,
>> one small remark below.
>> 
>> On 4/17/24 7:31 PM, Mark Pearson wrote:
>>> Lenovo trackpoints are adding the ability to generate a doubletap event.
>>> This handles the doubletap event and sends the KEY_PROG1 event to
>>> userspace.
>>>
>>> Signed-off-by: Mark Pearson <mpearson-lenovo@squebb.ca>
>>> Signed-off-by: Vishnu Sankar <vishnuocv@gmail.com>
>>> ---
>>> Changes in v2:
>>>  - Use KEY_PROG1 instead of KEY_DOUBLETAP as input maintainer doesn't
>>>    want new un-specific key codes added.
>>>  - Add doubletap to hotkey scan code table and use existing hotkey
>>>    functionality.
>>>  - Tested using evtest, and then gnome settings to configure a custom shortcut
>>>    to launch an application.
>>>
>>>  drivers/platform/x86/thinkpad_acpi.c | 18 ++++++++++++++++++
>>>  1 file changed, 18 insertions(+)
>>>
>>> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
>>> index 3b48d893280f..6d04d45e8d45 100644
>>> --- a/drivers/platform/x86/thinkpad_acpi.c
>>> +++ b/drivers/platform/x86/thinkpad_acpi.c
>>> @@ -232,6 +232,9 @@ enum tpacpi_hkey_event_t {
>>>  
>>>  	/* Misc */
>>>  	TP_HKEY_EV_RFKILL_CHANGED	= 0x7000, /* rfkill switch changed */
>>> +
>>> +	/* Misc2 */
>>> +	TP_HKEY_EV_TRACK_DOUBLETAP      = 0x8036, /* trackpoint doubletap */
>>>  };
>>>  
>>>  /****************************************************************************
>>> @@ -1786,6 +1789,7 @@ enum {	/* hot key scan codes (derived from ACPI DSDT) */
>>>  	TP_ACPI_HOTKEYSCAN_NOTIFICATION_CENTER,
>>>  	TP_ACPI_HOTKEYSCAN_PICKUP_PHONE,
>>>  	TP_ACPI_HOTKEYSCAN_HANGUP_PHONE,
>> 
>> I understand why you've done this but I think this needs a comment,
>> something like:
>> 
>>         /*
>>          * For TP_HKEY_EV_TRACK_DOUBLETAP, unlike the codes above which map to:
>>          * (hkey_event - 0x1300) + TP_ACPI_HOTKEYSCAN_EXTENDED_START, this is
>>          * hardcoded for TP_HKEY_EV_TRACK_DOUBLETAP handling. Therefor this must
>>          * always be the last entry (after any 0x1300-0x13ff entries).
>>          */
>> +	TP_ACPI_HOTKEYSCAN_DOUBLETAP,
>
> Ugh, actually this will not work becuuse we want hotkeyscancodes to be stable
> because these are userspace API since they can be remapped using hwdb so we
> cannot have the hotkeyscancode changing when new 0x1300-0x13ff range entries
> get added.
>
> So we need to either grow the table a lot and reserve a whole bunch of space
> for future 0x13xx - 0x13ff codes or maybe something like this:
>
> diff --git a/drivers/platform/x86/thinkpad_acpi.c 
> b/drivers/platform/x86/thinkpad_acpi.c
> index 771aaa7ae4cf..af3279889ecc 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -1742,7 +1742,12 @@ enum {	/* hot key scan codes (derived from ACPI 
> DSDT) */
>  	TP_ACPI_HOTKEYSCAN_VOLUMEDOWN,
>  	TP_ACPI_HOTKEYSCAN_MUTE,
>  	TP_ACPI_HOTKEYSCAN_THINKPAD,
> -	TP_ACPI_HOTKEYSCAN_UNK1,
> +	/*
> +	 * Note this gets send both on 0x1019 and on 
> TP_HKEY_EV_TRACK_DOUBLETAP
> +	 * hotkey-events. 0x1019 events have never been seen on any actual hw
> +	 * and a scancode is needed for the special 0x8036 doubletap 
> hotkey-event.
> +	 */
> +	TP_ACPI_HOTKEYSCAN_DOUBLETAP,
>  	TP_ACPI_HOTKEYSCAN_UNK2,
>  	TP_ACPI_HOTKEYSCAN_UNK3,
>  	TP_ACPI_HOTKEYSCAN_UNK4,
>
> or just hardcode KEY_PROG1 like your previous patch does, but I'm not
> a fan of that because of loosing hwdb remapping functionality for this
> "key" then.
>
> Note I'm open to other suggestions.
>
Oh...I hadn't thought of that impact. That's not great :(

I have an idea, but want to prototype it to see if it works out or not. Will update once I've had a chance to play with it.

Mark



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
