Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B3FC28B1202
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 24 Apr 2024 20:19:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rzhDL-0003qw-ON;
	Wed, 24 Apr 2024 18:19:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1rzhDK-0003qo-5F
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Apr 2024 18:19:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=p3NzkKKYuyUG+6KgbxqEHm1k+2YfJhY6iMUSSgfltac=; b=JnvLGqv7U/p1t5t+p0Fu5wbldp
 iKRiPTHECwFkjxrHtEZCSvzlQep5JsFMxLNpjh6hqkM6Fma6+ANMLkx3xLBtIsacgdwTSyxdfJvqs
 f+P8XpaOH0cSSGvrR1Xl/iy51wNzziyvfdAnGsVyRVxGEvmGsKEK8QrkB4LElYy34g+8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=p3NzkKKYuyUG+6KgbxqEHm1k+2YfJhY6iMUSSgfltac=; b=l/Cq8F0+mLdmskHgT8g/dp9ZW3
 9QLBQZEU3iY3adzRLNo/4a5BItOp+diL4yWxaSD/sYt2NtDd52+7UbSYOe6Zc1tXN2QebuXJQU5eH
 IvTSgQlR3dJ07NU0OSCqpIIktCJz+rO8WgeceWucGSLDR1nzHV0YuVHYqARBuTkXb6zw=;
Received: from wfhigh7-smtp.messagingengine.com ([64.147.123.158])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rzhDI-0007cm-FN for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Apr 2024 18:19:26 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailfhigh.west.internal (Postfix) with ESMTP id DCA3C1800126;
 Wed, 24 Apr 2024 14:19:12 -0400 (EDT)
Received: from imap52 ([10.202.2.102])
 by compute3.internal (MEProxy); Wed, 24 Apr 2024 14:19:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to; s=fm1; t=1713982752; x=1714069152; bh=p3NzkKKYuy
 UG+6KgbxqEHm1k+2YfJhY6iMUSSgfltac=; b=EgPYTfZuTiE5Kre6KUpd966bef
 IzLx65IXl04dc638w4vJDH2Ha6L3GA4r8xagWcsweARtGv2JiwYCiQYJi3igMLEc
 94HfATS6O8HrWovJRLdKfE73GOpRf6rMi/qmf/YMLNSJSlh/FzX+5+iEgaFJHzNe
 nOHyDYFFBwEXjImfRCoMUMNzYAX9Ly6aVliWts3UsDKH7UG3qB1yrz2/s+o/utaY
 Um+mISKxJNeyNw+DsO2Cu6fB68V51gCs4njdpxAlL4+BW1pv3eXV0wuNiiyjNdd9
 09u5hVOr0hEyItUaRiNnrUBerCPWEh5Y+4Z/kWB7VBNXsxVE2bMvPzTm+TeA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1713982752; x=1714069152; bh=p3NzkKKYuyUG+6KgbxqEHm1k+2Yf
 JhY6iMUSSgfltac=; b=Tz0zDUQNJ7Eix74TnsEUfQvIcK+ajtTUgnWwz2wBaTRd
 SOI9pJyjX3NQ+ZPUN+p+jXBRWj4qCLcFx49V/4MCL2CYe2JGGt/NaW3KNwWoQrrC
 E0BLFOqMxwHz9E+2FBoRvdGsVWGwBLuyTClgxfsEnEVz9a5bYIzmHpkJO9J9neHe
 ZHGaF7QgZXmC1z+jdB4qugpC7iyyLnXSnm6DUUF3frfiU9nN/jW2IqL86TNxkrWJ
 5KpLWt8+1kfygpic32Uiaf+zEQ41/bMU2Wwk0VLI4IuH9TAgHe0vihteOlu/c6Cy
 h805dOr6XqMnUc8/oxn7248Y6hBQMJGc06Xi1kOfUA==
X-ME-Sender: <xms:H00pZhw4WbO36SCty2PN2Jcvc_eCj9-Y6QR16hXWQG5ty0xOVBjE_A>
 <xme:H00pZhQoLM92Nx8rzjFv9XUDPj3X9NDnRygdwx7o1bGK4FScm5db8HqlrlUOSZ2YH
 yEtZBROcUxuNhZkHKA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudelhedgieegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvfevufgtsehttdertderredtnecuhfhrohhmpedfofgr
 rhhkucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssg
 drtggrqeenucggtffrrghtthgvrhhnpeeivedtkeeftdefhfdugfelgeehieeivdefffek
 jeetuddvueeijefgjeekudevtdenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecuve
 hluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhhpvggrrhhs
 ohhnqdhlvghnohhvohesshhquhgvsggsrdgtrg
X-ME-Proxy: <xmx:H00pZrVgnyPsT8uKy4aQtH7oEk3pn4XAvtxmPlEqp8Q_xEI2YxNI6A>
 <xmx:IE0pZjg3fr1J93an07iFx3quT2hEaQ2drEtsFSe_UbV0soAM1Hx5uw>
 <xmx:IE0pZjCXPcjUUWgmeoDUwF6anjgVgwZKdujuVztpD7NXHuLz0tI_1w>
 <xmx:IE0pZsIbNRkhBAZYqnvBbJt1IGakAz_ppR46WL50dm8CJJfvJN-RsA>
 <xmx:IE0pZlDf_43mQdoQKtyX0A9bujrZK2U5sXKyBWuV6elKpkkvhDeDDCbq>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id D5B48C60097; Wed, 24 Apr 2024 14:19:11 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.11.0-alpha0-386-g4cb8e397f9-fm-20240415.001-g4cb8e397
MIME-Version: 1.0
Message-Id: <8f150aef-0d56-4c5b-af17-9c66084a3ae7@app.fastmail.com>
In-Reply-To: <20240424122834.19801-23-hdegoede@redhat.com>
References: <20240424122834.19801-1-hdegoede@redhat.com>
 <20240424122834.19801-23-hdegoede@redhat.com>
Date: Wed, 24 Apr 2024 14:19:40 -0400
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
 Content preview:  Hi Hans, On Wed, Apr 24, 2024, at 8:28 AM,
 Hans de Goede wrote:
 > From: Mark Pearson <mpearson-lenovo@squebb.ca> > > Lenovo trackpoints are
 adding the ability to generate a doubletap event. > This handles the [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: squebb.ca]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [64.147.123.158 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1rzhDI-0007cm-FN
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

Hi Hans,

On Wed, Apr 24, 2024, at 8:28 AM, Hans de Goede wrote:
> From: Mark Pearson <mpearson-lenovo@squebb.ca>
>
> Lenovo trackpoints are adding the ability to generate a doubletap event.
> This handles the doubletap event and sends the KEY_PROG4 event to
> userspace. Despite the driver itself not using KEY_PROG1 - KEY_PROG3 this
> still uses KEY_PROG4 because of some keys being remapped to KEY_PROG1 -
> KEY_PROG3 by default by the upstream udev hwdb containing:
>
> evdev:name:ThinkPad Extra Buttons:dmi:bvn*:bvr*:bd*:svnLENOVO*:pn*:*
>  ...
>  KEYBOARD_KEY_17=prog1
>  KEYBOARD_KEY_1a=f20       # Microphone mute button
>  KEYBOARD_KEY_45=bookmarks
>  KEYBOARD_KEY_46=prog2     # Fn + PrtSc, on Windows: Snipping tool
>  KEYBOARD_KEY_4a=prog3     # Fn + Right shift, on Windows: No idea
>
> Signed-off-by: Mark Pearson <mpearson-lenovo@squebb.ca>
> Signed-off-by: Vishnu Sankar <vishnuocv@gmail.com>
> Link: https://lore.kernel.org/r/20240417173124.9953-2-mpearson-lenovo@squebb.ca
> [hdegoede@redhat.com: Adjust for switch to sparse-keymap keymaps]
> Tested-by: Mark Pearson <mpearson-lenovo@squebb.ca>
> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
> ---
>  drivers/platform/x86/thinkpad_acpi.c | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
>
> diff --git a/drivers/platform/x86/thinkpad_acpi.c 
> b/drivers/platform/x86/thinkpad_acpi.c
> index a53b00fecf1a..b6d6466215e1 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -248,6 +248,9 @@ enum tpacpi_hkey_event_t {
> 
>  	/* Misc */
>  	TP_HKEY_EV_RFKILL_CHANGED	= 0x7000, /* rfkill switch changed */
> +
> +	/* Misc2 */
> +	TP_HKEY_EV_TRACK_DOUBLETAP      = 0x8036, /* trackpoint doubletap */
>  };
> 
>  
> /****************************************************************************
> @@ -3268,6 +3271,7 @@ static const struct key_entry keymap_lenovo[] 
> __initconst = {
>  	 * after switching to sparse keymap support. The mappings above use 
> translated
>  	 * scancodes to preserve uAPI compatibility, see 
> tpacpi_input_send_key().
>  	 */
> +	{ KE_KEY, TP_HKEY_EV_TRACK_DOUBLETAP /* 0x8036 */, { KEY_PROG4 } },
>  	{ KE_END }
>  };
> 
> @@ -3817,6 +3821,17 @@ static bool hotkey_notify_6xxx(const u32 hkey, 
> bool *send_acpi_ev)
>  	return true;
>  }
> 
> +static bool hotkey_notify_8xxx(const u32 hkey, bool *send_acpi_ev)
> +{
> +	switch (hkey) {
> +	case TP_HKEY_EV_TRACK_DOUBLETAP:
> +		tpacpi_input_send_key(hkey, send_acpi_ev);
> +		return true;
> +	default:
> +		return false;
> +	}
> +}
> +
>  static void hotkey_notify(struct ibm_struct *ibm, u32 event)
>  {
>  	u32 hkey;
> @@ -3893,6 +3908,10 @@ static void hotkey_notify(struct ibm_struct 
> *ibm, u32 event)
>  				known_ev = true;
>  			}
>  			break;
> +		case 8:
> +			/* 0x8000-0x8FFF: misc2 */
> +			known_ev = hotkey_notify_8xxx(hkey, &send_acpi_ev);
> +			break;
>  		}
>  		if (!known_ev) {
>  			pr_notice("unhandled HKEY event 0x%04x\n", hkey);
> -- 
> 2.44.0

Instead of needing hotkey_notify_8xxx, now we are using the sparse_keymap can we just use hotkey_notify_hotkey for case 8? No need to check what the hkey is either.

Note - the future patch for the FN+G key (patch 24/24) will also need modifying as we'll need to move the check if the doubletap has been disabled for the doubletap hkey, but it's two lines so still seems cleaner overall.

I prototyped it on my system, and it worked.

Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
