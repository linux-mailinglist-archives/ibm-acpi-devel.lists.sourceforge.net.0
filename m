Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 402DE7D1FBE
	for <lists+ibm-acpi-devel@lfdr.de>; Sat, 21 Oct 2023 23:16:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1quJKE-0004Ek-Vt;
	Sat, 21 Oct 2023 21:16:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1quJKD-0004EY-7t
 for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 21 Oct 2023 21:16:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=i50b4X8nAfPZABtna9BGpqBGkzaOmZqB3f12UN+ORdM=; b=UvOq7hWFZDyT+ieK7nN4+vFBKl
 OtxxrH33zYc+uftHU44zpWC4nlVTMLU+RhX3CEY+T0/Uauj2SluGNIzO9ZT3vWBQ9iSh/Yb1kC/U7
 Brx6bFW1XIJ8WqRiNZVyMErQQzj4Etul8DlYpB3z1v/CM+FolP71xdPO3eKOOOxpnwgc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=i50b4X8nAfPZABtna9BGpqBGkzaOmZqB3f12UN+ORdM=; b=VlV16TmoeoufJ5m5puZbG9rY89
 s2byOW3jotlw0S19GjHMfhmu+01u8hFPcniWrPyqgi8xQSqY1hxTmRHAAFjp9SRQ0qbtt9Rnq9p+N
 XbsD3dxct82mnEu8DSBuAtKZV2KYvAzKjBZncBAfJpkeEy/tGgWF5EliU0GC6ZrjqSpY=;
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1quJK3-005RbR-DS for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 21 Oct 2023 21:15:59 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id 377D93200995;
 Sat, 21 Oct 2023 16:55:59 -0400 (EDT)
Received: from imap52 ([10.202.2.102])
 by compute3.internal (MEProxy); Sat, 21 Oct 2023 16:56:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to; s=fm1; t=1697921758; x=1698008158; bh=i5
 0b4X8nAfPZABtna9BGpqBGkzaOmZqB3f12UN+ORdM=; b=VpK/fqtTPOiRmbbsr+
 vcgd7X/4963eUrqgVoGMsVVaUV5mhCIxBq8tIJYI8zbHQcIgaWEnN15FViO+KQe+
 ASszKBNnZce6eZA1h4lcKiEXSaEZs7zOSgitgM4zTzR3Hmn01Adt2OKmXQ9oYW9o
 d+D3v2H1q7dSXRn2yDUw6fGM7OxWRpmY+VVJ3rZW8F/e4LZ0XeIRUMLkVjS1wPlD
 u4doJjU7OuT2PBJaj1YDLo/7sgmaQUZfCHRWn1Y/HSEvPW3Kflj1vzTTsYfsH8hA
 zWis5gcNdXOvHpFpXPIe8UeMQXF0TDqwsvc1ZszjhzlYkocEP0u2TJO1Xwf876IE
 YMfQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm3; t=1697921758; x=1698008158; bh=i50b4X8nAfPZA
 Btna9BGpqBGkzaOmZqB3f12UN+ORdM=; b=rBasE/89wXAspGcMdRP9ZeBV3Nbea
 C0GMp+7gyoiJFiV727faLmtyHObr9JRcFgrPp8PqFaQks7Yo6GMi2YdhRjRI8cva
 OKut8Zgx6GHbZHb2D5ObyrN/7HntYNSKS/SPY/oPOKfBhAZCRGV7mSHZeQu3Fa8Y
 fd7uDzP5J8TlK1jITQFPpC8l/8p208ncQDZaWmNZj34PByoG29rkB77PIveVxlLk
 PQMst0vrC63w9y31gnXtQS9UgbT1FH0zG3b5uWE7cgds1ygm+BbvRbc+YSMWznWQ
 xOYQ9xoXBKChjv5LBS/BewLEbaCaa/kzGIUaXYzkIeOjugUwMUCmBx5sQ==
X-ME-Sender: <xms:3To0ZZcIAyZExmOaYCVswLJVpzr461COVbSZxwOIU4s5nM8hMteiUA>
 <xme:3To0ZXNuLA6iWSCGf2u2Rl0ohdPEKBVz-nhC7Cb478mbGXEwH38_C284aAYw9ZlSO
 JLnzLCmDovaldtew0g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrkedtgdduhedtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvfevufgtsehttdertderredtnecuhfhrohhmpedfofgr
 rhhkucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssg
 drtggrqeenucggtffrrghtthgvrhhnpeehueeiieefiedutdduffffudevveevteehuedv
 vedtheevgeevkedvkeetueelfeenucffohhmrghinhepkhgvrhhnvghlrdhorhhgpdhgih
 hthhhusgdrtghomhenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggr
X-ME-Proxy: <xmx:3To0ZSixincJXeZiVb7iDKFbuNO9NMI3BYKs-b5wK7CYua2Q-2TunQ>
 <xmx:3To0ZS_K-sbFry1iXiq_zI6zRcfcqDWiFRvij-4uKRDbkPrrth89Dw>
 <xmx:3To0ZVsUBmxEI-8tgQ_KRb7fxtUt4ljwj9EL16EXBdmF3HjC1SOHsA>
 <xmx:3jo0ZZjBr9yZJdRSN-SYXQLl88j0Xw3SvdBbp86KGFP-j_yEz7uXyA>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 65879C6008B; Sat, 21 Oct 2023 16:55:57 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-1048-g9229b632c5-fm-20231019.001-g9229b632
MIME-Version: 1.0
Message-Id: <c0410813-d8cc-4609-92ba-ec41d107e99d@app.fastmail.com>
In-Reply-To: <20231020-strncpy-drivers-platform-x86-thinkpad_acpi-c-v1-1-312f2e33034f@google.com>
References: <20231020-strncpy-drivers-platform-x86-thinkpad_acpi-c-v1-1-312f2e33034f@google.com>
Date: Sat, 21 Oct 2023 16:55:37 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Justin Stitt" <justinstitt@google.com>,
 "Kees Cook" <keescook@chromium.org>,
 "Henrique de Moraes Holschuh" <hmh@hmh.eng.br>,
 "Hans de Goede" <hdegoede@redhat.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 "markgross@kernel.org" <markgross@kernel.org>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Oct 20, 2023, at 1:52 PM,
 Justin Stitt wrote: > strncpy()
 is deprecated for use on NUL-terminated destination strings > [1] and as
 such we should prefer more robust and less ambiguous > interf [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1quJK3-005RbR-DS
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: replace
 deprecated strncpy with memcpy
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
Cc: ibm-acpi-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Fri, Oct 20, 2023, at 1:52 PM, Justin Stitt wrote:
> strncpy() is deprecated for use on NUL-terminated destination strings
> [1] and as such we should prefer more robust and less ambiguous
> interfaces.
>
> We expect ec_fw_string to be NUL-terminated based on its use with format
> strings in thinkpad_acpi.c:
> 11241 | pr_notice("ThinkPad firmware release %s doesn't match the known 
> patterns\n",
> 11242 |     ec_fw_string);
>
> Moreover, NUL-padding is not required since ec_fw_string is explicitly
> zero-initialized:
> 11185 | char ec_fw_string[18] = {0};
>
> When carefully copying bytes from one buffer to another in
> pre-determined blocks (like what's happening here with dmi_data):
>
> |       static void find_new_ec_fwstr(const struct dmi_header *dm, void 
> *private)
> |       {
> |       	char *ec_fw_string = (char *) private;
> |       	const char *dmi_data = (const char *)dm;
> |       	/*
> |       	 * ThinkPad Embedded Controller Program Table on newer models
> |       	 *
> |       	 * Offset |  Name                | Width  | Description
> |       	 * ----------------------------------------------------
> |       	 *  0x00  | Type                 | BYTE   | 0x8C
> |       	 *  0x01  | Length               | BYTE   |
> |       	 *  0x02  | Handle               | WORD   | Varies
> |       	 *  0x04  | Signature            | BYTEx6 | ASCII for "LENOVO"
> |       	 *  0x0A  | OEM struct offset    | BYTE   | 0x0B
> |       	 *  0x0B  | OEM struct number    | BYTE   | 0x07, for this 
> structure
> |       	 *  0x0C  | OEM struct revision  | BYTE   | 0x01, for this 
> format
> |       	 *  0x0D  | ECP version ID       | STR ID |
> |       	 *  0x0E  | ECP release date     | STR ID |
> |       	 */
> |
> |       	/* Return if data structure not match */
> |       	if (dm->type != 140 || dm->length < 0x0F ||
> |       	memcmp(dmi_data + 4, "LENOVO", 6) != 0 ||
> |       	dmi_data[0x0A] != 0x0B || dmi_data[0x0B] != 0x07 ||
> |       	dmi_data[0x0C] != 0x01)
> |       		return;
> |
> |       	/* fwstr is the first 8byte string  */
> |       	strncpy(ec_fw_string, dmi_data + 0x0F, 8);
>
> ... we shouldn't be using a C string api. Let's instead use memcpy() as
> this more properly relays the intended behavior.
>
> Do note that ec_fw_string will still end up being NUL-terminated since
> we are memcpy'ing only 8 bytes into a buffer full of 18 zeroes. There's
> still some trailing NUL-bytes there. To ensure this behavior, let's add
> a BUILD_BUG_ON checking the length leaves space for at least one
> trailing NUL-byte.
>
> Link: 
> https://www.kernel.org/doc/html/latest/process/deprecated.html#strncpy-on-nul-terminated-strings 
> [1]
> Link: https://github.com/KSPP/linux/issues/90
> Cc: Kees Cook <keescook@chromium.org>
> Signed-off-by: Justin Stitt <justinstitt@google.com>
> ---
> Note: build-tested only.
>
> Found with: $ rg "strncpy\("
> ---
>  drivers/platform/x86/thinkpad_acpi.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/platform/x86/thinkpad_acpi.c 
> b/drivers/platform/x86/thinkpad_acpi.c
> index 41584427dc32..bd9e06f5b860 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -11144,6 +11144,8 @@ static char __init tpacpi_parse_fw_id(const 
> char * const s,
>  	return '\0';
>  }
> 
> +#define EC_FW_STRING_LEN 18
> +
>  static void find_new_ec_fwstr(const struct dmi_header *dm, void 
> *private)
>  {
>  	char *ec_fw_string = (char *) private;
> @@ -11172,7 +11174,8 @@ static void find_new_ec_fwstr(const struct 
> dmi_header *dm, void *private)
>  		return;
> 
>  	/* fwstr is the first 8byte string  */
> -	strncpy(ec_fw_string, dmi_data + 0x0F, 8);
> +	BUILD_BUG_ON(EC_FW_STRING_LEN <= 8);
> +	memcpy(ec_fw_string, dmi_data + 0x0F, 8);
>  }
> 
>  /* returns 0 - probe ok, or < 0 - probe error.
> @@ -11182,7 +11185,7 @@ static int __must_check __init get_thinkpad_model_data(
>  						struct thinkpad_id_data *tp)
>  {
>  	const struct dmi_device *dev = NULL;
> -	char ec_fw_string[18] = {0};
> +	char ec_fw_string[EC_FW_STRING_LEN] = {0};
>  	char const *s;
>  	char t;
> 
>
> ---
> base-commit: dab3e01664eaddae965699f1fec776609db0ea9d
> change-id: 20231019-strncpy-drivers-platform-x86-thinkpad_acpi-c-7a733d087ef7
>
> Best regards,
> --
> Justin Stitt <justinstitt@google.com>

Looks good to me.
Reviewed-by: Mark Pearson <mpearson-lenovo@squebb.ca>


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
