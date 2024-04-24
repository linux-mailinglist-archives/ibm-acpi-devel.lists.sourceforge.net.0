Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 925CB8B0C4D
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 24 Apr 2024 16:17:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rzdQc-0003WS-Qy;
	Wed, 24 Apr 2024 14:16:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1rzdQb-0003WL-7u
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Apr 2024 14:16:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Y8elZxzLZawIxpLBkjeMfTCjzxjkLvs2ZoKMc5EEQWk=; b=Dk+uTUp0Kv3roaE2Y/E5jnURxp
 JUU6TVtdd6lSZ/VHaG7wjCdtlRtx4zJE+Y7NQiDY9A1pKYm6w7kpwnlbIuGQ+XIZeCQ7omRbPAE75
 qW5ZM/LVA560zlNKHfeJcjRrkwhv1nywJRsONjEACJ5xtABe6QjRKAAzGRW8s3JirDls=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Y8elZxzLZawIxpLBkjeMfTCjzxjkLvs2ZoKMc5EEQWk=; b=AR3dPRjS4cUM/Y6Lano1mCPRV8
 w7sKXASOIpQOrPO1VLXirMteUKKybq8zO5m51MSFBvh9ipLhyzJucAYq6ajraer1CVarf1I3aYO2E
 qUm4tw/Vqa5J4IUcv6lzj+1ceqARzC++tG5AIkf66B6rE9IQuqRerd+HsNfaZapjqxyo=;
Received: from wfhigh4-smtp.messagingengine.com ([64.147.123.155])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rzdQZ-0002jv-RU for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Apr 2024 14:16:53 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailfhigh.west.internal (Postfix) with ESMTP id EE758180018A;
 Wed, 24 Apr 2024 10:16:40 -0400 (EDT)
Received: from imap52 ([10.202.2.102])
 by compute3.internal (MEProxy); Wed, 24 Apr 2024 10:16:41 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to; s=fm1; t=1713968200; x=1714054600; bh=Y8elZxzLZa
 wIxpLBkjeMfTCjzxjkLvs2ZoKMc5EEQWk=; b=KwcHQCKAGhkDoKHoj+r1ECTwPQ
 lmGabAJsQdegdd20Ya9fsBv16Iy5XYhs52EL6xQpSXHWJT8A4mm0M8yPH27k4Fnk
 Uin3WX3jA3x4JmLDqNYHQFs0ODha6c6G7wEHfqVOuRDCTxdqFbvxA/niQnIlKdiA
 VBX5JQ+HJHSy0FvlVKeD0l1NZ+xtNjrs3gE4hFiebuYpY3OjJPb+ZtgIeYrW+pSc
 UDsJ76cBjk0b0lV1IGW3RsF1lTFpuu+QB2dzbmYJEZcUZP/T4gX8L+iCKVnmSBhh
 okjAeRj1wo1YN5G8FxVEIlZk08Hnl6ROlVcSqEKsLLd+5JUaLEcMKawvQhdQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1713968200; x=1714054600; bh=Y8elZxzLZawIxpLBkjeMfTCjzxjk
 Lvs2ZoKMc5EEQWk=; b=SdBjEJP3GyN5fEXTOhUusNRXDDXkuOTXylT+q+UAvkFY
 MSFqQR4/i9PEY3OWw3RJd/ji9S2aDUcN9MlQiaL+UdA613GAu6Pqlp55aF4lry8h
 CyLmmyuTCZe1x8KkVyyFCdqnMQBM6GH8Ku95K7bCZLr6fZTRcQUIIXB2Bsqo+ioB
 a1uPe1lpiMj9BYW5yEUOtUtmlzXadoA87gO/vNz1aNL/80DxnyKvYxai7ue4fR9W
 y+rgr4hlOlXRVUiJlRiTfItftCB5xJss/DcX4SF9L743dMNmQQ9QIbC8PTstpmKX
 Nx0ruuhNwPQX3PGv2biBYz/wk9m9RgZewyUCngXATQ==
X-ME-Sender: <xms:SBQpZht11YO0H6NhN_MEh1oBs2mo0i6SKVR7pfHP8WvN7hSLRiQkaw>
 <xme:SBQpZqc68493mxPoebAthAvfF8frldSlaBnzsURRLWqu0xty8rjurkDabKF0eR8s6
 g_7CsjxhJ9kOfUavhk>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudelhedgudegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvfevufgtsehttdertderredtnecuhfhrohhmpedfofgr
 rhhkucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssg
 drtggrqeenucggtffrrghtthgvrhhnpeeiueefjeeiveetuddvkeetfeeltdevffevudeh
 ffefjedufedvieejgedugeekhfenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmh
 epmhgrihhlfhhrohhmpehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggr
X-ME-Proxy: <xmx:SBQpZkxblqye_g6c5EbKlbocEl3VhdE5e0P3V0WtZIDPhkg2oVR6wg>
 <xmx:SBQpZoOT_ujpNgTiLyk9AGKG-Lrl9zPgzoVPD67gnCSci8iVSHe60A>
 <xmx:SBQpZh9F9L8Z3-cS2G5g0jVyRc1KufbeQzylPsIBNAU7W1C-f-Dm1Q>
 <xmx:SBQpZoXklUzcq0L0aznm1QATzrkZJokNLfjbEmZuqm38ImAHw5J6vw>
 <xmx:SBQpZqO8TJlXMbO1ga5h-EC06JG8uH94b7UByvgc0H5ZVPHNA4Me7iXj>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id E6DDBC60098; Wed, 24 Apr 2024 10:16:39 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.11.0-alpha0-386-g4cb8e397f9-fm-20240415.001-g4cb8e397
MIME-Version: 1.0
Message-Id: <5e0e0317-9e27-4a6b-8b7a-3828f4e3f7fb@app.fastmail.com>
In-Reply-To: <20240424122834.19801-17-hdegoede@redhat.com>
References: <20240424122834.19801-1-hdegoede@redhat.com>
 <20240424122834.19801-17-hdegoede@redhat.com>
Date: Wed, 24 Apr 2024 10:17:04 -0400
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
 > Change the hotkey_reserved_mask initialization to hardcode the list > of
 reserved keys. There are only a few reserved keys and the code to > it [...]
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
 for more information. [64.147.123.155 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [64.147.123.155 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1rzdQZ-0002jv-RU
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

Hi Hans,

On Wed, Apr 24, 2024, at 8:28 AM, Hans de Goede wrote:
> Change the hotkey_reserved_mask initialization to hardcode the list
> of reserved keys. There are only a few reserved keys and the code to
> iterate over the keymap will be removed when moving to sparse-keymaps.
>
> Tested-by: Mark Pearson <mpearson-lenovo@squebb.ca>
> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
> ---
>  drivers/platform/x86/thinkpad_acpi.c | 21 +++++++++++++++------
>  1 file changed, 15 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/platform/x86/thinkpad_acpi.c 
> b/drivers/platform/x86/thinkpad_acpi.c
> index 952bac635a18..cf5c741d1343 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -3545,6 +3545,19 @@ static int __init hotkey_init(struct 
> ibm_init_struct *iibm)
>  	dbg_printk(TPACPI_DBG_INIT | TPACPI_DBG_HKEY,
>  		   "using keymap number %lu\n", keymap_id);
> 
> +	/* Keys which should be reserved on both IBM and Lenovo models */
> +	hotkey_reserved_mask = TP_ACPI_HKEY_KBD_LIGHT_MASK |
> +			       TP_ACPI_HKEY_VOLUP_MASK |
> +			       TP_ACPI_HKEY_VOLDWN_MASK |
> +			       TP_ACPI_HKEY_MUTE_MASK;
> +	/*
> +	 * Reserve brightness up/down unconditionally on IBM models, on Lenovo
> +	 * models these are disabled based on acpi_video_get_backlight_type().
> +	 */
> +	if (keymap_id == TPACPI_KEYMAP_IBM_GENERIC)
> +		hotkey_reserved_mask |= TP_ACPI_HKEY_BRGHTUP_MASK |
> +					TP_ACPI_HKEY_BRGHTDWN_MASK;
> +
>  	hotkey_keycode_map = kmemdup(&tpacpi_keymaps[keymap_id],
>  			TPACPI_HOTKEY_MAP_SIZE,	GFP_KERNEL);
>  	if (!hotkey_keycode_map) {
> @@ -3560,9 +3573,6 @@ static int __init hotkey_init(struct 
> ibm_init_struct *iibm)
>  		if (hotkey_keycode_map[i] != KEY_RESERVED) {
>  			input_set_capability(tpacpi_inputdev, EV_KEY,
>  						hotkey_keycode_map[i]);
> -		} else {
> -			if (i < sizeof(hotkey_reserved_mask)*8)
> -				hotkey_reserved_mask |= 1 << i;

Just to check my understanding here - does this change mean that the keys marked as KEY_RESERVED in the lenovo map won't make it into the mask?

e.g the ones in this block:
                KEY_RESERVED,        /* Mute held, 0x103 */
                KEY_BRIGHTNESS_MIN,  /* Backlight off */
                KEY_RESERVED,        /* Clipping tool */
                KEY_RESERVED,        /* Cloud */
                KEY_RESERVED,
                KEY_VOICECOMMAND,    /* Voice */
                KEY_RESERVED,
                KEY_RESERVED,        /* Gestures */
                KEY_RESERVED,
                KEY_RESERVED,
                KEY_RESERVED,
                KEY_CONFIG,          /* Settings */
                KEY_RESERVED,        /* New tab */
                KEY_REFRESH,         /* Reload */
                KEY_BACK,            /* Back */
                KEY_RESERVED,        /* Microphone down */
                KEY_RESERVED,        /* Microphone up */
                KEY_RESERVED,        /* Microphone cancellation */
                KEY_RESERVED,        /* Camera mode */
                KEY_RESERVED,        /* Rotate display, 0x116 */

I'm not sure what the effect will be and I don't have the 2014 X1 Carbon (I assume it's the G1) available to test with unfortunately.

Just wanted to be sure we weren't breaking something on older platforms.

>  		}
>  	}
> 
> @@ -3587,9 +3597,8 @@ static int __init hotkey_init(struct 
> ibm_init_struct *iibm)
>  		/* Disable brightness up/down on Lenovo thinkpads when
>  		 * ACPI is handling them, otherwise it is plain impossible
>  		 * for userspace to do something even remotely sane */
> -		hotkey_reserved_mask |=
> -			(1 << TP_ACPI_HOTKEYSCAN_FNHOME)
> -			| (1 << TP_ACPI_HOTKEYSCAN_FNEND);
> +		hotkey_reserved_mask |= TP_ACPI_HKEY_BRGHTUP_MASK |
> +					TP_ACPI_HKEY_BRGHTDWN_MASK;
>  		hotkey_unmap(TP_ACPI_HOTKEYSCAN_FNHOME);
>  		hotkey_unmap(TP_ACPI_HOTKEYSCAN_FNEND);
>  	}
> -- 
> 2.44.0


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
