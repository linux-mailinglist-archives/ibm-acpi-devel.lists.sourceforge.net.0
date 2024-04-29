Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EB4A98B58C5
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 29 Apr 2024 14:40:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1s1QIt-0005Lb-20;
	Mon, 29 Apr 2024 12:40:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1s1QIk-0005LK-Pj
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 29 Apr 2024 12:40:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hjKiwpe50kJ00uK1INTrQaTFhpsCGRDJdX8lxLYPHtE=; b=F30eABAm1AS6otW3MhxIqJWFxv
 WAXiHrpI0EJMO8PZr1+W3r/nXgRDRgCz9ywcvel1X+RKH27QNlF6mvfOginQwSZivcgNXVVuVnhhA
 8fH/oi2+UyK3KXSlCAUZXVAlrUybRAqcbYjwR0OPs1g6ClbNTIUNVIPbQnRArjYxIRwo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hjKiwpe50kJ00uK1INTrQaTFhpsCGRDJdX8lxLYPHtE=; b=T7+kUJ+BDYGn5z1iJUFQVf6QJz
 Hv/7KrVdzPxe4vVmN1sg83Y3JvP2cMa7jy+FvoThEeB0/nsH8JaUrjdrC2IyBuBn1Umb/36I7LBrX
 acin3ucyX6iOfaOrdCuu3xeJX1268ciCUkY9VRkSLWOYVzGA6qhWI16ZlylQgLGcZYJw=;
Received: from fout3-smtp.messagingengine.com ([103.168.172.146])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s1QIi-0002tV-F0 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 29 Apr 2024 12:40:10 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailfout.nyi.internal (Postfix) with ESMTP id 4094B138197F;
 Mon, 29 Apr 2024 08:39:58 -0400 (EDT)
Received: from imap52 ([10.202.2.102])
 by compute3.internal (MEProxy); Mon, 29 Apr 2024 08:39:58 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to; s=fm1; t=1714394398; x=1714480798; bh=hjKiwpe50k
 J00uK1INTrQaTFhpsCGRDJdX8lxLYPHtE=; b=bP0yGN4UfldUlNlBNiN4e2G2hi
 2at3zt+RsMZqWOeUN3P9QCdWRstqCjZoJGTV7B2mqnkpUTqGy26rI6lCbtQ7/ZVz
 ZjLW2wSETanSsZN5a+PNmdsgD7sPktvnsQ/eX8pKsJSodpNsfFddeaf/LPMMTz01
 xYU4aSRN/fPifu1tA/T7hLs6+XYI66HtIE9+tZ/jULctxFPBYhq8xVKWejwh8YBQ
 Do69xFe4pKPo/FjUChbzQWniI42LQFrt1vCCzYe+BpcbKokWG6YI9bjSdMdAjiRB
 UgtFLg+61QLhLLiGfeLps8wLW6WNI6KniX0rRIwefXu/MHGCKj1SXaaku1+A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1714394398; x=1714480798; bh=hjKiwpe50kJ00uK1INTrQaTFhpsC
 GRDJdX8lxLYPHtE=; b=HooB3xL2RpwZ0scS80kbLylH8hsChyTp74ai+H7TnPFy
 iTE6bBJ2bz3LudHH7ypX6HGDugSgUo6rIn9Nvx24Q+w5sDa7gJjyotnwklPefEhq
 7ldl0ocJ18eDyhSv8nasL5FLefLYBjBLdnvbNI+9WG0UVjMDlahSevkvbLjjz+Pc
 v6ySaSIw7bji7+HWkp9gcHx40JRPB6v8/o0oMYfE5QLfbzWNmKVoB+l3dFAOhYjz
 junYOmpc+bZSLIZkc0T+GJZdPBEv3/Gy+eKJZIAsFDTY029V6YbsdUALG0z5rm0Q
 UmPBZGltTEMzKgyK50yoHoR49EaB55TzR5q+IPfbLQ==
X-ME-Sender: <xms:HZUvZsrynyYmOlFje4tSbx2rsEHbrJZc3FdzpafgS58p8Vgobgvs8Q>
 <xme:HZUvZir4aWxSgpZp8g-CdwTvY5HzUBcm58xhv8qTdZlViZxp1b9Q36x3nukAEsxZb
 O1TphuzeJD43g37Cd8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvdduuddgheegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvfevufgtsehttdertderredtnecuhfhrohhmpedfofgr
 rhhkucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssg
 drtggrqeenucggtffrrghtthgvrhhnpeeivedtkeeftdefhfdugfelgeehieeivdefffek
 jeetuddvueeijefgjeekudevtdenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecuve
 hluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhhpvggrrhhs
 ohhnqdhlvghnohhvohesshhquhgvsggsrdgtrg
X-ME-Proxy: <xmx:HZUvZhO-LIiZLRM2wiyxNeymKN2mImvV-D_R4FFeKzG2I4Udk6jQzQ>
 <xmx:HZUvZj5sOSYDzqaaecqJ18cV57jwrk5SUwO3uwKrJOB741oJeiVt4g>
 <xmx:HZUvZr6OHqevGU6YJYEUZNnDvDotihrARX9Rw1dQJ3pXkYCAickGtw>
 <xmx:HZUvZjgXUHhDpDSh2DfxnG3GtpJ7TZzNXZfR6vSbs1PE0A9bLfuyPg>
 <xmx:HpUvZubgSYBUUSZDJbraoJIbAtvW_GMgV4Axw7pKQS5Y0khgqHiynq3c>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 935CFC60099; Mon, 29 Apr 2024 08:39:57 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.11.0-alpha0-386-g4cb8e397f9-fm-20240415.001-g4cb8e397
MIME-Version: 1.0
Message-Id: <28d295a8-7226-4222-b167-060a99134607@app.fastmail.com>
In-Reply-To: <5ea90914-16f7-4904-b7a6-e1997880e5f0@redhat.com>
References: <20240424122834.19801-1-hdegoede@redhat.com>
 <20240424122834.19801-23-hdegoede@redhat.com>
 <8f150aef-0d56-4c5b-af17-9c66084a3ae7@app.fastmail.com>
 <5ea90914-16f7-4904-b7a6-e1997880e5f0@redhat.com>
Date: Mon, 29 Apr 2024 08:40:50 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Hans de Goede" <hdegoede@redhat.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 "Andy Shevchenko" <andy@kernel.org>,
 "Henrique de Moraes Holschuh" <hmh@hmh.eng.br>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Apr 29, 2024, at 5:57 AM, Hans de Goede wrote: > Hi
 Mark, > > On 4/24/24 8:19 PM, Mark Pearson wrote: >> Hi Hans, >> >> On Wed,
 Apr 24, 2024, at 8:28 AM, Hans de Goede wrote: >>> From: Mark Pe [...] 
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
 for more information. [103.168.172.146 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1s1QIi-0002tV-F0
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



On Mon, Apr 29, 2024, at 5:57 AM, Hans de Goede wrote:
> Hi Mark,
>
> On 4/24/24 8:19 PM, Mark Pearson wrote:
>> Hi Hans,
>> 
>> On Wed, Apr 24, 2024, at 8:28 AM, Hans de Goede wrote:
>>> From: Mark Pearson <mpearson-lenovo@squebb.ca>
>>>
>>> Lenovo trackpoints are adding the ability to generate a doubletap event.
>>> This handles the doubletap event and sends the KEY_PROG4 event to
>>> userspace. Despite the driver itself not using KEY_PROG1 - KEY_PROG3 this
>>> still uses KEY_PROG4 because of some keys being remapped to KEY_PROG1 -
>>> KEY_PROG3 by default by the upstream udev hwdb containing:
>>>
>>> evdev:name:ThinkPad Extra Buttons:dmi:bvn*:bvr*:bd*:svnLENOVO*:pn*:*
>>>  ...
>>>  KEYBOARD_KEY_17=prog1
>>>  KEYBOARD_KEY_1a=f20       # Microphone mute button
>>>  KEYBOARD_KEY_45=bookmarks
>>>  KEYBOARD_KEY_46=prog2     # Fn + PrtSc, on Windows: Snipping tool
>>>  KEYBOARD_KEY_4a=prog3     # Fn + Right shift, on Windows: No idea
>>>
>>> Signed-off-by: Mark Pearson <mpearson-lenovo@squebb.ca>
>>> Signed-off-by: Vishnu Sankar <vishnuocv@gmail.com>
>>> Link: https://lore.kernel.org/r/20240417173124.9953-2-mpearson-lenovo@squebb.ca
>>> [hdegoede@redhat.com: Adjust for switch to sparse-keymap keymaps]
>>> Tested-by: Mark Pearson <mpearson-lenovo@squebb.ca>
>>> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
>>> ---
>>>  drivers/platform/x86/thinkpad_acpi.c | 19 +++++++++++++++++++
>>>  1 file changed, 19 insertions(+)
>>>
>>> diff --git a/drivers/platform/x86/thinkpad_acpi.c 
>>> b/drivers/platform/x86/thinkpad_acpi.c
>>> index a53b00fecf1a..b6d6466215e1 100644
>>> --- a/drivers/platform/x86/thinkpad_acpi.c
>>> +++ b/drivers/platform/x86/thinkpad_acpi.c
>>> @@ -248,6 +248,9 @@ enum tpacpi_hkey_event_t {
>>>
>>>  	/* Misc */
>>>  	TP_HKEY_EV_RFKILL_CHANGED	= 0x7000, /* rfkill switch changed */
>>> +
>>> +	/* Misc2 */
>>> +	TP_HKEY_EV_TRACK_DOUBLETAP      = 0x8036, /* trackpoint doubletap */
>>>  };
>>>
>>>  
>>> /****************************************************************************
>>> @@ -3268,6 +3271,7 @@ static const struct key_entry keymap_lenovo[] 
>>> __initconst = {
>>>  	 * after switching to sparse keymap support. The mappings above use 
>>> translated
>>>  	 * scancodes to preserve uAPI compatibility, see 
>>> tpacpi_input_send_key().
>>>  	 */
>>> +	{ KE_KEY, TP_HKEY_EV_TRACK_DOUBLETAP /* 0x8036 */, { KEY_PROG4 } },
>>>  	{ KE_END }
>>>  };
>>>
>>> @@ -3817,6 +3821,17 @@ static bool hotkey_notify_6xxx(const u32 hkey, 
>>> bool *send_acpi_ev)
>>>  	return true;
>>>  }
>>>
>>> +static bool hotkey_notify_8xxx(const u32 hkey, bool *send_acpi_ev)
>>> +{
>>> +	switch (hkey) {
>>> +	case TP_HKEY_EV_TRACK_DOUBLETAP:
>>> +		tpacpi_input_send_key(hkey, send_acpi_ev);
>>> +		return true;
>>> +	default:
>>> +		return false;
>>> +	}
>>> +}
>>> +
>>>  static void hotkey_notify(struct ibm_struct *ibm, u32 event)
>>>  {
>>>  	u32 hkey;
>>> @@ -3893,6 +3908,10 @@ static void hotkey_notify(struct ibm_struct 
>>> *ibm, u32 event)
>>>  				known_ev = true;
>>>  			}
>>>  			break;
>>> +		case 8:
>>> +			/* 0x8000-0x8FFF: misc2 */
>>> +			known_ev = hotkey_notify_8xxx(hkey, &send_acpi_ev);
>>> +			break;
>>>  		}
>>>  		if (!known_ev) {
>>>  			pr_notice("unhandled HKEY event 0x%04x\n", hkey);
>>> -- 
>>> 2.44.0
>> 
>> Instead of needing hotkey_notify_8xxx, now we are using the sparse_keymap can we just use hotkey_notify_hotkey for case 8? No need to check what the hkey is either.
>
> I prefer to keep things consistent and have each case #: path call a separate
> helper for those #xxx codes.
>
> ATM some of the simpler cases handle things directly, but as more 
> handling for
> different events get added that becomes a bit messy IMHO. I would 
> actually
> like to see those other cases converted to use a small helper function 
> too
> (with a switch-case in the helper for future proofing) to make things 
> consistent.
>
Got it - no problem.

> Patches to do this small cleanup are welcome.
>
Sounds good. Will look at doing this.

Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
