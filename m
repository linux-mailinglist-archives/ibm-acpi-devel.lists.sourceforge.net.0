Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BE71750D0D
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 12 Jul 2023 17:50:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1qJc5q-0007aR-Fa;
	Wed, 12 Jul 2023 15:49:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1qJc5p-0007aL-Sk
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 12 Jul 2023 15:49:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bkK/lE9xVUoE2L0I2FE1bsKN4N40S5rUCyjcnz9lCPs=; b=TPyYh1VQx4qnLu2Gw0HapfwNrA
 xgDg1lptaWmT7GqcrNRYw2g2Fyn+deokpLXxYh48U4UDhdtlUnkfxLdI0hKGNh24BhAbjtUwmTV3C
 MXht6i0+oAxsumTsKtYgnTBVnylLbBprd07JGbr4FlJPFwHvPyVuM2ZW4Sa9N3XLAv94=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bkK/lE9xVUoE2L0I2FE1bsKN4N40S5rUCyjcnz9lCPs=; b=EU6vAQDG+7lzFUDu65mLGs5dwr
 fJXfjlRIYyz3X1D5gEep4k3KVZEaJ0FS63IoG6HZwFV27wB7liz0ff3wvNVymOtQ0Xg/FlI1A7GWp
 Vj6U3KU51F0VCZZlaAH/cmViagrUgO7kHb9svuquuiCI3Hboou5t5fUg/6jh5ewjimm8=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qJc5j-005dth-OI for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 12 Jul 2023 15:49:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1689176957;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bkK/lE9xVUoE2L0I2FE1bsKN4N40S5rUCyjcnz9lCPs=;
 b=JMxXOq08+wheDLN69i7pavsjZzgwWwuqN9cHY2SJZ84oHCzu7rf/dT6eAM7N5Dp2vAsP0b
 PxwLm4DG/l88fQodkFdccSZ/93DDUz6sU5/WMckzLlFq5pPXuE0stujVf1FNr61FJUDsDF
 l7z0KWHQ2fmW5QwF2BGwofDwOyQ4cWk=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-349-d3fOgKT1MGeHqnElvHwWZQ-1; Wed, 12 Jul 2023 11:49:15 -0400
X-MC-Unique: d3fOgKT1MGeHqnElvHwWZQ-1
Received: by mail-wr1-f70.google.com with SMTP id
 ffacd0b85a97d-30e3ee8a42eso4162737f8f.1
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Wed, 12 Jul 2023 08:49:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689176954; x=1691768954;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=bkK/lE9xVUoE2L0I2FE1bsKN4N40S5rUCyjcnz9lCPs=;
 b=JbLwxGGg4CODF7R4j40HsIV8F4H/VSj9/yTZJDYFoc1GLMWAAtQSS9fhJ1q1m1Mr5Y
 WYQuanILO4NcFg0mA/j5Zg/SegT9DsLP1GJhWIAEpu43yV+tbzX3j3MfKBuFscemDKgE
 v53VaGwLYiaHrtrgXF+zQnHMceNyXbWU4kxLyBwvkcNukpACR22t1iKkWVxoEP5ZBVxh
 ub6TctsajTyWmAhPRcambtMKyAEW5cBIBB/ExeLIvEe/mVODzmGS6DLE8uK9VoOThZ0l
 cNWYAnqUcwEOthlzt9rdc+TJnGQ+BfNH42JzXSckrin8W06FPj4T4TmC9GUPEjopOD0J
 5ndw==
X-Gm-Message-State: ABy/qLbnIbkECvNQxpVPnRehhBaTg51vOqN0h53NtM9GLsXg/NCmGRE6
 gTOxKxOkVFncBddVVJVy42NCHO/BVPvJ99u0Ou3wOeM1tWp74mdR97K/cuGvnkSS29/A/LNiAI3
 tnJ4g+w8jYvPQKGwWv9y7zWKnVv1PX1qi7E4=
X-Received: by 2002:a5d:4603:0:b0:315:ad1a:5abc with SMTP id
 t3-20020a5d4603000000b00315ad1a5abcmr2505856wrq.5.1689176954067; 
 Wed, 12 Jul 2023 08:49:14 -0700 (PDT)
X-Google-Smtp-Source: APBJJlHfZBXzs0WOpOSK4uyREoe1iPHFVtvPrhE48RQBaY4V+m6OOpZMax9BclCH2P9YghADvfsQjA==
X-Received: by 2002:a5d:4603:0:b0:315:ad1a:5abc with SMTP id
 t3-20020a5d4603000000b00315ad1a5abcmr2505833wrq.5.1689176953749; 
 Wed, 12 Jul 2023 08:49:13 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 u24-20020a170906069800b009920f18a5f0sm2732141ejb.185.2023.07.12.08.49.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 12 Jul 2023 08:49:13 -0700 (PDT)
Message-ID: <af2be377-ff04-3b00-62c7-a1ff53dddd16@redhat.com>
Date: Wed, 12 Jul 2023 17:49:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
To: =?UTF-8?Q?Thomas_Wei=c3=9fschuh?= <linux@weissschuh.net>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Mark Gross <markgross@kernel.org>
References: <20230704-thinkpad_acpi-lockdep-v1-0-60129548a738@weissschuh.net>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20230704-thinkpad_acpi-lockdep-v1-0-60129548a738@weissschuh.net>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, On 7/4/23 23:03, Thomas Weißschuh wrote: > Validate locking
    requirements in thinkpad_acpi through lockdep. > > Signed-off-by: Thomas
   Weißschuh <linux@weissschuh.net> Thank you for your patch-series, I've applied
    the series to my review-hans branch: https://git.kernel.org/pub/scm/linux/kernel/git/pdx86/platform-drivers-x86.git/log/?h=review-hans
    
 
 Content analysis details:   (-0.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [170.10.129.124 listed in list.dnswl.org]
  0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
                             [170.10.129.124 listed in wl.mailspike.net]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.1 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qJc5j-005dth-OI
Subject: Re: [ibm-acpi-devel] [PATCH 0/2] platform/x86: thinkpad_acpi:
 lockdep support
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
 platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

SGksCgpPbiA3LzQvMjMgMjM6MDMsIFRob21hcyBXZWnDn3NjaHVoIHdyb3RlOgo+IFZhbGlkYXRl
IGxvY2tpbmcgcmVxdWlyZW1lbnRzIGluIHRoaW5rcGFkX2FjcGkgdGhyb3VnaCBsb2NrZGVwLgo+
IAo+IFNpZ25lZC1vZmYtYnk6IFRob21hcyBXZWnDn3NjaHVoIDxsaW51eEB3ZWlzc3NjaHVoLm5l
dD4KClRoYW5rIHlvdSBmb3IgeW91ciBwYXRjaC1zZXJpZXMsIEkndmUgYXBwbGllZCB0aGUgc2Vy
aWVzIHRvIG15CnJldmlldy1oYW5zIGJyYW5jaDoKaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIv
c2NtL2xpbnV4L2tlcm5lbC9naXQvcGR4ODYvcGxhdGZvcm0tZHJpdmVycy14ODYuZ2l0L2xvZy8/
aD1yZXZpZXctaGFucwoKTm90ZSBpdCB3aWxsIHNob3cgdXAgaW4gbXkgcmV2aWV3LWhhbnMgYnJh
bmNoIG9uY2UgSSd2ZSBwdXNoZWQgbXkKbG9jYWwgYnJhbmNoIHRoZXJlLCB3aGljaCBtaWdodCB0
YWtlIGEgd2hpbGUuCgpPbmNlIEkndmUgcnVuIHNvbWUgdGVzdHMgb24gdGhpcyBicmFuY2ggdGhl
IHBhdGNoZXMgdGhlcmUgd2lsbCBiZQphZGRlZCB0byB0aGUgcGxhdGZvcm0tZHJpdmVycy14ODYv
Zm9yLW5leHQgYnJhbmNoIGFuZCBldmVudHVhbGx5CndpbGwgYmUgaW5jbHVkZWQgaW4gdGhlIHBk
eDg2IHB1bGwtcmVxdWVzdCB0byBMaW51cyBmb3IgdGhlIG5leHQKbWVyZ2Utd2luZG93LgoKUmVn
YXJkcywKCkhhbnMKCgoKPiAtLS0KPiBUaG9tYXMgV2Vpw59zY2h1aCAoMik6Cj4gICAgICAgcGxh
dGZvcm0veDg2OiB0aGlua3BhZF9hY3BpOiB0YWtlIG11dGV4IGZvciBob3RrZXlfbWFza197c2V0
LGdldH0KPiAgICAgICBwbGF0Zm9ybS94ODY6IHRoaW5rcGFkX2FjcGk6IHVzZSBsb2NrZGVwIGFu
bm90YXRpb25zCj4gCj4gIGRyaXZlcnMvcGxhdGZvcm0veDg2L3RoaW5rcGFkX2FjcGkuYyB8IDQ1
ICsrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwg
MjggaW5zZXJ0aW9ucygrKSwgMTcgZGVsZXRpb25zKC0pCj4gLS0tCj4gYmFzZS1jb21taXQ6IDAz
Mjc1NTg1Y2FiZDAyNDA5NDRmMTlmMzNkNzU4NGExYjA5OWEzYTgKPiBjaGFuZ2UtaWQ6IDIwMjMw
NzA0LXRoaW5rcGFkX2FjcGktbG9ja2RlcC03ZGVmOWQ3ZjkxYjUKPiAKPiBCZXN0IHJlZ2FyZHMs
CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmlibS1h
Y3BpLWRldmVsIG1haWxpbmcgbGlzdAppYm0tYWNwaS1kZXZlbEBsaXN0cy5zb3VyY2Vmb3JnZS5u
ZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vaWJtLWFjcGkt
ZGV2ZWwK
