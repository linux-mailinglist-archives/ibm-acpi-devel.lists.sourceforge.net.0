Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D61AE8AD4D3
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 22 Apr 2024 21:27:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1ryzJd-0002ar-M1;
	Mon, 22 Apr 2024 19:27:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1ryzJc-0002aa-ON
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 22 Apr 2024 19:27:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=epFoKf6p/aCRzPAG8G6J2M3Im3XKhBimZGrp8d8YQt0=; b=KBPFXzbsiof4mvldyczolxqaM9
 lGpYIo0annIPZPJ3jEh+Ulq6ERiiMjz54pmccr6xkRDedX7hNTtX8FL0atMN1s2104QkLr9AuJc16
 u/ZQElTSn4OyYXP86iosuYQQZ8IrSmwTDoq6A1Wms//LL5d16oMjBxG6Cj+LXeC9MG6Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=epFoKf6p/aCRzPAG8G6J2M3Im3XKhBimZGrp8d8YQt0=; b=eE1GqRyLTgYjGuC2Ld5cmAC60m
 FbcZNmQnAtgOK/664owFpkWYUWegh096ymzcMan7pMtIZ2bWtHSJA9ZLh3P1UEvx2qcJG4Aft5Lxa
 uryMKWyQfJaTtrmYNe9irrtHaa9Wk66ilYqbfS8ICC7yZu4F8qw2aFMc84Wfh+4kA8Z0=;
Received: from fhigh4-smtp.messagingengine.com ([103.168.172.155])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ryzJb-0003te-04 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 22 Apr 2024 19:27:01 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id C14FA1140162;
 Mon, 22 Apr 2024 15:26:53 -0400 (EDT)
Received: from imap52 ([10.202.2.102])
 by compute3.internal (MEProxy); Mon, 22 Apr 2024 15:26:53 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to; s=fm1; t=1713814013; x=1713900413; bh=epFoKf6p/a
 CRzPAG8G6J2M3Im3XKhBimZGrp8d8YQt0=; b=qx43R/do1L8z26Z4oFdgJrjaNR
 gQRk1j+vvr0LjUXYCfDy1z/xDc+PS7P/5UaVncUUrOvM6qJmObEHfaltP01vMn5Y
 yCCrV+2GtL48sedCmYZ0n9vfZOTaf5jXmvEfEkOEEPPdwYlTVOTC/VikcIMp4DHq
 lV2W/C3E21YB1rT9QwycDRVn3aXEfmuE7ctJ4x5+X6eJQ1qalVtL7RrWRxqgIAkF
 i3uGtUwQ3Mv1O7QMPURUFYEcwuVsqyaHngoOvcwGXiVwta2kdp4p/JcSWRNEDDBx
 CsPE3vCHG0W039csd6YATxuB6lKHAWk4xCgobB69fpo3eytkedNy5k9D0qog==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1713814013; x=1713900413; bh=epFoKf6p/aCRzPAG8G6J2M3Im3XK
 hBimZGrp8d8YQt0=; b=bfMkzJ6pVkZbZOrGVN79z7eV6QTaMJbq+0NPuktyMD1L
 51Qb2EjwBRpjdSdLZ8cKgtSUxYC2b2ekdZHSvtDCdiOdM5Pd+WP6x5Zag3PChQy9
 xGnM9FZKOEMnViz/eRJzgdpK8O8LaVnz/6T/SdPf8P6SBabEE5lHOGhUGLncILxA
 5HoMd5XnqlXvbRGAVQcpuAfJym1UGfa7DRAfnnivX8tRbI9sPl6JeCEKCVWUExrM
 1QGFXltVFu52QnC/YbdW4HayHlB5tKUXf74YJEFFqDVdVL23uoS9tkjtN7aL9b7X
 UnORfbl5UoUArG074ChuEY8uozwp6+CS8Xy1XN18Rg==
X-ME-Sender: <xms:_LkmZizQM98d5bZR0hX5eFbLhA6YogybAwPKkmonZ09WujMeJrMXkg>
 <xme:_LkmZuRGne7i0rSnqk1SP0sUBJ6X8ZLZH8Bqk0fDC4M_yYBIyyaMopYHnwSLVu23n
 z5ZX5s9edVbfEUnil8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudekledgudefkecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefofgggkfgjfhffhffvvefutgesthdtredtreertdenucfhrhhomhepfdfo
 rghrkhcurfgvrghrshhonhdfuceomhhpvggrrhhsohhnqdhlvghnohhvohesshhquhgvsg
 gsrdgtrgeqnecuggftrfgrthhtvghrnhepieeufeejieevteduvdekteefledtveffvedu
 hefffeejudefvdeijeegudegkefhnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrg
 hmpehmrghilhhfrhhomhepmhhpvggrrhhsohhnqdhlvghnohhvohesshhquhgvsggsrdgt
 rg
X-ME-Proxy: <xmx:_LkmZkVfOPB79Ch4Ra-fSIESQAc05y6_IXrA0VC4ku9lV9ucbauoUA>
 <xmx:_LkmZoj6F9woZfJvfdW5KFsng6Kdn5uf0f6qdyiKTe3Wyw2cwaSwWQ>
 <xmx:_LkmZkCg72L_GKqvA5FY88TkPvU8q-jBBMtHxpdQ6R2Pj4HosDZP4A>
 <xmx:_LkmZpJX5yX3nq28cMkfkwn0BY-ZyZyLKpWPm8zyqRI4CvVtMu2AbQ>
 <xmx:_bkmZiBSNmITWf7deqC2IZ7fr9zlIjirYCo7bkKgdqdmJLkurts4GGK0>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id C94E7C60099; Mon, 22 Apr 2024 15:26:52 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.11.0-alpha0-386-g4cb8e397f9-fm-20240415.001-g4cb8e397
MIME-Version: 1.0
Message-Id: <3b8a783f-eeaf-4f30-8a12-57c14f51bfc5@app.fastmail.com>
In-Reply-To: <20240421154520.37089-9-hdegoede@redhat.com>
References: <20240421154520.37089-1-hdegoede@redhat.com>
 <20240421154520.37089-9-hdegoede@redhat.com>
Date: Mon, 22 Apr 2024 15:27:42 -0400
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
 Content preview:  Hi Hans, On Sun, Apr 21, 2024, at 11:45 AM, Hans de Goede
 wrote: > Factor out the adaptive kbd non hotkey event handling into >
 adaptive_keyboard_change_row()
 and adaptive_keyboard_s_quickview_row() > helpers [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [103.168.172.155 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1ryzJb-0003te-04
Subject: Re: [ibm-acpi-devel] [PATCH 08/24] platform/x86: thinkpad_acpi:
 Move adaptive kbd event handling to tpacpi_driver_event()
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

On Sun, Apr 21, 2024, at 11:45 AM, Hans de Goede wrote:
> Factor out the adaptive kbd non hotkey event handling into
> adaptive_keyboard_change_row() and adaptive_keyboard_s_quickview_row()
> helpers and move the handling of TP_HKEY_EV_DFR_CHANGE_ROW and
> TP_HKEY_EV_DFR_S_QUICKVIEW_ROW to tpacpi_driver_event().
>
> This groups all the handling of hotkey events which do not emit
> a key press event together in tpacpi_driver_event().
>
> This is a preparation patch for moving to sparse-keymaps.
>
> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
> ---
>  drivers/platform/x86/thinkpad_acpi.c | 85 +++++++++++++++-------------
>  1 file changed, 45 insertions(+), 40 deletions(-)
>
> diff --git a/drivers/platform/x86/thinkpad_acpi.c 
> b/drivers/platform/x86/thinkpad_acpi.c
> index 0bbc462d604c..e8d30f4af126 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -3677,51 +3677,50 @@ static int adaptive_keyboard_get_next_mode(int 
> mode)
>  	return adaptive_keyboard_modes[i];
>  }
> 
> +static void adaptive_keyboard_change_row(void)
> +{
> +	int mode;
> +
> +	if (adaptive_keyboard_mode_is_saved) {
> +		mode = adaptive_keyboard_prev_mode;
> +		adaptive_keyboard_mode_is_saved = false;
> +	} else {
> +		mode = adaptive_keyboard_get_mode();
> +		if (mode < 0)
> +			return;
> +		mode = adaptive_keyboard_get_next_mode(mode);
> +	}
> +
> +	adaptive_keyboard_set_mode(mode);
> +}
> +
> +static void adaptive_keyboard_s_quickview_row(void)
> +{
> +	int mode = adaptive_keyboard_get_mode();
> +
> +	if (mode < 0)
> +		return;
> +
> +	adaptive_keyboard_prev_mode = mode;
> +	adaptive_keyboard_mode_is_saved = true;
> +
> +	adaptive_keyboard_set_mode(FUNCTION_MODE);
> +}
> +
>  static bool adaptive_keyboard_hotkey_notify_hotkey(const u32 hkey)
>  {
> -	int current_mode = 0;
> -	int new_mode = 0;
> -
> -	switch (hkey) {
> -	case TP_HKEY_EV_DFR_CHANGE_ROW:
> -		if (adaptive_keyboard_mode_is_saved) {
> -			new_mode = adaptive_keyboard_prev_mode;
> -			adaptive_keyboard_mode_is_saved = false;
> -		} else {
> -			current_mode = adaptive_keyboard_get_mode();
> -			if (current_mode < 0)
> -				return false;
> -			new_mode = adaptive_keyboard_get_next_mode(
> -					current_mode);
> -		}
> -
> -		if (adaptive_keyboard_set_mode(new_mode) < 0)
> -			return false;
> -
> +	if (tpacpi_driver_event(hkey))
>  		return true;
> 
> -	case TP_HKEY_EV_DFR_S_QUICKVIEW_ROW:
> -		current_mode = adaptive_keyboard_get_mode();
> -		if (current_mode < 0)
> -			return false;
> -
> -		adaptive_keyboard_prev_mode = current_mode;
> -		adaptive_keyboard_mode_is_saved = true;
> -
> -		if (adaptive_keyboard_set_mode (FUNCTION_MODE) < 0)
> -			return false;
> -		return true;
> -
> -	default:
> -		if (hkey < TP_HKEY_EV_ADAPTIVE_KEY_START ||
> -		    hkey > TP_HKEY_EV_ADAPTIVE_KEY_END) {
> -			pr_info("Unhandled adaptive keyboard key: 0x%x\n", hkey);
> -			return false;
> -		}
> -		tpacpi_input_send_key(hkey - TP_HKEY_EV_ADAPTIVE_KEY_START +
> -				      TP_ACPI_HOTKEYSCAN_ADAPTIVE_START);
> -		return true;
> +	if (hkey < TP_HKEY_EV_ADAPTIVE_KEY_START ||
> +	    hkey > TP_HKEY_EV_ADAPTIVE_KEY_END) {
> +		pr_info("Unhandled adaptive keyboard key: 0x%x\n", hkey);
> +		return false;
>  	}
> +
> +	tpacpi_input_send_key(hkey - TP_HKEY_EV_ADAPTIVE_KEY_START +
> +			      TP_ACPI_HOTKEYSCAN_ADAPTIVE_START);
> +	return true;
>  }
> 
>  static bool hotkey_notify_extended_hotkey(const u32 hkey)
> @@ -11117,6 +11116,12 @@ static bool tpacpi_driver_event(const unsigned 
> int hkey_event)
>  		}
>  		/* Key events are suppressed by default hotkey_user_mask */
>  		return false;
> +	case TP_HKEY_EV_DFR_CHANGE_ROW:
> +		adaptive_keyboard_change_row();
> +		return true;
> +	case TP_HKEY_EV_DFR_S_QUICKVIEW_ROW:
> +		adaptive_keyboard_s_quickview_row();

Was there a reason to get rid of error handling that was previously done with adaptive_keyboard_set_mode and is now not used here?

> +		return true;
>  	case TP_HKEY_EV_THM_CSM_COMPLETED:
>  		lapsensor_refresh();
>  		/* If we are already accessing DYTC then skip dytc update */
> -- 
> 2.44.0

Thanks
Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
