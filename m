Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1727A4AB0
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 18 Sep 2023 15:42:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1qiEVU-0003nL-Os;
	Mon, 18 Sep 2023 13:41:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1qiEVS-0003nF-Qs
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 18 Sep 2023 13:41:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4TTxQOCDOWFA0p2jwGlB97ue19qCIKfMgOp8dZqLo94=; b=aOuqBUeaIGkxuMrlYhvH7lNWuy
 73GWA81rnLfR5hpcZfhNrwi2tmc63jDjRccU0nvuuNFaj+KlXx8NwQkzxOYBmFwP3bFUz+Yow1Ss2
 nMTbV/GZ/TvIlQrQpcKLaBD1Q+cvVWTxfdF7Qqlebx4fT1ARJ6qVnPethD+c6eZBMa28=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4TTxQOCDOWFA0p2jwGlB97ue19qCIKfMgOp8dZqLo94=; b=Mitrzzz64Sja1cuf0q7Bcnpsyv
 aNNxvl8mWO+cvC97lZLMM/SvF9A+n1piVpY6Z8un0mL6iqMdmp/G5iMAk1VghUK6r3ToCMBGDDT2i
 92yRxYjvDshxtyx9TaiPRwJueQb58kOHLg55qfN1L8COUBO4G/wMbxt6okcUpsSuEYaI=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qiEVO-00Cvgu-Gg for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 18 Sep 2023 13:41:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1695044492;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4TTxQOCDOWFA0p2jwGlB97ue19qCIKfMgOp8dZqLo94=;
 b=Uk9GkvEdD31p7/toJxFM2tX3u5DBNLzJKCryjmG9L5o6JvMbwVdTtA6cB/FGoakSZCnZE/
 AT9J+iTsMc/MuQ5uhG6hz5HBY4t7v8g/LN98gz9od6HT13hOiHkr0YVglN5rU3XQUxVKoU
 LaHhvBP/HC78QBlsqQyA5J2dDiUepv4=
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com
 [209.85.208.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-582-tZ0gDZznOIyRoBIVBkGWsQ-1; Mon, 18 Sep 2023 09:41:31 -0400
X-MC-Unique: tZ0gDZznOIyRoBIVBkGWsQ-1
Received: by mail-lj1-f198.google.com with SMTP id
 38308e7fff4ca-2bfdcba1144so36088831fa.1
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 18 Sep 2023 06:41:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695044489; x=1695649289;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=4TTxQOCDOWFA0p2jwGlB97ue19qCIKfMgOp8dZqLo94=;
 b=QwrxcfxicgaaFnvFSyIeLiWKD04Kvgfd2XTjjUowsRtUeSM+tYs5B2xpmP6J80TbFs
 mpa4gATSgKc8+mXSfS7SpEZqajsggMQzCETn87X4QrT5HC8nopEi65WXCEF8bdQTML3b
 o7hg5eZXCf3h+x+Frn5oENaL28M+/nDTvEG36Zl9tJQutZ8mUADmVJdyeGGGg0jvTWX6
 TZ7KVzOO8KujLZ+I7nfSba7hFe2/XrYVtBrVBPz9nrlYWo9r3Ao82WCPwrd75YjfJOrH
 k158UXI+YRbCuU1amd8uwgNEqloCa0PF02mGuSjvfcNe6JybTNsHRVpFPzWv/jbplrCk
 lf/w==
X-Gm-Message-State: AOJu0Yy2M1G3p+1sPI5yS7DggRwZCvptW+oGqaUY428c7sItYcL0CiKu
 v6GWFU5iOzwBnmU0yy2BuT71CO4X8gXljKMHUg+59wNfP4CPGKMF+jFnm/k0NwCJIblQILfRvUI
 8yZADyQ+0Zh5ralbApiY++k6RIPm/6+r77kKSAkJVQr4=
X-Received: by 2002:a2e:854e:0:b0:2bd:bc9:30aa with SMTP id
 u14-20020a2e854e000000b002bd0bc930aamr7755915ljj.23.1695044489207; 
 Mon, 18 Sep 2023 06:41:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEgqBmH2hwom+Lx5lEzqnk0cF22EnYtz2nqSN55UwRLMM+A4J8u3a+gcEep0pBcMiR7e0h5Gw==
X-Received: by 2002:a2e:854e:0:b0:2bd:bc9:30aa with SMTP id
 u14-20020a2e854e000000b002bd0bc930aamr7755897ljj.23.1695044488880; 
 Mon, 18 Sep 2023 06:41:28 -0700 (PDT)
Received: from [10.40.98.142] ([78.108.130.194])
 by smtp.gmail.com with ESMTPSA id
 s7-20020a17090699c700b009adcb6c0f0dsm5133635ejn.38.2023.09.18.06.41.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 18 Sep 2023 06:41:26 -0700 (PDT)
Message-ID: <6a4a9acf-aa1d-dc73-b171-76654e1b9d47@redhat.com>
Date: Mon, 18 Sep 2023 15:41:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: =?UTF-8?Q?Ilpo_J=c3=a4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Fernando Eckhardt Valle <fevalle@ipt.br>
References: <20230915123136.4286-1-fevalle@ipt.br>
 <97ac516a-5d9f-f58d-2313-d7d3453f58cb@linux.intel.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <97ac516a-5d9f-f58d-2313-d7d3453f58cb@linux.intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -1.7 (-)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, On 9/15/23 18:18, Ilpo Järvinen wrote: > On Fri, 15 Sep
    2023, Fernando Eckhardt Valle wrote: <snip> 
 
 Content analysis details:   (-1.7 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [170.10.133.124 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [170.10.133.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -1.5 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qiEVO-00Cvgu-Gg
Subject: Re: [ibm-acpi-devel] [PATCH v2] platform/x86: thinkpad_acpi: sysfs
 interface to auxmac
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
Cc: linux-doc@vger.kernel.org, corbet@lwn.net,
 LKML <linux-kernel@vger.kernel.org>, platform-driver-x86@vger.kernel.org,
 markgross@kernel.org, ibm-acpi-devel@lists.sourceforge.net, hmh@hmh.eng.br,
 Mark Pearson <mpearson-lenovo@squebb.ca>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

SGksCgpPbiA5LzE1LzIzIDE4OjE4LCBJbHBvIErDpHJ2aW5lbiB3cm90ZToKPiBPbiBGcmksIDE1
IFNlcCAyMDIzLCBGZXJuYW5kbyBFY2toYXJkdCBWYWxsZSB3cm90ZToKCjxzbmlwPgoKPj4gKwkJ
Z290byBhdXhtYWNpbnZhbGlkOwo+PiArCX0KPj4gKwo+PiArCWlmIChzdHJuY21wKG9iai0+c3Ry
aW5nLnBvaW50ZXIgKyAweDgsICIjIiwgMSkgIT0gMCB8fAo+PiArCSAgICBzdHJuY21wKG9iai0+
c3RyaW5nLnBvaW50ZXIgKyAweDE1LCAiIyIsIDEpICE9IDApIHsKPiAKPiBXaHkgdXNlIHN0cm5j
bXAgd2l0aCAoLi4uLCAxKT8gVGhlc2Ugb2Zmc2V0cyBzaG91bGQgZGVmaW5lcyBhYm92ZSBhbmQg
bm90IAo+IHVzZSBsaXRlcmFscy4KClJpZ2h0LCBnb29kIHBvaW50LgoKVG8gYmUgZXh0cmEgY2xl
YXIgaGVyZSwgdGhpcyBzaG91bGQgYmUgcmVwbGFjZWQgYnkgIT0gJyMnIHN0YXRlbWVudHMsIGUu
Zy46CgoJaWYgKG9iai0+c3RyaW5nLnBvaW50ZXJbQVVYTUFDX0JFR0lOX01BUktFUl0gIT0gJyMn
IHx8CgkgICAgb2JqLT5zdHJpbmcucG9pbnRlcltBVVhNQUNfRU5EX01BUktFUl0gIT0gJyMnKSB7
CgkJLi4uCgpSZWdhcmRzLAoKSGFucwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwppYm0tYWNwaS1kZXZlbCBtYWlsaW5nIGxpc3QKaWJtLWFjcGktZGV2
ZWxAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xp
c3RzL2xpc3RpbmZvL2libS1hY3BpLWRldmVsCg==
