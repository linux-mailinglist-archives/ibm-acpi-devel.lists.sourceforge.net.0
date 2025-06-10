Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 493E5AD2B52
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 10 Jun 2025 03:27:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:References:In-Reply-To:Message-Id:To:From:Date:MIME-Version:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mjSl6l6v+lOp/r+3fl2PC7NfIKcO3QLb7AYXCUnJtNA=; b=jXctIEG9pm/0tOrxRPCdOB2XX9
	ssfXlKz1ROPbO120zVexJexuwOzsGrXgxVhrsKN9Pi3/Xog+g9uvujKP7cRO2DSzoPvR1vJyVytPL
	KTK2uM6twHwK0lyHxXkS+8+G4waC4/KU1t4jXE/fVasOrbQIcdiXAnflPmT8Zt+YHagI=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uOnm0-0007dP-K7;
	Tue, 10 Jun 2025 01:27:32 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1uOnly-0007dI-TZ
 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 10 Jun 2025 01:27:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lU8nvWLBcjap5Wuv+m6wHzcFE5BeUJSBjblgsXqqq00=; b=bYWf5hLIZ7lekYqv8mxriZgxjW
 sw/0yax5z3HI3+D7TlsrZHKDm114CQkYIOvdn93g515ohFMTpuUHdw7PyYbkIcPlYciplPrgrzOTr
 a0ZAv8PpR2Xyd6ZO1R+TGGfjkXyef8DOaewmBkzipDy6GOnjrUrROwR7OXoTmmE5w3KI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lU8nvWLBcjap5Wuv+m6wHzcFE5BeUJSBjblgsXqqq00=; b=JpEFhaLqGHRIWm5GECyVi3Twoz
 tuiBzLki1yyoEI0GYWWXTOfUQk3xUY6r+KVzul4oM6vax7IW8b+b0UOzIGvQBQrcoag6cn2/5B+2k
 JUPL1JmnAg+hXf/M00jP+lipz3G31kB5WIEQDXHbbyqpmYjaL2RtZvYXE+iWgViCDNhE=;
Received: from fhigh-a7-smtp.messagingengine.com ([103.168.172.158])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uOnly-0000c5-9G for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 10 Jun 2025 01:27:30 +0000
Received: from phl-compute-12.internal (phl-compute-12.phl.internal
 [10.202.2.52])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 8D0D7114026D;
 Mon,  9 Jun 2025 21:27:19 -0400 (EDT)
Received: from phl-imap-08 ([10.202.2.84])
 by phl-compute-12.internal (MEProxy); Mon, 09 Jun 2025 21:27:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm2; t=1749518839;
 x=1749605239; bh=lU8nvWLBcjap5Wuv+m6wHzcFE5BeUJSBjblgsXqqq00=; b=
 PpSBxSUisBidWcuqEbAZZpZE4tsuxGDlcoYfgFc5AsoMNDC+yKsgIUn6KVHRzh3O
 0q5MUdtIIgJPgLYa+j+bU0t7gLLJRdFK9WksOoTqaThMKpGNLEsoMnG8xyCxmlfu
 OFbHPkuct882I8+S3UKpY55taP2l/xDqn3+LWuHSRKYEZu92adfObM3MEe+tAQ03
 z167lsY9fYVpAjItO2jfFhBDH7qrM77w08ca9+/TcWq32JtRqWBzUYdXvdMd//KD
 ySxMc2xF9aEit7CvE0h8IGI8/KJdbqhNqG4OS2bja85IhcYBidUhVhTPf4Gl1Lqe
 0AKm/pIvOBhqXQjlh0UY6w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1749518839; x=
 1749605239; bh=lU8nvWLBcjap5Wuv+m6wHzcFE5BeUJSBjblgsXqqq00=; b=m
 0m3HEhrWcOrap9Qbh9dIoSTPvmaPrdSn89gkWt18MuviMsYiQRTHUL2RTtVwdYYr
 k5fNZwSHSey68wgPzCAa/fKwwYQCUf85TbuJ3v9zMy6GwlDlNWcMCx2dq1ZA7jTa
 dbUXATKrVZUehKKGQCAkqP+u8RpaX3BNzs6E3972mFA5KN8XPnOaEmxpdEK7WhM+
 /v/mrx/rvQlDlaG1fvbFPKaw2eXZx2nFNfSXbQCZhUhwoH9z1Y652xl/5JFt/9kt
 rtQrDJ8P4APDQFIx+74wnwbMBt24Guh53rVOsijj5qSB5WQluVVYumJpA5KyNUGV
 9KB1vIR7z7o2uz/+KbEbQ==
X-ME-Sender: <xms:9olHaAKX1uFh-W2JLPV6iZzg27Nov5PvvCbCCI0nRNas8Z8pv5rWwQ>
 <xme:9olHaAI02C2-Z3-z_7UOKi4-lrUZo3tHjCQn5VOJzSJHvT8F8nGUQPgl07gVjDlAl
 -vGN3M1zxDNcQK1dg8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddugddutddtjecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
 uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivg
 hnthhsucdlqddutddtmdenucfjughrpefoggffhffvvefkjghfufgtgfesthejredtredt
 tdenucfhrhhomhepfdforghrkhcurfgvrghrshhonhdfuceomhhpvggrrhhsohhnqdhlvg
 hnohhvohesshhquhgvsggsrdgtrgeqnecuggftrfgrthhtvghrnheptdffvefgtefhveet
 uddvfeelveektdduvdelgfehgfeikeffjeetjeevffektdfhnecuffhomhgrihhnpehkvg
 hrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggrpdhnsggprh
 gtphhtthhopeduvddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepihhkvghprghn
 hhgtsehgmhgrihhlrdgtohhmpdhrtghpthhtohepfigprghrmhhinhesghhmgidruggvpd
 hrtghpthhtohephhhmhheshhhmhhdrvghnghdrsghrpdhrtghpthhtoheplhhkphesihhn
 thgvlhdrtghomhdprhgtphhtthhopegrnhgurhhihidrshhhvghvtghhvghnkhhosehlih
 hnuhigrdhinhhtvghlrdgtohhmpdhrtghpthhtohepihhlphhordhjrghrvhhinhgvnhes
 lhhinhhugidrihhnthgvlhdrtghomhdprhgtphhtthhopehisghmqdgrtghpihdquggvvh
 gvlheslhhishhtshdrshhouhhrtggvfhhorhhgvgdrnhgvthdprhgtphhtthhopegtohhr
 sggvtheslhifnhdrnhgvthdprhgtphhtthhopehhuggvghhovgguvgesrhgvughhrghtrd
 gtohhm
X-ME-Proxy: <xmx:9olHaAtJAGm73zapfHZ1rJNwHJTenFu-ywA75RGz1MTDcUWO1YkqzQ>
 <xmx:9olHaNZnxht25yuYzQPX88yHYbv7CvZjsXts0c4nbvk71NZ21Oq5aA>
 <xmx:9olHaHY-UJ7rmXhxSRKvKPUsLPXVE7pvCvVaZwsrx7EanPl7O8iHdA>
 <xmx:9olHaJA49-mi2Ft4xU2RTqmkX1B00UH1GknOrljJqZr9xYzL5Kr2Wg>
 <xmx:94lHaM7f0N9FRe_JvxmxNth6XUnV3FzkytPDefQrRNwxQZxarXK4Fd0D>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id B54F62CE0063; Mon,  9 Jun 2025 21:27:18 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: T95b0e86a2866f664
Date: Mon, 09 Jun 2025 21:26:58 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Andy Shevchenko" <andriy.shevchenko@linux.intel.com>
Message-Id: <7e0d5241-e82a-42e3-b6ac-ffe9ea42a897@app.fastmail.com>
In-Reply-To: <aEdBy6m_6aQr8l41@smile.fi.intel.com>
References: <mpearson-lenovo@squebb.ca>
 <20250609122736.3373471-1-mpearson-lenovo@squebb.ca>
 <20250609122736.3373471-2-mpearson-lenovo@squebb.ca>
 <aEdBy6m_6aQr8l41@smile.fi.intel.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Andy On Mon, Jun 9, 2025, at 4:19 PM,
 Andy Shevchenko wrote:
 > On Mon, Jun 09, 2025 at 08:27:25AM -0400, Mark Pearson wrote: >> Fix issues
 reported by kernel test robot. >> - Require DMI for think-lmi. >> [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
X-Headers-End: 1uOnly-0000c5-9G
Subject: Re: [ibm-acpi-devel] [PATCH v3 2/2] platform/x86: thinklmi:
 improved DMI handling
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
Cc: Armin Wolf <W_Armin@gmx.de>, kernel test robot <lkp@intel.com>,
 Jonathan Corbet <corbet@lwn.net>, ikepanhc@gmail.com,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 ibm-acpi-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Andy

On Mon, Jun 9, 2025, at 4:19 PM, Andy Shevchenko wrote:
> On Mon, Jun 09, 2025 at 08:27:25AM -0400, Mark Pearson wrote:
>> Fix issues reported by kernel test robot.
>>  - Require DMI for think-lmi.
>>  - Check return from getting serial string
>> 
>> Reported-by: kernel test robot <lkp@intel.com>
>> Closes: https://lore.kernel.org/oe-kbuild-all/202506062319.F0IpDxF6-lkp@intel.com/
>
>> 
>
> No blank line in tag block.

Oh - I'd not come across that requirement before. I can fix.

>
>> Signed-off-by: Mark Pearson <mpearson-lenovo@squebb.ca>
>
>>  - New patch added to series.
>
> Shouldn't it be the first one in the series? It seems to me that this is the
> fix of the original code as well.

I guess. I'll re-order.

>
> ...
>
>> +++ b/drivers/platform/x86/lenovo/think-lmi.c
>
> My understanding is that you need either Kconfig or changing C file.

Does it matter? I figured both were valid. Adding the DMI to the Kconfig makes sure it's used and checking the return code felt sensible.

If you object I'll go with just the Kconfig but I thought the extra check had value and was related to the reported issue so did it as well. Let me know if you feel strongly about it.

Thanks
Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
